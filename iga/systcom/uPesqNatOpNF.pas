unit uPesqNatOpNF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqnatopNF = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    dbgNatOpNF: TDBGrid;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    edicodprod: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    imgfichadetalhe: TImageList;
    spdIncluir171: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    spdExcluir173: TSpeedButton;
    spdrelatorios176: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgNatOpNFKeyPress(Sender: TObject; var Key: Char);
    procedure dbgNatOpNFEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure edidescChange(Sender: TObject);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure dbgNatOpNFExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure dbgNatOpNFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdrelatorios176Click(Sender: TObject);
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
    sTitRel:string;
  end;

var
  frmPesqnatopNF: TfrmPesqnatopNF;

implementation

uses uGeral, uPrincipal, uDados , uMRnatopnf;

{$R *.DFM}

procedure TfrmPesqnatopNF.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descri��o');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqnatopNF.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqnatopNF.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqnatopNF.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqnatopNF.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqnatopNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqNatOpNF:=nil;
  form_ativo := '';

end;

procedure TfrmPesqnatopNF.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqnatopNF.dbgNatOpNFKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_NatOPNF.State in [dsinsert, dsedit] then
      frmdados.Cds_NatOPNF.Post;
   //endi
//endi
end;

procedure TfrmPesqnatopNF.dbgNatOpNFEnter(Sender: TObject);
begin
tabela := 'NatOpNF';
end;

procedure TfrmPesqnatopNF.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqnatopNF.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqnatopNF.spdfiltrarClick(Sender: TObject);
var
  // vari�veis comuns a todos os filtros
  sCompo,sTitRel : String;
  // vari�veis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_NatOPNF.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Descri��o' then
     sClassificar := 'Descricao';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
  //endi

  // inicializando vari�veis comuns
  sCompo := '';
  sTitRel := '';

  // inicializando vari�veis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;


  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;


  sDesc := edidesc.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / at�: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / at�: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoI
  if ( sCodigoI <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / C�digo de.: ' + sCodigoI;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / C�digo de.: ' + sCodigoI;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sCodigoF <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / at�: ' + sCodigoF;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / at�: ' + sCodigoF;
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de codigoF
  if sClassificar <> 'Codigo' then
     begin
        if ( sDesc <> '' ) then
           begin
             if (sCompo = '') then
                begin
                  sCompo := '( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
                end
             else
                begin
                  sCompo := sCompo + 'and ( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
                end;
             //endif
           end;
        //endif
     end;
  //endi
  // executando o filtro

  try
    with frmdados.Dbx_NatOPNF do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from NatOPNF where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from NatOPNF order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from NatOPNF where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   active := true;
                 end;
              //endi
            end;
         //endi
       end;
    //endi
  except
    showmessage('N�o consegui conectar a tabela, opera��o abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_NatOPNF.Active := true;
    end;
  //end;
end;

procedure TfrmPesqnatopNF.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqnatopNF.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_NatOPNF.Locate(frmpesqNatOpNF.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqnatopNF.cbxclassificarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endi
  key := #0;
end;

procedure TfrmPesqnatopNF.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqnatopNF.edidescKeyPress(Sender: TObject; var Key: Char);
begin
edicodigoi.Text := '';
edicodigof.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi
end;

procedure TfrmPesqnatopNF.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
//if key = #13 then
//   begin
//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
//   end;
//endi


if key = #13 then
   begin

     if edicodigoi.Text <> '' then
        if not frmdados.cds_NatOPNF.Locate('codigo',edicodigoi.text,[])then
           showmessage('C�digo n�o Encontrado...');
        //endi
     //endi



//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
   end;
//endi




If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqnatopNF.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
//if key = #13 then
//   begin
//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
//   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqnatopNF.dbgNatOpNFExit(Sender: TObject);
begin
  if frmdados.Cds_NatOPNF.State in [dsinsert, dsedit] then
     frmdados.Cds_NatOPNF.Post;
  //endi
end;

procedure TfrmPesqnatopNF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqnatopNF.spdIncluir171Click(Sender: TObject);
begin
tabela := 'NatOpNF';
dbgNatOPNF.SetFocus;
frmdados.Cds_NatOPNF.Append;
end;

procedure TfrmPesqnatopNF.spdantClick(Sender: TObject);
begin
  frmdados.Cds_NatOPNF.Prior;

end;

procedure TfrmPesqnatopNF.spdproxClick(Sender: TObject);
begin
frmdados.Cds_NatOPNF.Next;
end;

procedure TfrmPesqnatopNF.spdExcluir173Click(Sender: TObject);
begin
tabela := 'NatOpNF';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Aten��o',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.Cds_NatOpNF.Delete;

   end;
//endi

end;

procedure TfrmPesqnatopNF.dbgNatOpNFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqnatopNF.spdrelatorios176Click(Sender: TObject);
begin
    frmMRnatopnf := tfrmMRnatopnf.create(self);
    frmMRnatopnf.Showmodal;
    frmMRnatopnf.Free;
end;

end.
