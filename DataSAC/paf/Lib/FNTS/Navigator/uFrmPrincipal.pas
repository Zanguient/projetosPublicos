unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls,
  ComCtrls, StdCtrls, Menus, ActnList, ImgList, ToolWin, DB, DBClient, MidasLib, Richedit, StrUtils,
  RzGroupBar, RzPanel, AdvGlowButton, AdvShapeButton, AdvOfficeStatusBar,
  AdvMenus, AdvMenuStylers, AdvOfficeStatusBarStylers, AdvPanel;

type
  TRecDados = record
    Campo: String;
    Inicio: Integer;
    Fim: Integer;
    Tamanho: Integer;
  end;

  TfrmPrincipal = class(TForm)
    rchArquivo: TRichEdit;
    stbInfo: TStatusBar;
    ActionList1: TActionList;
    ImageList1: TImageList;
    actAbrir: TAction;
    MainMenu1: TMainMenu;
    cdsLayout: TClientDataSet;
    cdsLayoutCampo: TStringField;
    cdsLayoutInicio: TIntegerField;
    ToolBar1: TToolBar;
    Manuteno1: TMenuItem;
    AbrirArquivo1: TMenuItem;
    N1: TMenuItem;
    actFechar: TAction;
    Fechar1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    actCadastro: TAction;
    CadastrarLayout1: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    cdsLayoutFim: TIntegerField;
    cdsLayoutTamanho: TIntegerField;
    cdsLayoutDenominacao: TStringField;
    actLocalizar: TAction;
    ToolButton5: TToolButton;
    Localizar1: TMenuItem;
    FindDialog1: TFindDialog;
    PrintDialog1: TPrintDialog;
    actImprimir: TAction;
    ImprimirLayout1: TMenuItem;
    ptopo: TAdvOfficeStatusBar;
    barquivo: TAdvGlowButton;
    bestoque: TAdvGlowButton;
    bmovimento: TAdvGlowButton;
    bfinanceiro: TAdvGlowButton;
    bsair: TAdvGlowButton;
    AdvMainMenu1: TAdvMainMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Movimentao1: TMenuItem;
    AbrirArquivos1: TMenuItem;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    CadastrarLayout2: TMenuItem;
    ImprimirLayout2: TMenuItem;
    Localizar2: TMenuItem;
    N2: TMenuItem;
    Fechar2: TMenuItem;
    pnormal: TAdvPanel;
    AdvPanel4: TAdvPanel;
    AdvShapeButton4: TAdvShapeButton;
    AdvPanel1: TAdvPanel;
    AdvShapeButton2: TAdvShapeButton;
    procedure FormCreate(Sender: TObject);
    procedure rchArquivoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rchArquivoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rchArquivoSelectionChange(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actCadastroExecute(Sender: TObject);
    procedure cdsLayoutAfterPost(DataSet: TDataSet);
    procedure actLocalizarExecute(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure actLocalizarUpdate(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
  private
    fDados: TRecDados;
    fKeyRight: Boolean;
    function RetDadosCampo(pDenominacao: String; pColuna: Integer): TRecDados;
    procedure SetBgColorFonte(pRE: TRichEdit; pColor: TColor);
    procedure Posiciona(pRE: TRichEdit; pLinha, pColuna: Integer);
    procedure SalvaPosicao(pRE: TRichEdit; var rLin, rCol: Integer);
    procedure RemoveFormatacao(pRE: TRichEdit; pLin, pCol: Integer);
    procedure MarcaTexto(pRE: TRichEdit; pTam: Integer);
    procedure ExibeInfo(pCampo: String; pIni, pFim, pTam, pLin, pCol: Integer);
    function RetTipoRegistro(pRE: TRichEdit; pLin, pCol, pQtdCar: Integer): String;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFrmCadastroLayout;

{$R *.dfm}

procedure TfrmPrincipal.FindDialog1Find(Sender: TObject);
var
  FoundPos,
  StartSearch,
  EndSearch : LongInt;
  Options : TSearchTypes;
begin
  StartSearch:=rchArquivo.SelStart+rchArquivo.SelLength;
  EndSearch:=Length(rchArquivo.Text);
  // determina como ser� a busca - compara��o
  Options:=[];
  if frMatchCase in TFindDialog(Sender).Options then
    Options:=[stMatchCase];
  if frWholeWord in TFindDialog(Sender).Options then
    Options:=Options+[stWholeWord];
  // retorna a posi��o do texto encontrado ou -1 (n�o achou)
  FoundPos:=rchArquivo.FindText(TFindDialog(Sender).FindText, StartSearch, EndSearch, Options);
  if FoundPos <> -1 then
    rchArquivo.SelStart:=FoundPos+1;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  fKeyRight:=False;
  cdsLayout.CreateDataSet;
  if FileExists('Layout.xml') then
    cdsLayout.LoadFromFile('Layout.xml')
  else
    cdsLayout.SaveToFile('Layout.xml');
  if not cdsLayout.Active then
    cdsLayout.Open;
  cdsLayout.LogChanges:=False;
  cdsLayout.MergeChangeLog;
end;

procedure TfrmPrincipal.MarcaTexto(pRE: TRichEdit; pTam: Integer);
begin
  pRE.SelLength:=pTam;
  SetBgColorFonte(pRE, $00804000);
  pRE.SelAttributes.Color:=clWhite;
end;

procedure TfrmPrincipal.rchArquivoSelectionChange(Sender: TObject);
var vLin, vCol: Integer;
    vTipReg: String;
begin
  if rchArquivo.Text<>EmptyStr then
  begin
    // Congela a tela para evitar que de algumas piscadas
    LockWindowUpdate(rchArquivo.Handle);
    // Desligo o evento para evitar stack overflow
    rchArquivo.OnSelectionChange:=nil;
    try
      SalvaPosicao(rchArquivo, vLin, vCol);
      if fKeyRight and (fDados.Tamanho<>0) then
      begin
        Posiciona(rchArquivo, vLin, fDados.Inicio + fDados.Tamanho);
        SalvaPosicao(rchArquivo, vLin, vCol);
      end;
      RemoveFormatacao(rchArquivo, vLin, vCol);
      // Captura tipo de registro com 2 caracter
      vTipReg:=RetTipoRegistro(rchArquivo, vLin, vCol, 2);
      // Dados do layout
      fDados:=RetDadosCampo(vTipReg, vCol);
      if fDados.Campo=EmptyStr then
        // Captura tipo de registro com 3 caracter
        vTipReg:=RetTipoRegistro(rchArquivo, vLin, vCol, 3);
      fDados:=RetDadosCampo(vTipReg, vCol);
      if fDados.Campo<>EmptyStr then
      begin
        // Posiciona o cursor no inicio do campo
        Posiciona(rchArquivo, vLin, fDados.Inicio - 1);
        MarcaTexto(rchArquivo, fDados.Tamanho);
      end;
      SalvaPosicao(rchArquivo, vLin, vCol);
      ExibeInfo(fDados.Campo, fDados.Inicio, fDados.Fim, fDados.Tamanho, vLin, vCol);
    finally
      fKeyRight:=False;
      // Re-ligando o evento para ser executado futuramente
      rchArquivo.OnSelectionChange:=rchArquivoSelectionChange;
      // Descongela a tela
      LockWindowUpdate(0);
    end;
  end;
end;

procedure TfrmPrincipal.RemoveFormatacao(pRE: TRichEdit; pLin, pCol: Integer);
begin
  pRE.SelectAll;
  pRE.SelAttributes.Color:=clBlack;
  SetBgColorFonte(pRE, clWhite);
  Posiciona(pRE, pLin, pCol);
end;

function TfrmPrincipal.RetDadosCampo(pDenominacao: String; pColuna: Integer): TRecDados;
begin
  try
    cdsLayout.Filter := 'Denominacao=' + QuotedStr(pDenominacao) + ' AND (Inicio <=' +
      IntToStr(pColuna) + ' AND Fim>=' + IntToStr(pColuna) + ')';
    cdsLayout.Filtered:=True;
    if not cdsLayout.IsEmpty then
    begin
      Result.Campo:=cdsLayoutCampo.AsString;
      Result.Tamanho:=cdsLayoutTamanho.AsInteger;
      Result.Inicio:=cdsLayoutInicio.AsInteger;
      Result.Fim:=cdsLayoutFim.AsInteger;
    end
    else
    begin
      Result.Campo:=EmptyStr;
      Result.Tamanho:=0;
      Result.Inicio:=0;
      Result.Fim:=0;
    end;
  finally
    cdsLayout.Filter:=EmptyStr;
    cdsLayout.Filtered:=False;
  end;
end;

function TfrmPrincipal.RetTipoRegistro(pRE: TRichEdit; pLin, pCol, pQtdCar: Integer): String;
begin
  Posiciona(pRE, pLin, 0);
  pRE.SelLength:=pQtdCar;
  Result:=pRE.SelText;
  Posiciona(pRE, pLin, pCol);
end;

procedure TfrmPrincipal.SalvaPosicao(pRE: TRichEdit; var rLin, rCol: Integer);
begin
  rLin:=SendMessage(pRE.Handle, EM_EXLINEFROMCHAR, 0, pRE.SelStart);
  rCol:=(pRE.SelStart - SendMessage(pRE.Handle, EM_LINEINDEX, rLin, 0));
end;

procedure TfrmPrincipal.SetBgColorFonte(pRE: TRichEdit; pColor: TColor);
var vFormat: CHARFORMAT2;
begin
  FillChar(vFormat, Sizeof(vFormat), 0);
  vFormat.cbSize:=Sizeof(vFormat);
  vFormat.dwMask:=CFM_BACKCOLOR;
  vFormat.crBackColor:=pColor;
  //vFormat.crTextColor:=clRed;  
  pRE.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@vFormat));
end;

procedure TfrmPrincipal.rchArquivoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN] then
    rchArquivo.OnSelectionChange:=nil;
