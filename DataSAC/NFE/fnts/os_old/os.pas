unit os;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rxtooledit, RXDBCtrl, StdCtrls, Mask, DBCtrls, ExtCtrls,
  TFlatPanelUnit, Buttons, Collection, wwdblook, ComCtrls, PageView,
  wwdbedit, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, rxcurredit, DB,
  Menus, ZAbstractRODataset, ZDataset, ZAbstractDataset, Wwdbdlg, RpDefine,
  RpCon, RpConDS, AdvShapeButton, AdvGlowButton, RzEdit, RzDBEdit, RzDBBnEd,
  RxMemDS,maskutils;

type
  Tfrmos = class(TForm)
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet5: TPageSheet;
    GroupBox3: TGroupBox;
    DBDateEdit2: TDBDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    PageSheet7: TPageSheet;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label35: TLabel;
    dsos: TDataSource;
    enometecnico: TDBEdit;
    PopupMenu1: TPopupMenu;
    Laudo1: TMenuItem;
    Servios1: TMenuItem;
    Deslocamento1: TMenuItem;
    erceiros1: TMenuItem;
    Oramento1: TMenuItem;
    Cancelar1: TMenuItem;
    Cancelar2: TMenuItem;
    N1: TMenuItem;
    Panel1: TPanel;
    gconclusao: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    DBEdit11: TDBEdit;
    enomesetor: TDBEdit;
    Label41: TLabel;
    dsos_servico: TDataSource;
    gridservico: TwwDBGrid;
    qros_servico: TZQuery;
    qros_servicoCODSERVICO: TStringField;
    qros_servicoCOMPLEMENTO: TStringField;
    qros_servicoVALOR: TFloatField;
    qros_servicoCODTECNICO: TStringField;
    qros_servicoDATA: TDateTimeField;
    qros_servicoSERVICO: TStringField;
    qros_servicoTECNICO: TStringField;
    COMBOSERVICO: TwwDBLookupCombo;
    ESERVICO: TwwDBEdit;
    qros_servicoCODOS: TStringField;
    qros_servicoCODCLIENTE: TStringField;
    N2: TMenuItem;
    ExcluirServio1: TMenuItem;
    combotecnico: TwwDBLookupComboDlg;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    qrproduto_serial: TZQuery;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    IncluirProduto1: TMenuItem;
    eveiculo: TDBEdit;
    blocveiculo: TBitBtn;
    enomeveiculo: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    qrOS_contasreceber: TZQuery;
    qrOS_contasreceberPRESTACAO: TIntegerField;
    qrOS_contasreceberVENCIMENTO: TDateTimeField;
    qrOS_contasreceberTIPO: TStringField;
    qrOS_contasreceberDOCUMENTO: TStringField;
    qrOS_contasreceberVALOR: TFloatField;
    rvos_servico: TRvDataSetConnection;
    rv_osproduto: TRvDataSetConnection;
    rvos_contasreceber: TRvDataSetConnection;
    Label43: TLabel;
    DBEdit18: TDBEdit;
    EDETECTADO: TDBMemo;
    dsservicos_periodicos: TDataSource;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel2: TPanel;
    Label42: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FlatPanel2: TFlatPanel;
    Label1: TLabel;
    enomeatendente: TDBEdit;
    COMBOTIPO: TwwDBComboBox;
    AdvShapeButton1: TAdvShapeButton;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label46: TLabel;
    Bevel7: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    eatendent: TRzDBButtonEdit;
    Label5: TLabel;
    Label6: TLabel;
    enomecliente: TDBEdit;
    DBEdit10: TDBEdit;
    ecliente: TRzDBButtonEdit;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    combomarca: TwwDBLookupCombo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    bperiodico: TComboBox;
    Bevel3: TBevel;
    Bevel8: TBevel;
    Label4: TLabel;
    AdvShapeButton2: TAdvShapeButton;
    Label47: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Bevel9: TBevel;
    Label48: TLabel;
    EDEFEITO: TDBMemo;
    EOBS: TDBMemo;
    Label49: TLabel;
    Bevel10: TBevel;
    combosituacao: TwwDBComboBox;
    Label50: TLabel;
    Bevel4: TBevel;
    EINTERVENCAO: TDBMemo;
    Label51: TLabel;
    bexcluir_servico: TAdvGlowButton;
    Bevel11: TBevel;
    eobs_terceiro: TDBMemo;
    Label33: TLabel;
    Label34: TLabel;
    eterceiro: TDBEdit;
    blocterceiro: TBitBtn;
    enometerceiro: TDBEdit;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    etecnico: TRzDBButtonEdit;
    esetor: TRzDBButtonEdit;
    query: TZQuery;
    bdias: TRxCalcEdit;
    Label30: TLabel;
    qrOS_contasreceberTERMINAL: TStringField;
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EVENDEDOREnter(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure eatendentExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eatendentEnter(Sender: TObject);
    procedure rinternaKeyPress(Sender: TObject; var Key: Char);
    procedure rexternaKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteExit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure ravulsoKeyPress(Sender: TObject; var Key: Char);
    procedure combomarcaEnter(Sender: TObject);
    procedure combomarcaExit(Sender: TObject);
    procedure edefeitoEnter(Sender: TObject);
    procedure edefeitoExit(Sender: TObject);
    procedure eobsEnter(Sender: TObject);
    procedure eobsExit(Sender: TObject);
    procedure DBDateEdit2Enter(Sender: TObject);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure etecnicoExit(Sender: TObject);
    procedure edetectadoEnter(Sender: TObject);
    procedure edetectadoExit(Sender: TObject);
    procedure combosituacaoExit(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure eintervencaoEnter(Sender: TObject);
    procedure eintervencaoExit(Sender: TObject);
    procedure BCANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Laudo1Click(Sender: TObject);
    procedure combosituacaoEnter(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure esetorExit(Sender: TObject);
    procedure combosituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure combosituacaoChange(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoEnter(Sender: TObject);
    procedure ESERVICOButtonClick(Sender: TObject);
    procedure qros_servicoBeforePost(DataSet: TDataSet);
    procedure bexcluir_servicoClick(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure qros_servicoBeforeEdit(DataSet: TDataSet);
    procedure qros_servicoBeforeInsert(DataSet: TDataSet);
    procedure qros_servicoAfterPost(DataSet: TDataSet);
    procedure ExcluirServio1Click(Sender: TObject);
    procedure COMBOSERVICOExit(Sender: TObject);
    procedure ESERVICOExit(Sender: TObject);
    procedure combotecnicoExit(Sender: TObject);
    procedure qros_servicoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Enter(Sender: TObject);
    procedure eveiculoEnter(Sender: TObject);
    procedure eveiculoExit(Sender: TObject);
    procedure blocveiculoClick(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure Deslocamento1Click(Sender: TObject);
    procedure esetorEnter(Sender: TObject);
    procedure eterceiroExit(Sender: TObject);
    procedure blocterceiroClick(Sender: TObject);
    procedure eobs_terceiroEnter(Sender: TObject);
    procedure eobs_terceiroExit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure erceiros1Click(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure DBEdit23Change(Sender: TObject);
    procedure qrOS_contasreceberAfterPost(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure DBDateEdit3Enter(Sender: TObject);
    procedure edefeitoKeyPress(Sender: TObject; var Key: Char);
    procedure eobsKeyPress(Sender: TObject; var Key: Char);
    procedure edetectadoKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOTIPOEnter(Sender: TObject);
    procedure COMBOTIPOExit(Sender: TObject);
    procedure COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure gridservicoExit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure eatendentButtonClick(Sender: TObject);
    procedure eatendentKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure etecnicoKeyPress(Sender: TObject; var Key: Char);
    procedure etecnicoButtonClick(Sender: TObject);
    procedure esetorButtonClick(Sender: TObject);
    procedure bperiodicoKeyPress(Sender: TObject; var Key: Char);
    procedure qrOS_contasreceberBeforePost(DataSet: TDataSet);
    procedure DBEdit18Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos: Tfrmos;
  valor_anterior : real;
  selecionado : boolean;
  FINALIZADO : BOOLEAN;
  lancando_contasreceber : boolean;
  valor_prestacao : real;
  continuar : boolean;
    cupom_fiscal : boolean;
      item_excluido, item : integer;
      excluidos : ARRAY [1..100] OF STRING;
      numero_terminal : string;


implementation

uses modulo, loc_funci, principal, loc_cliente, loc_setor, 
  loc_veiculo, loc_fornecedor, os_impressao, os_fechamento,
  os_contasreceber,  xloc_cliente, os_servicosperiodicos;

{$R *.dfm}

procedure Tfrmos.DBDateEdit1Exit(Sender: TObject);
begin
    tedit(SENDER).color := clwindow;
end;

procedure Tfrmos.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmos.EVENDEDOREnter(Sender: TObject);
begin
  tedit(SENDER).color := $00A0FAF8;
end;

procedure Tfrmos.EVENDEDORExit(Sender: TObject);
begin
  tedit(SENDER).color := clwindow;
end;

procedure Tfrmos.eatendentExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codatendente').asstring := frmprincipal.zerarcodigo(eatendent.text,6);

    if eatendent.text <> '000000' then
    begin
      with frmmodulo do
      begin
        qrfunci.close;
        qrfunci.sql.clear;
        qrfunci.sql.add('select * from c000008 where situacao = 1');
        qrfunci.open;
      end;
      if not frmprincipal.Locregistro(frmmodulo.qrfunci,eatendent.text,'codigo') then
      BEGIN
        eatendentButtonClick(frmos);
      END
      else
      begin
        COMBOTIPO.SETFOCUS;
      end;
    end
    else
      eatendentButtonClick(frmos);
  end;
end;

procedure Tfrmos.FormShow(Sender: TObject);
begin
   FINALIZADO := FALSE;


    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('N�o foi configurado o n�mero do terminal! Esta venda ser� finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;


    qrOS_contasreceber.close;
    qrOS_contasreceber.sql.clear;
    qrOS_contasreceber.SQL.Add('delete from cl00002 where terminal = '''+numero_terminal+'''');
    qrOS_contasreceber.ExecSQL;


   frmmodulo.qrveiculo.close;
   frmmodulo.qrveiculo.sql.clear;
   frmmodulo.qrveiculo.sql.add('select * from c000054 order by nome');
   frmmodulo.qrveiculo.open;
   frmmodulo.qrveiculo.IndexFieldNames := 'nome';

   frmmodulo.qrcliente.close;
   frmmodulo.qrcliente.sql.clear;
   frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
   frmmodulo.qrcliente.open;
   frmmodulo.qrcliente.indexfieldnames := 'nome';

   frmmodulo.qrmarca.Close;
   frmmodulo.qrmarca.sql.clear;
   frmmodulo.qrmarca.sql.add('select * from c000019 order by NOME');
   frmmodulo.qrmarca.open;
   frmmodulo.qrmarca.indexfieldnames := 'nome';


   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

   frmmodulo.qrsetor.close;
   frmmodulo.qrsetor.sql.clear;
   frmmodulo.qrsetor.SQL.add('select * from c000052 order by setor');
   frmmodulo.qrsetor.open;
   frmmodulo.qrsetor.indexfieldnames := 'setor';

   frmmodulo.qrservico.Close;
   frmmodulo.qrservico.sql.clear;
   frmmodulo.qrservico.SQL.Add('select * from c000011 order by servico');
   frmmodulo.qrservico.open;
   frmmodulo.qrservico.indexfieldnames := 'servico';


   item_excluido := 0;









   qros_servico.close;
   qros_servico.sql.clear;
   qros_servico.sql.add('select * from c000053 where codos = '''+frmmodulo.qros.fieldbyname('codigo').asstring+'''');
   qros_servico.open;

  frmmodulo.qrservicos_periodicos.close;
  frmmodulo.qrservicos_periodicos.sql.clear;
  frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('marca  = '''+frmmodulo.qros.fieldbyname('marca').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('modelo = '''+frmmodulo.qros.fieldbyname('modelo').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('serie  = '''+frmmodulo.qros.fieldbyname('serial').asstring+'''');
  frmmodulo.qrservicos_periodicos.open;
  if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
  begin
     bperiodico.ItemIndex := 0;
     bdias.Value := frmmodulo.qrservicos_periodicosPERIODO.AsInteger;
  end;



  pageview1.ActivePageIndex := 0;

  if frmmodulo.qros.State = dsinsert then eatendent.setfocus else dbdateedit2.setfocus;

end;

procedure Tfrmos.eatendentEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

end;

procedure Tfrmos.rinternaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecliente.setfocus;
end;

procedure Tfrmos.rexternaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ecliente.setfocus;
end;

procedure Tfrmos.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
    if ecliente.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
        eclientebuttonclick(Frmos)
      else
      begin
         IF DBEDIT10.TEXT = '' THEN FRMMODULO.QROS.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
         dbedit10.setfocus;
      end;
    end
    else
      eclientebuttonclick(Frmos);
  end;
end;

procedure Tfrmos.DBEdit10Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmos.DBEdit10Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then combomarca.setfocus;
end;

procedure Tfrmos.ravulsoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then edefeito.setfocus; 
end;

procedure Tfrmos.combomarcaEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmos.combomarcaExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmos.edefeitoEnter(Sender: TObject);
begin
  edefeito.Color := $00A0FAF8;
end;

procedure Tfrmos.edefeitoExit(Sender: TObject);
Begin
  edefeito.Color := clwindow;
end;

procedure Tfrmos.eobsEnter(Sender: TObject);
begin
  eobs.Color := $00A0FAF8;
end;

procedure Tfrmos.eobsExit(Sender: TObject);
begin
  eObS.Color := clwindow;
end;

procedure Tfrmos.DBDateEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmos.DBDateEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmos.etecnicoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_TECNICO = 1 order by nome');
     frmmodulo.qrfunci.open;
     
    frmmodulo.qros.fieldbyname('DETECTADO_CODTECNICO').asstring := frmprincipal.zerarcodigo(etecnico.text,6);
    if etecnico.text <> '000000' then
    begin

      if not frmprincipal.Locregistro(frmmodulo.qrfunci,etecnico.text,'codigo') then
        etecnicobuttonclick(Frmos)
      else
      begin
        esetor.setfocus;
      end;
    end
    else
     etecnicobuttonclick(Frmos);
  end;



     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1');
     frmmodulo.qrfunci.open;
end;

procedure Tfrmos.edetectadoEnter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure Tfrmos.edetectadoExit(Sender: TObject);
begin
  edetectado.Color := clwindow;
end;

procedure Tfrmos.combosituacaoExit(Sender: TObject);
begin
  combosituacao.Color := clwindow;
  if combosituacao.Text = 'FECHADA' then
  gconclusao.Visible := true else gconclusao.Visible := false;



end;

procedure Tfrmos.wwDBComboBox1Enter(Sender: TObject);
begin
  edetectado.Color := $00A0FAF8;
end;

procedure Tfrmos.eintervencaoEnter(Sender: TObject);
begin
  eintervencao.Color := $00A0FAF8;
end;

procedure Tfrmos.eintervencaoExit(Sender: TObject);
begin
  eintervencao.Color := clwindow;
end;

procedure Tfrmos.BCANCELARClick(Sender: TObject);
begin
  if bcancelar.caption = 'Fechar' then
  begin
    FRMMODULO.QRCLIENTE.Locate('CODIGO',FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,[loCaseInsensitive]);
    frmos_impressao := tfrmos_impressao.create(self);
    frmos_impressao.showmodal;
    finalizado := false;
    close;
  end
  else
  begin
    IF APPLICATION.MESSAGEBOX('Tem certeza que deseja cancelar esta Ordem de Servi�o?','Aten��o!',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = IDYES THEN
    BEGIN
      IF (FRMMODULO.QROS.State = DSINSERT) OR (FRMMODULO.qros.State = DSEDIT) THEN
      begin
        frmmodulo.qros.cancel;
        frmmodulo.Conexao.Rollback;
        FINALIZADO := TRUE;
      end;
      close;
    END;
  end;
  
end;

procedure Tfrmos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF NOT FINALIZADO THEN
  BEGIN
    IF (FRMMODULO.QROS.State = DSINSERT) OR (FRMMODULO.qros.State = DSEDIT) THEN
       FRMMODULO.QROS.Cancel;
    FRMMODULO.Conexao.Rollback;
  END;

  action := cafree;
end;

procedure Tfrmos.Laudo1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
  dbdateedit2.setfocus;
end;

procedure Tfrmos.combosituacaoEnter(Sender: TObject);
begin
  combosituacao.Color := $00A0FAF8;
end;

procedure Tfrmos.BGRAVARClick(Sender: TObject);
var
  vstatus : string;
  continua : string;
  i : integer;
begin








  IF NOT BGRAVAR.Visible THEN EXIT;



  if frmmodulo.qros.FieldByName('CODATENDENTE').asstring = '' then
  begin
    showmessage('N�o foi informado o atendente!');
    ecliente.setfocus;
    exit;
  end;


  if frmmodulo.qros.FieldByName('codcliente').asstring = '' then
  begin
    showmessage('N�o foi informado o cliente!');
    ecliente.setfocus;
    exit;
  end
  else
  begin
    frmmodulo.qrcliente.locate('codigo',frmmodulo.qros.fieldbyname('codcliente').asstring,[locaseinsensitive]);
  end;




  qros_servico.FIRST;


  if combosituacao.Text = 'FECHADA' then
  begin
    if DBDateEdit3.text = '  /  /    ' then
    begin
      Showmessage('Favor informar a data da conclus�o!');
       PageView1.ActivePageIndex := 0;
      dbdateedit3.setfocus;
      exit;
    end;

    if frmPrincipal.autentica_caixa('Fechamento O.S.',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

        FRMOS_FECHAMENTO := TFRMOS_FECHAMENTO.CREATE(SELF);
        FRMOS_FECHAMENTO.SHOWMODAL;
      END
      ELSE
      BEGIN
        APPLICATION.MESSAGEBOX('Este caixa est� fechado! Favor verificar...','Aten��o',mb_ok+MB_ICONWARNING);
        EXIT;
      END;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('N�o autorizado!','Aviso',mb_ok+MB_ICONERROR);
      EXIT;
    end;




  end
  else
  begin // ABERTA
    IF APPLICATION.MESSAGEBOX('Confirma o encerramento desta O.S.?','Aten��o',mb_yesno+mb_iconquestion) = Idno then exit;



    if combosituacao.Text = 'ABERTA - Aguardando Confirma��o' then frmmodulo.qros.fieldbyname('st').asinteger := 2;
    if combosituacao.Text = 'ABERTA - Executando Servi�os' then frmmodulo.qros.fieldbyname('st').asinteger := 3;

    IF FRMMODULO.QROS.STATE = DSINSERT THEN FRMMODULO.QROS.FIELDBYNAME('HORA').ASSTRING := TIMETOSTR(TIME);
    frmmodulo.qros.fieldbyname('cor').asstring := 'NAO';
    FRMMODULO.qros.Post;

    FRMMODULO.QRCLIENTE.Locate('CODIGO',FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,[loCaseInsensitive]);



    frmos_impressao := tfrmos_impressao.create(self);
    frmos_impressao.showmodal;

    FRMMODULO.Conexao.Commit;
    FINALIZADO := TRUE;
    CLOSE;
  end;
end;

procedure Tfrmos.esetorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codsetor').asstring := frmprincipal.zerarcodigo(esetor.text,6);
    if esetor.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrsetor,esetor.text,'codigo') then
        esetorbuttonclick(Frmos)
      else
      begin
        edetectado.setfocus;
      end;
    end
    else
        esetorbuttonclick(Frmos);
  end;
end;

procedure Tfrmos.combosituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then eintervencao.SetFocus;
end;

procedure Tfrmos.combosituacaoChange(Sender: TObject);
begin
  if combosituacao.Text = 'FECHADA' then
  BEGIN



    FRMMODULO.qrcaixa_operador.Open;
    FRMMODULO.qrcaixa_operador.Locate('CODIGO','000099',[loCaseInsensitive]);
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    begin
      frmmodulo.qros.fieldbyname('CONCLUSAO_DATA').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
      gconclusao.Visible := true;
    END
    ELSE
    BEGIN
      APPLICATION.MessageBox('O caixa do sistema est� fechado! Favor verificar!','Aten��o',mb_ok+MB_ICONERROR);
      abort;

    END;



  END
  else
  BEGIN
    gconclusao.Visible := false;
  END;

end;

procedure Tfrmos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmos.etecnicoEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
{   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 where UPPER(funcao) like '''+'%T�C%'+''' or UPPER(funcao) like '''+'%TEC%'+'''  order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';}
end;

procedure Tfrmos.ESERVICOButtonClick(Sender: TObject);
begin
  //SHOWMESSAGE('');
end;

procedure Tfrmos.qros_servicoBeforePost(DataSet: TDataSet);
begin
  qros_servico.FieldByName('codos').AsString := frmmodulo.qros.fieldbyname('codigo').asstring;
  qros_servico.FieldByName('codcliente').AsString := frmmodulo.qros.fieldbyname('codcliente').asstring;
  qros_servico.FieldByName('data').AsString := frmmodulo.qros.fieldbyname('data').asstring;
end;

procedure Tfrmos.bexcluir_servicoClick(Sender: TObject);
begin
  if application.MessageBox('Confirma a Exclus�o do Item?','Aten��o',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    qros_servico.fieldbyname('valor').asfloat;

    frmmodulo.qros.fieldbyname('servico_total').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;


    qros_servico.delete;
    gridservico.setfocus;
  end;
end;

procedure Tfrmos.Servios1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
  gridservico.SetFocus;
end;

procedure Tfrmos.qros_servicoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qros_servico.fieldbyname('valor').asfloat;
end;

procedure Tfrmos.qros_servicoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure Tfrmos.qros_servicoAfterPost(DataSet: TDataSet);
begin
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat +
    qros_servico.fieldbyname('valor').asfloat -
    valor_anterior;

    frmmodulo.qros.fieldbyname('servico_total').asfloat :=
    frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
    frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;
end;

procedure Tfrmos.ExcluirServio1Click(Sender: TObject);
begin
IF PAGEVIEW1.ACTIVEPAGEINDEX = 1 THEN
BEGIN

  if bexcluir_servico.Enabled then
  begin
    bexcluir_servicoClick(frmos);
  end;
END;

end;

procedure Tfrmos.COMBOSERVICOExit(Sender: TObject);
begin
  if comboservico.Text <> '' then
  begin
    if frmmodulo.qrservico.Locate('servico',comboservico.Text,[loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('codservico').asstring := frmmodulo.qrservico.fieldbyname('codigo').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Servi�o n�o encontrado!','Aten��o',mb_ok+MB_ICONWARNING);
      comboservico.text := '';
      comboservico.setfocus;
    end;
  end;
end;

procedure Tfrmos.ESERVICOExit(Sender: TObject);
begin
  if eservico.Text <> '' then
  begin
    qros_servico.fieldbyname('codservico').asstring := frmprincipal.zerarcodigo(eservico.Text,6);
    if frmmodulo.qrservico.Locate('codigo',eservico.Text,[loCaseInsensitive]) then
    begin
      qros_servico.fieldbyname('servico').asstring := frmmodulo.qrservico.fieldbyname('servico').asstring;
      qros_servico.fieldbyname('valor').asfloat := frmmodulo.qrservico.fieldbyname('valor').asfloat;
    end
    else
    begin
      application.messagebox('Servi�o n�o encontrado!','Aten��o',mb_ok+MB_ICONWARNING);
      qros_servico.fieldbyname('codservico').asstring := '';
      eservico.setfocus;
    end;
  end;
end;

procedure Tfrmos.combotecnicoExit(Sender: TObject);
begin
  if combotecnico.Text <> '' then
  begin
    qros_servico.fieldbyname('codtecnico').asstring := frmprincipal.zerarcodigo(combotecnico.Text,6);

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_TECNICO = 1 order by nome');
     frmmodulo.qrfunci.open;

    if frmmodulo.qrfunci.Locate('codigo',combotecnico.Text,[loCaseInsensitive]) then
    begin
      //
    end
    else
    begin
      application.messagebox('T�cnico n�o encontrado!','Aten��o',mb_ok+MB_ICONWARNING);
      qros_servico.fieldbyname('codtecnico').asstring := '';
      combotecnico.setfocus;
    end;
  end;

     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
     frmmodulo.qrfunci.open;
end;

procedure Tfrmos.qros_servicoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Favor informar o servi�o!');
  Action:= daAbort;
end;

procedure Tfrmos.PageView1Change(Sender: TObject);
begin




  if PageView1.ActivePageindex = 1 then
  begin
    if frmmodulo.qros.fieldbyname('codcliente').asstring <> '' then
    begin
      bexcluir_servico.Enabled := true;
    end
    else
    begin
      bexcluir_servico.Enabled := false;
    end;

      
  end;


  if pageview1.ActivePageIndex = 3 then
  begin
    frmmodulo.qrfornecedor.close;
    frmmodulo.qrfornecedor.sql.clear;
    frmmodulo.qrfornecedor.sql.add('select * from c000009 where assistencia_tecnica = 1 order by nome');
    frmmodulo.qrfornecedor.open;
    frmmodulo.qrfornecedor.IndexFieldNames := 'nome';

  end;
end;

procedure Tfrmos.DBEdit6Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmos.DBEdit6Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('servico_total').asfloat :=
  frmmodulo.qros.fieldbyname('servico_subtotal').asfloat -
  frmmodulo.qros.fieldbyname('servico_desconto').asfloat ;

end;

procedure Tfrmos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmos.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmos.DBEdit8Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmos.eveiculoEnter(Sender: TObject);
begin
   TEDIT(SENDER).Color := $00A0FAF8;
end;

procedure Tfrmos.eveiculoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
try
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codveiculo').asstring := frmprincipal.zerarcodigo(eveiculo.text,6);
    if eveiculo.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrveiculo,eveiculo.text,'codigo') then
        blocveiculoclick(Frmos)
      else
      begin
        dbedit12.setfocus;
      end;
    end
    else
      blocveiculo.SetFocus;
  end;
except
end;
end;


procedure Tfrmos.blocveiculoClick(Sender: TObject);
begin
  frmloc_veiculo := tfrmloc_veiculo.create(self);
  frmloc_veiculo.showmodal;
  frmmodulo.qros.fieldbyname('codveiculo').asstring := frmmodulo.qrveiculo.fieldbyname('codigo').asstring;
  dbedit12.setfocus;
end;

procedure Tfrmos.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmos.DBEdit14Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('desloc_total').asfloat :=
  frmmodulo.qros.fieldbyname('desloc_combustivel').asfloat +
  frmmodulo.qros.fieldbyname('desloc_refeicao').asfloat +
  frmmodulo.qros.fieldbyname('desloc_hospedagem').asfloat ;

end;

procedure Tfrmos.Deslocamento1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 3;
  eveiculo.setfocus;
end;

procedure Tfrmos.esetorEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmos.eterceiroExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
try
  IF (frmmodulo.qros.state = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('codterceiro').asstring := frmprincipal.zerarcodigo(eterceiro.text,6);
    if eterceiro.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrfornecedor,eterceiro.text,'codigo') then
        blocterceiroclick(Frmos)
      else
      begin
        frmmodulo.qros.fieldbyname('TERCEIRO_CONTATO').asstring := frmmodulo.qrfornecedor.fieldbyname('contato1').asstring;
        dbedit20.setfocus;

      end;
    end
    else
      blocterceiro.SetFocus;
  end;
except
end;
end;

procedure Tfrmos.blocterceiroClick(Sender: TObject);
begin
  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.add('select * from c000009 order by NOME');
  frmmodulo.qrfornecedor.open;

  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.Caption := 'Localizar Empresa (Tercerizada)';
  frmloc_fornecedor.showmodal;
  frmmodulo.qros.fieldbyname('codterceiro').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  frmmodulo.qros.fieldbyname('TERCEIRO_CONTATO').asstring := frmmodulo.qrfornecedor.fieldbyname('contato1').asstring;
  dbedit20.setfocus;
end;

procedure Tfrmos.eobs_terceiroEnter(Sender: TObject);
begin
  eobs_terceiro.Color := $00A0FAF8;
end;

procedure Tfrmos.eobs_terceiroExit(Sender: TObject);
begin
  eobs_terceiro.Color := clwindow;
end;

procedure Tfrmos.DBEdit21Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat :=
  frmmodulo.qros.fieldbyname('TERCEIRO_valor').asfloat +
  frmmodulo.qros.fieldbyname('TERCEIRO_comissao').asfloat ;

end;

procedure Tfrmos.DBEdit22Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat :=
  frmmodulo.qros.fieldbyname('TERCEIRO_valor').asfloat +
  frmmodulo.qros.fieldbyname('TERCEIRO_comissao').asfloat ;

end;

procedure Tfrmos.erceiros1Click(Sender: TObject);
begin
  pageview1.ActivePageindex := 4;
  eterceiro.SetFocus;
end;

procedure Tfrmos.DBEdit9Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;


  end;
end;

procedure Tfrmos.DBEdit4Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

procedure Tfrmos.DBEdit17Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;

    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

procedure Tfrmos.DBEdit23Change(Sender: TObject);
begin
  if (frmmodulo.qros.State = dsinsert) or (frmmodulo.qros.State = dsedit) then
  begin
    frmmodulo.qros.fieldbyname('subtotal').asfloat :=
    frmmodulo.qros.fieldbyname('PRODUTO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('SERVICO_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('DESLOC_TOTAL').asfloat +
    frmmodulo.qros.fieldbyname('TERCEIRO_TOTAL').asfloat;
    frmmodulo.qros.fieldbyname('total').asfloat :=
    frmmodulo.qros.fieldbyname('subtotal').asfloat +
    frmmodulo.qros.fieldbyname('acrescimo').asfloat -
    frmmodulo.qros.fieldbyname('desconto').asfloat ;

  end;
end;

procedure Tfrmos.qrOS_contasreceberAfterPost(DataSet: TDataSet);
begin
  if lancando_contasreceber then
  begin

   frmOS_contasreceber.rsoma.value :=
   frmOS_contasreceber.rsoma.value +
   qrOS_contasreceber.fieldbyname('valor').asfloat -
   valor_prestacao;

   frmOS_contasreceber.rdiferenca.Value :=
   frmOS_fechamento.rtotal.value - frmOS_contasreceber.rsoma.value;

   if (frmOS_contasreceber.rdiferenca.value < (0.009)) and (frmOS_contasreceber.rdiferenca.value > (-0.009)) then
     frmOS_contasreceber.rdiferenca.Value := 0;
  end;
end;

procedure Tfrmos.qrOS_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  valor_prestacao := qrOS_contasreceber.fieldbyname('valor').asfloat;
end;

procedure Tfrmos.qrOS_contasreceberBeforeInsert(DataSet: TDataSet);
begin
   valor_prestacao := 0;
end;

procedure Tfrmos.DBDateEdit3Enter(Sender: TObject);
begin
   tedit(Sender).color := $00A0FAF8;

end;

procedure Tfrmos.edefeitoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ABORT;
end;

procedure Tfrmos.eobsKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ABORT;
end;

procedure Tfrmos.edetectadoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ABORT;
end;

procedure Tfrmos.COMBOTIPOEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
end;

procedure Tfrmos.COMBOTIPOExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmos.COMBOTIPOKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN ECLIENTE.SetFocus;
end;

procedure Tfrmos.wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
    IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmos.gridservicoExit(Sender: TObject);
begin
  IF (qros_servico.State = DSINSERT) OR (qros_servico.State = DSEDIT) THEN
  BEGIN
    QROS_SERVICO.Cancel;
  END;
end;

procedure Tfrmos.DBEdit3Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  frmmodulo.qrservicos_periodicos.close;
  frmmodulo.qrservicos_periodicos.sql.clear;
  frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('marca  = '''+frmmodulo.qros.fieldbyname('marca').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('modelo = '''+frmmodulo.qros.fieldbyname('modelo').asstring+''' and ');
  frmmodulo.qrservicos_periodicos.sql.add('serie  = '''+frmmodulo.qros.fieldbyname('serial').asstring+'''');
  frmmodulo.qrservicos_periodicos.open;
  if frmmodulo.qrservicos_periodicos.RecordCount > 0 then
    begin
      bperiodico.ItemIndex := 0;
    end;


end;

procedure Tfrmos.eatendentButtonClick(Sender: TObject);
begin

   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qros.fieldbyname('codatendente').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
   COMBOTIPO.SETFOCUS;
end;

procedure Tfrmos.eatendentKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmos.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qros.fieldbyname('codcliente').asstring := RESULTADO_PESQUISA1;
  IF DBEDIT10.TEXT = '' THEN FRMMODULO.QROS.FieldByName('SOLICITANTE').ASSTRING := 'O MESMO';
  dbedit10.setfocus;
end;

procedure Tfrmos.etecnicoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmos.etecnicoButtonClick(Sender: TObject);
begin
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_TECNICO = 1 order by nome');
   frmmodulo.qrfunci.open;
   frmmodulo.qrfunci.indexfieldnames := 'nome';

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qros.fieldbyname('DETECTADO_CODTECNICO').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
   frmmodulo.qrfunci.close;
   frmmodulo.qrfunci.sql.clear;
   frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 order by nome');
   frmmodulo.qrfunci.open;
   

  esetor.setfocus;



end;

procedure Tfrmos.esetorButtonClick(Sender: TObject);
begin

  frmloc_setor := tfrmloc_setor.create(self);
  frmloc_setor.showmodal;
  frmmodulo.qros.fieldbyname('codsetor').asstring := frmmodulo.qrsetor.fieldbyname('codigo').asstring;
  edetectado.setfocus;
end;

procedure Tfrmos.bperiodicoKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmos.qrOS_contasreceberBeforePost(DataSet: TDataSet);
begin
  qros_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

procedure Tfrmos.DBEdit18Exit(Sender: TObject);
var texto : string;
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

end.


