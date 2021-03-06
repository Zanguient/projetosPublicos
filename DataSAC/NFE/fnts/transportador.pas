unit transportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, PageView, AdvGlowButton,
  AdvToolBar, wwdbedit, Wwdotdot, Wwdbcomb;

type
  Tfrmtransportador = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dstransportador2: TDataSource;
    Relatrios1: TMenuItem;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    QUERY1: TZQuery;
    PopupMenu1: TPopupMenu;
    NFeExportarCliente1: TMenuItem;
    NFeExportartodososclientes1: TMenuItem;
    LMDButton1: TAdvGlowMenuButton;
    QRTRANSPORTADOR: TZQuery;
    euf: TwwDBComboBox;
    wwDBComboBox1: TwwDBComboBox;
    bibge: TAdvGlowButton;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure NFeExportarCliente1Click(Sender: TObject);
    procedure NFeExportartodososclientes1Click(Sender: TObject);
    procedure bibgeClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtransportador: Tfrmtransportador;
  comando : string;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_transportador,
  lista_transportador2, unNFe2, xloc_cidade, principal2;

{$R *.dfm}


procedure Tfrmtransportador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmtransportador.FormShow(Sender: TObject);
begin

  frmmodulo.qrregiao.close;
  frmmodulo.qrregiao.sql.clear;
  frmmodulo.qrregiao.SQL.add('select * from c000005 order by regiao');
  frmmodulo.qrregiao.open;
  frmmodulo.qrregiao.IndexFieldNames := 'regiao';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 where upper(funcao) = ''VENDEDOR'' order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';


  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.SQL.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by codigo');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmtransportador.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmtransportador.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmtransportador.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrtransportador.insert;
  frmmodulo.qrtransportador.fieldbyname('codigo').asstring := frmprincipal2.codifica('000010');
  pficha.Enabled := true;
  dbedit26.setfocus;
  pgravar.Visible := true;

  PopupMenu := pop2;
end;

procedure Tfrmtransportador.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN


    frmmodulo.qrtransportador.Edit;
    pficha.Enabled := true;
    dbedit26.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmtransportador.bexcluirClick(Sender: TObject);
begin
  if frmprincipal2.autentica('Excluir transportador',4) then
  begin
    frmmodulo.qrtransportador.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmtransportador.blocalizarClick(Sender: TObject);
begin
  frmxloc_TRANSPORTADOR := tfrmxloc_TRANSPORTADOR.create(self);
  frmxloc_TRANSPORTADOR.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrTRANSPORTADOR.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmtransportador.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmtransportador.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

   if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome v�lido para este transportador!','Aten��o',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;




  if (frmmodulo.qrtransportador.State = dsinsert) or (frmmodulo.qrtransportador.State = dsedit) then
  begin
      frmmodulo.qrtransportador.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;





end;