end;

procedure TfrmPrincipal.rchArquivoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN] then
  begin
    rchArquivo.OnSelectionChange:=rchArquivoSelectionChange;
    fKeyRight:=Key=VK_RIGHT;
    rchArquivoSelectionChange(nil);
  end;
end;

procedure TfrmPrincipal.actAbrirExecute(Sender: TObject);
var vOpenDialog: TOpenDialog;
begin
  vOpenDialog:=TOpenDialog.Create(nil);
  try
    vOpenDialog.InitialDir:=GetCurrentDir;
    vOpenDialog.Options:=[ofFileMustExist];
    if vOpenDialog.Execute then
    begin
      rchArquivo.Lines.LoadFromFile(vOpenDialog.FileName);
      Self.Caption:='Siscom +7 Navigator [' + vOpenDialog.FileName + ']';
      rchArquivo.SelStart:=1;
    end;
  finally
    vOpenDialog.Free;
  end;
end;

procedure TfrmPrincipal.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.actImprimirExecute(Sender: TObject);

  function Espaco(pStr: String; pNum: Integer): String;
  begin
    while Length(pStr)<pNum do
      pStr:=pStr+' ';
    Result:=pStr;
  end;

begin
  rchArquivo.OnSelectionChange:=nil;
  try
    rchArquivo.Clear;
    rchArquivo.Lines.Add('|Tipo|Denominacao                                          |Tam|Ini|Fim|');
    cdsLayout.First;
    while not cdsLayout.Eof do
    begin
     rchArquivo.Lines.Add('|'+Espaco(cdsLayoutDenominacao.AsString, 4)+'|'+
                              Espaco(cdsLayoutCampo.AsString, 53)+'|'+
                              Espaco(cdsLayoutTamanho.AsString, 3)+'|'+
                              Espaco(cdsLayoutInicio.AsString, 3)+'|'+
                              Espaco(cdsLayoutFim.AsString, 3)+'|');
      cdsLayout.Next;
    end;
    Application.ProcessMessages;
    if PrintDialog1.Execute then
      rchArquivo.Print('Layout');
  finally
    rchArquivo.OnSelectionChange:=rchArquivoSelectionChange;
  end;