procedure Tfrmtransportador.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrtransportador.State = dsinsert) or (frmmodulo.qrtransportador.State = dsedit) then
        if (frmmodulo.qrtransportador.State = dsinsert) then
        begin
          //frmprincipal2.transMestre.active := true;
          frmprincipal2.qrmestre.close;
          frmprincipal2.qrmestre.sql.clear;
          frmprincipal2.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000010''');
          frmprincipal2.qrmestre.execsql;
          //frmprincipal2.transMestre.commit;
          end;

      frmmodulo.qrtransportador.cancel;

  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

end;

procedure Tfrmtransportador.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmtransportador.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrtransportador.first;
end;

procedure Tfrmtransportador.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrtransportador.last;

end;

procedure Tfrmtransportador.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrtransportador.prior;

end;

procedure Tfrmtransportador.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrtransportador.next;

end;

procedure Tfrmtransportador.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmtransportador.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrtransportador.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmtransportador.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmtransportador.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmtransportador.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.qrtransportador.state = dsinsert) or (frmmodulo.qrtransportador.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
       bibge.OnClick (frmtransportador);
   end;
end;

procedure Tfrmtransportador.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmtransportador.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmtransportador.DBEdit15Exit(Sender: TObject);
begin


  tedit(sender).Color := clwindow;


      IF DBEDIT15.TEXT <> '' THEN
      BEGIN
        if (frmmodulo.qrtransportador.state = dsinsert) then
        begin
          query1.close;
          query1.sql.clear;
          query1.sql.Add('select * from c000010 where CPF = '''+dbedit15.text+'''');
          query1.open;
          if query1.recordcount > 0 then
          begin
            IF APPLICATION.MESSAGEBOX('Existe um transportador cadastrado com este CNPJ/CPF! Deseja cancelar esta ficha de cadastro e ir at� a ficha deste transportador?','Aten��o',mb_yesno+mb_iconquestion+MB_DEFBUTTON2) = idyes then
            begin
              frmmodulo.qrtransportador.Cancel;
              frmmodulo.qrtransportador.Locate('codigo',query1.fieldbyname('codigo').asstring,[loCaseInsensitive]);
              frmmodulo.qrtransportador.Edit;
            end
            ELSE
            BEGIN
               frmmodulo.qrtransportador.fieldbyname('CPF').asstring := '';
               DBEDIT15.SETFOCUS;
            END;
            exit;
          end;
        end;
      END;



  IF DBEDIT15.Text <> '' THEN
  BEGIN
  if (frmmodulo.qrtransportador.state = dsinsert) or (frmmodulo.qrtransportador.State = dsedit) then
  begin

  IF FRMMODULO.qrtransportador.FieldByName('TIPO').ASSTRING = '1' then
  begin
    frmprincipal2.CheckCPF1.Cpf := dbedit15.text;
    if frmprincipal2.CheckCPF1.Valido then
    begin
     // frmmodulo.qrtransportador.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);

     if pos('-',dbedit15.text) = 0 then
       frmmodulo.qrtransportador.fieldbyname('Cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
    end
    else
    begin
      Showmessage('CPF Inv�lido!');
      dbedit15.SetFocus;
    end;
  end
  else
  begin
    if frmprincipal2.TestaCnpj(dbedit15.Text) then
    begin
     // frmmodulo.qrtransportador.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);

     if pos('/',dbedit15.text) = 0 then
       frmmodulo.qrtransportador.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);
    end
    else
    begin
      Showmessage('CNPJ Inv�lido!');
      dbedit15.SetFocus;
    end;



  end;

  end;
  END;
end;

procedure Tfrmtransportador.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrtransportador.state = dsinsert) or (frmmodulo.qrtransportador.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.qrtransportador.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmtransportador.DBEdit26Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
 IF (FRMMODULO.QRTRANSPORTADOR.State = DSINSERT) OR (FRMMODULO.qrTRANSPORTADOR.State = DSEDIT) THEN
 BEGIN

  IF DBEDIT26.Text <> '1' THEN
  begin
    IF DBEDIT26.Text <> '2' THEN
    BEGIN
      SHOWMESSAGE('Favor digitar 1 ou 2!');
      dbedit26.setfocus;
    END
    ELSE
    BEGIN
      LRG.CAPTION := 'Insc.Est.:';
      LCPF.CAPTION := 'CNPJ:';
    END;
  end
  else
  begin
    LRG.CAPTION := 'RG:';
    LCPF.CAPTION := 'CPF';
  end;
 END;

end;

procedure Tfrmtransportador.edata_cadastroExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inv�lida');
    tdbdateedit(sender).SetFocus;
  END;
 end;


end;

procedure Tfrmtransportador.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmtransportador.DBEdit1Change(Sender: TObject);
begin
 IF FRMMODULO.qrtransportador.State <> DSINSERT THEN
 BEGIN
   IF FRMMODULO.qrtransportador.STATE <> DSEDIT THEN
   BEGIN

   TRY
   IF FRMMODULO.QRtransportador.FIELDBYNAME('TIPO').ASINTEGER = 2 THEN
   BEGIN
      LRG.CAPTION := 'INSC.EST.:';
      LCPF.CAPTION := 'CNPJ:';
  end
  else
  begin
    LRG.CAPTION := 'C.IDENTID.:';
    LCPF.CAPTION := 'CPF';
 END;
 EXCEPT
 END;
 END;
 END;
end;

procedure Tfrmtransportador.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmtransportador.BitBtn5Click(Sender: TObject);
begin
  FRMLISTA_TRANSPORTADOR2 := TFRMLISTA_TRANSPORTADOR2.CREATE(SELF);
  FRMLISTA_TRANSPORTADOR2.SHOWMODAL;
end;

procedure Tfrmtransportador.NFeExportarCliente1Click(Sender: TObject);
var doc : string;
begin

  if frmmodulo.qrtransportador.FieldByName('tipo').asstring = '2' then DOC := 'CNPJ' else DOC := 'CPF';

    if Exp_Abre_TRANSPORTADOR('TRANSPORTADOR.txt') then
    begin
      Exp_Inclui_TRANSPORTADOR(DOC,FRMMODULO.QRTRANSPORTADOR.FIELDBYNAME('CPF').ASSTRING,
                         FRMMODULO.QRTRANSPORTADOR.FIELDBYNAME('NOME').ASSTRING,
                         FRMMODULO.QRTRANSPORTADOR.FIELDBYNAME('RG').ASSTRING,
                         FRMMODULO.QRTRANSPORTADOR.FIELDBYNAME('ENDERECO').ASSTRING+' '+
                         FRMMODULO.QRTRANSPORTADOR.FIELDBYNAME('BAIRRO').ASSTRING,
                         FRMMODULO.QRTRANSPORTADOR.FIELDBYNAME('CIDADE').ASSTRING,
                         FRMMODULO.QRTRANSPORTADOR.FIELDBYNAME('UF').ASSTRING);



      if Exp_Fecha_TRANSPORTADOR then
      begin
       showmessage('Arquivo de TRANSPORTADOR criado com sucesso!');
      end
      else
      begin
       showmessage('Houve falha na cria��o do arquivo de TRANSPORTADOR!');
      end;


    END;




end;

procedure Tfrmtransportador.NFeExportartodososclientes1Click(
  Sender: TObject);
var doc : string;
begin



  if Exp_Abre_TRANSPORTADOR('TRANSPORTADOR.txt') then
  begin
     qrTRANSPORTADOR.CLOSE;
     QRTRANSPORTADOR.SQL.CLEAR;
     QRTRANSPORTADOR.SQL.Add('SELECT * FROM C000010');
     QRTRANSPORTADOR.SQL.ADD('WHERE CPF IS NOT NULL AND CPF <> ''''');
     QRTRANSPORTADOR.SQL.ADD('ORDER BY CODIGO');
     QRTRANSPORTADOR.OPEN;
     QRTRANSPORTADOR.FIRST;
     WHILE NOT QRTRANSPORTADOR.EOF DO
     BEGIN
       if QRTRANSPORTADOR.FIELDBYNAME('TIPO').ASINTEGER = 2 then DOC := 'CNPJ' else DOC := 'CPF';

      Exp_Inclui_TRANSPORTADOR(DOC,QRTRANSPORTADOR.FIELDBYNAME('CPF').ASSTRING,
                         QRTRANSPORTADOR.FIELDBYNAME('NOME').ASSTRING,
                         QRTRANSPORTADOR.FIELDBYNAME('RG').ASSTRING,
                         QRTRANSPORTADOR.FIELDBYNAME('ENDERECO').ASSTRING+' '+
                         QRTRANSPORTADOR.FIELDBYNAME('BAIRRO').ASSTRING,
                         QRTRANSPORTADOR.FIELDBYNAME('CIDADE').ASSTRING,
                         QRTRANSPORTADOR.FIELDBYNAME('UF').ASSTRING);
       QRTRANSPORTADOR.NEXT;
     END;

    if Exp_Fecha_TRANSPORTADOR then
    begin
     showmessage('Arquivo de TRANSPORTADOR criado com sucesso!');
    end
    else
    begin
     showmessage('Houve falha na cria��o do arquivo de TRANSPORTADOR!');
    end;
  end;
end;

procedure Tfrmtransportador.bibgeClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;
  
  frmmodulo.QRTRANSPORTADOR.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.QRTRANSPORTADOR.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.QRTRANSPORTADOR.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.QRTRANSPORTADOR.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit6.SetFocus;
end;

procedure Tfrmtransportador.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key <> #8 then
  IF KEY = #13 THEN
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmtransportador.DBEdit10Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT10.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrtransportador.state = dsinsert) or (frmmodulo.qrtransportador.State = dsedit) then
    begin
     if pos('-',dbedit10.text) = 0 then
       frmmodulo.qrtransportador.fieldbyname('TELEFONE').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit10.text);
    END;
  END;
end;

procedure Tfrmtransportador.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT11.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrtransportador.state = dsinsert) or (frmmodulo.qrtransportador.State = dsedit) then
    begin
     if pos('-',dbedit11.text) = 0 then
       frmmodulo.qrtransportador.fieldbyname('CELULAR').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit11.text);
    END;
  END;
end;

procedure Tfrmtransportador.DBEdit3Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
frmmodulo.qrtransportador.fieldbyname('numero').asstring := frmprincipal2.zerarcodigo(dbedit3.text,5);
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