end;

procedure TfrmPrincipal.actLocalizarExecute(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TfrmPrincipal.actLocalizarUpdate(Sender: TObject);
begin
  actLocalizar.Enabled:=rchArquivo.Text<>EmptyStr;
end;

procedure TfrmPrincipal.actCadastroExecute(Sender: TObject);
var vTela: TfrmCadastroLayout;
begin
  vTela:=TfrmCadastroLayout.Create(nil);
  try
    vTela.Dataset:=cdsLayout;
    vTela.ShowModal;
  finally
    FreeAndNil(vTela);
  end;
end;

procedure TfrmPrincipal.cdsLayoutAfterPost(DataSet: TDataSet);
var vPath: String;
begin
  vPath:=ExtractFilePath(Application.ExeName);
  if RightStr(vPath, 1)<>'\' then
    vPath:=vPath+'\';
  cdsLayout.SaveToFile(vPath+'Layout.xml');
end;

procedure TfrmPrincipal.ExibeInfo(pCampo: String; pIni, pFim, pTam, pLin, pCol: Integer);
begin
  stbInfo.Panels[0].Text := Format('Linha: %d Coluna: %d', [pLin + 1, pCol + 1]);
  stbInfo.Panels[1].Text:='Posi��o: ' + IntToStr(pIni) + ' a ' + IntToStr(pFim);
  stbInfo.Panels[2].Text:='Tamanho: ' + IntToStr(pTam);
  stbInfo.Panels[3].Text:='Descri��o: ' + pCampo;
end;

procedure TfrmPrincipal.Posiciona(pRE: TRichEdit; pLinha, pColuna: Integer);
begin
  pRE.SelStart:=0;
  pRE.SelLength:=0;
  pRE.SelStart:=pColuna+pRE.Perform(EM_LINEINDEX, pLinha, 0);
  pRE.SelLength:=0;
  pRE.SetFocus;
end;

end.
