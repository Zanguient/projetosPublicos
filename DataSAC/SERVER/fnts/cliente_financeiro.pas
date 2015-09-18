unit cliente_financeiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid, Collection,
  Buttons, ImgList, Mask, rxtooledit, rxcurredit, Menus, ComCtrls, RXSpin,
  PageView, Wwkeycb, frxDesgn, frxClass, frxDBSet, AdvGlowButton, TeEngine,
  Series, TeeProcs, Chart;

type
  Tfrmcliente_financeiro = class(TForm)
    FlatPanel2: TFlatPanel;
    dscontasreceber: TDataSource;
    qrcontasreceber: TZQuery;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    ImageList1: TImageList;
    qrcontasrecebercliente: TStringField;
    qrcontasrecebercliente_situacao: TIntegerField;
    qrcontasreceberCODREGIAO: TStringField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bloquear1: TMenuItem;
    ColocaremObservao1: TMenuItem;
    Desbloquear1: TMenuItem;
    irarObservao1: TMenuItem;
    Relatrios1: TMenuItem;
    N1: TMenuItem;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    FlatPanel3: TFlatPanel;
    FlatPanel8: TFlatPanel;
    Panel1: TPanel;
    rvalor: TRxCalcEdit;
    rjuro: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    FlatPanel7: TFlatPanel;
    FlatPanel9: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    GroupBox1: TGroupBox;
    rtodos: TRadioButton;
    rcliente: TRadioButton;
    rregiao: TRadioButton;
    GPESQUISA: TGroupBox;
    ecodigo: TEdit;
    bloc: TBitBtn;
    enome: TEdit;
    GroupBox3: TGroupBox;
    ratrazo: TRadioButton;
    rperiodo: TRadioButton;
    gdias: TGroupBox;
    rdias: TRxCalcEdit;
    UpDown1: TUpDown;
    gperiodo: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    FlatPanel10: TFlatPanel;
    GroupBox4: TGroupBox;
    RTODOS2: TRadioButton;
    RCLIENTE2: TRadioButton;
    RREGIAO2: TRadioButton;
    GPESQUISA2: TGroupBox;
    ECODIGO2: TEdit;
    BLOC2: TBitBtn;
    ENOME2: TEdit;
    GroupBox6: TGroupBox;
    RATRAZO2: TRadioButton;
    RPERIODO2: TRadioButton;
    GDIAS2: TGroupBox;
    RDIAS2: TRxCalcEdit;
    UpDown2: TUpDown;
    GPERIODO2: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    qrresumo: TZQuery;
    dsresumo: TDataSource;
    qrresumoNOME: TStringField;
    qrresumoCODIGO: TStringField;
    qrresumoTOTAL: TFloatField;
    qrcontasreceberNOME: TStringField;
    query: TZQuery;
    queryCODIGO: TStringField;
    queryCODVENDA: TStringField;
    queryCODVENDEDOR: TStringField;
    queryCODCAIXA: TStringField;
    queryCODCLIENTE: TStringField;
    queryDATA_EMISSAO: TDateTimeField;
    queryDATA_VENCIMENTO: TDateTimeField;
    queryDATA_PAGAMENTO: TDateTimeField;
    queryVALOR_ORIGINAL: TFloatField;
    queryVALOR_PAGO: TFloatField;
    queryVALOR_JUROS: TFloatField;
    queryVALOR_ATUAL: TFloatField;
    queryVALOR_DESCONTO: TFloatField;
    queryDOCUMENTO: TStringField;
    queryTIPO: TStringField;
    querySITUACAO: TIntegerField;
    queryFILTRO: TIntegerField;
    queryNOSSONUMERO: TStringField;
    queryCODREGIAO: TStringField;
    queryCODCEDENTE: TStringField;
    queryjuros: TFloatField;
    queryDIAS: TIntegerField;
    queryRESTANTE: TFloatField;
    qrresumototalgeral: TFloatField;
    loc: TwwIncrementalSearch;
    Label9: TLabel;
    FlatPanel11: TFlatPanel;
    Label13: TLabel;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    FlatPanel17: TFlatPanel;
    loc2: TwwIncrementalSearch;
    qrresumoSITUACAO: TIntegerField;
    plegenda: THeaderView;
    HeaderView3: THeaderView;
    Image1: TImage;
    Image4: TImage;
    Image5: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ltaxa: TLabel;
    lmulta: TLabel;
    lcarencia: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    bfechar_legenda: TBitBtn;
    BitBtn1: TBitBtn;
    FlatPanel13: TFlatPanel;
    GroupBox5: TGroupBox;
    rtodos3: TRadioButton;
    rregiao3: TRadioButton;
    gpesquisa3: TGroupBox;
    ecodigo3: TEdit;
    bloc3: TBitBtn;
    enome3: TEdit;
    GroupBox8: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    qrvenda: TZQuery;
    dsabc: TDataSource;
    qrabc: TZQuery;
    qrabcCODIGO: TStringField;
    qrabcCAMPO1: TStringField;
    qrabcCAMPO2: TStringField;
    qrabcCAMPO3: TStringField;
    qrabcCAMPO4: TStringField;
    qrabcVALOR1: TFloatField;
    qrabcVALOR2: TFloatField;
    qrabcVALOR3: TFloatField;
    qrabcABC: TStringField;
    QUERY2: TZQuery;
    qrabcPERCENTUAL: TFloatField;
    wwDBGrid3: TwwDBGrid;
    FlatPanel14: TFlatPanel;
    Label18: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    fsresumo: TfrxDBDataset;
    bfiltro: TAdvGlowButton;
    Bevel1: TBevel;
    button1: TAdvGlowButton;
    Bevel2: TBevel;
    btotal: TAdvGlowButton;
    bfiltro2: TAdvGlowButton;
    bfiltro3: TAdvGlowButton;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    bliquidar: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    brelatorioS: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    PageSheet4: TPageSheet;
    Panel3: TPanel;
    bfiltro5: TAdvGlowButton;
    Bevel9: TBevel;
    wwDBGrid4: TwwDBGrid;
    qrinativo: TZQuery;
    dsinativo: TDataSource;
    fscliente_inativo: TfrxDBDataset;
    Label1: TLabel;
    rdias_inativo: TRxCalcEdit;
    Label19: TLabel;
    qrcontasreceberSITUACAO2: TIntegerField;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    PageSheet6: TPageSheet;
    PageSheet7: TPageSheet;
    PageSheet8: TPageSheet;
    wwDBGrid2: TwwDBGrid;
    PageSheet9: TPageSheet;
    qrresumo_geral: TZQuery;
    grid5: TwwDBGrid;
    dsresumo_geral: TDataSource;
    PageSheet10: TPageSheet;
    graf_venda: TChart;
    Series1: TBarSeries;
    qrresumo_geralNOME: TStringField;
    qrresumo_geralCODIGO: TStringField;
    qrresumo_geralSITUACAO: TIntegerField;
    qrresumo_geralCREDIARIO: TFloatField;
    qrresumo_geralCHEQUE: TFloatField;
    qrresumo_geralFINANCEIRA: TFloatField;
    qrresumo_geralTotal: TFloatField;
    rTotalResumo: TRxCalcEdit;
    bTotalizaResumo: TAdvGlowButton;
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure bfechar_legendaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure BFILTROClick(Sender: TObject);
    procedure rtodosClick(Sender: TObject);
    procedure rclienteClick(Sender: TObject);
    procedure rregiaoClick(Sender: TObject);
    procedure ratrazoClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure rdiasChange(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure rperiodoClick(Sender: TObject);
    procedure rdiasKeyPress(Sender: TObject; var Key: Char);
    procedure rdiasEnter(Sender: TObject);
    procedure rdiasExit(Sender: TObject);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure blocClick(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure bliquidarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure brelatoriosClick(Sender: TObject);
    procedure BLOC2Click(Sender: TObject);
    procedure ECODIGO2Exit(Sender: TObject);
    procedure RATRAZO2Click(Sender: TObject);
    procedure RPERIODO2Click(Sender: TObject);
    procedure DateEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RDIAS2KeyPress(Sender: TObject; var Key: Char);
    procedure BFILTRO2Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure RDIAS2Exit(Sender: TObject);
    procedure RDIAS2Change(Sender: TObject);
    procedure RTODOS2Click(Sender: TObject);
    procedure RCLIENTE2Click(Sender: TObject);
    procedure RREGIAO2Click(Sender: TObject);
    procedure qrresumoCalcFields(DataSet: TDataSet);
    procedure queryCalcFields(DataSet: TDataSet);
    procedure locEnter(Sender: TObject);
    procedure loc2Enter(Sender: TObject);
    procedure rtodos3Click(Sender: TObject);
    procedure rregiao3Click(Sender: TObject);
    procedure bloc3Click(Sender: TObject);
    procedure ecodigo3Exit(Sender: TObject);
    procedure DateEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure qrabcCalcFields(DataSet: TDataSet);
    procedure wwDBGrid3DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure bfiltro3Click(Sender: TObject);
    procedure btotalClick(Sender: TObject);
    procedure bfiltro5Click(Sender: TObject);
    procedure rdias_inativoKeyPress(Sender: TObject; var Key: Char);
    procedure PageView2Change(Sender: TObject);
    procedure qrresumo_geralCalcFields(DataSet: TDataSet);
    procedure bTotalizaResumoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente_financeiro: Tfrmcliente_financeiro;
  juro_carencia : integer;
  juro_taxa, juro_multa, total_original, total_juros : real;
  filtrado : boolean;

  TOTAL_VENDA : REAL;


  yjuro, yvalor, ytotal : real;

implementation

uses modulo, principal, contasreceber_juros, loc_cliente, loc_regiao,
  lista_cliente_financeiro, processo, xloc_cliente;

{$R *.dfm}

procedure Tfrmcliente_financeiro.qrcontasreceberCalcFields(
  DataSet: TDataSet);
var valor, juro, multa: real;
dias : integer;
begin

 try
  valor := qrcontasreceber.fieldbyname('valor_ATUAL').asfloat;


  qrcontasreceber.FieldByName('restante').asfloat := 0;

  if qrcontasreceber.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.FieldByName('data_pagamento').asfloat > qrcontasreceber.fieldbyname('data_vencimento').asdatetime then
           dias := trunc(date - qrcontasreceber.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa/100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        IF (DIAS - JURO_CARENCIA) > 0 THEN
        BEGIN
          juro := (valor * ((juro_taxa/100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        END;
      end;
      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.FieldByName('dias').AsInteger := dias;
        qrcontasreceber.fieldbyname('restante').asfloat := valor;
        qrcontasreceber.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.fieldbyname('restante').asfloat := qrcontasreceber.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      qrcontasreceber.FieldByName('dias').AsInteger := 0;
      qrcontasreceber.fieldbyname('restante').asfloat := valor;
      qrcontasreceber.fieldbyname('juros').asfloat := 0;
      qrcontasreceber.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.FieldByName('dias').AsInteger := 0;
    qrcontasreceber.fieldbyname('restante').asfloat := valor;
    qrcontasreceber.fieldbyname('juros').asfloat := 0;
  end;



   EXCEPT
     SHOWMESSAGE('Processamento interrompido!');
   END;
end;

procedure Tfrmcliente_financeiro.FormShow(Sender: TObject);
begin

  
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 order by nome ');
  frmmodulo.qrcliente.Open;
  frmmodulo.qrcliente.IndexFieldNames := 'NOME';

  qrcontasreceber.Close;

end;

procedure Tfrmcliente_financeiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcliente_financeiro.FormCreate(Sender: TObject);
begin
  gdias.Top := 13;
  gperiodo.Top := 13;

  FRMMODULO.qrconfig.OPEN;
  juro_carencia := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_CARENCIA').asinteger;
  juro_taxa     := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa    := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;
end;

procedure Tfrmcliente_financeiro.button1Click(Sender: TObject);
begin
  ltaxa.Caption := formatfloat('###,###,##0.00',juro_taxa)+'%';
  lmulta.Caption := formatfloat('###,###,##0.00',juro_multa)+'%';
  lcarencia.Caption := inttostr(juro_carencia)+' dia(s)';


  plegenda.visible := true;
  bfechar_legenda.SetFocus;
end;

procedure Tfrmcliente_financeiro.bfechar_legendaClick(Sender: TObject);
begin
  plegenda.visible := false;
end;

procedure Tfrmcliente_financeiro.BitBtn1Click(Sender: TObject);
begin
            if not frmPrincipal.autentica('Alterar Juros',4) then
            begin
              application.messagebox('Desculpe! Seu acesso n�o foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              frmcontasreceber_juros := tfrmcontasreceber_juros.create(self);
              frmcontasreceber_juros.showmodal;

              ltaxa.Caption := formatfloat('###,###,##0.00',juro_taxa)+'%';
              lmulta.Caption := formatfloat('###,###,##0.00',juro_multa)+'%';
              lcarencia.Caption := inttostr(juro_carencia)+' dia(s)';


              if PageView1.ActivePageIndex = 0 then
              begin
                qrcontasreceber.refresh;
                bfiltroClick(FRMCLIENTE_FINANCEIRO);
              end;
              if PageView1.ActivePageIndex = 1 then
              begin
                qrresumo.refresh;
                bfiltro2Click(FRMCLIENTE_FINANCEIRO);
              end;


            end;
end;

procedure Tfrmcliente_financeiro.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_financeiro.BFILTROClick(Sender: TObject);
var ordem : string;
begin

  if radiobutton1.checked then ordem := ' cr.data_vencimento ';
  if radiobutton2.checked then ordem := ' cliente.nome, cr.data_vencimento ';


  yvalor := 0;
  yjuro := 0;
  ytotal := 0;

  qrcontasreceber.Close;
  qrcontasreceber.sql.clear;

  if rtodos.Checked then
  begin
    if ratrazo.Checked then
    begin
      qrcontasreceber.sql.add('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 order by '+ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date-rdias.value);
    end;
    if rperiodo.Checked then
    begin
      qrcontasreceber.sql.add('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 order by '+ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    end;
  end;
  if rcliente.Checked then
  begin
    if ratrazo.Checked then
    begin
      qrcontasreceber.sql.add('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.codcliente = '''+ecodigo.text+''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 order by '+ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date-rdias.value);
    end;
    if rperiodo.Checked then
    begin
      qrcontasreceber.sql.add('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.codcliente = '''+ecodigo.text+''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 order by '+ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    end;
  end;
  if rregiao.Checked then
  begin
    if ratrazo.Checked then
    begin
      qrcontasreceber.sql.add('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cliente.codregiao = '''+ecodigo.text+''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 order by '+ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := (date-rdias.value);
    end;
    if rperiodo.Checked then
    begin
      qrcontasreceber.sql.add('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cliente.codregiao = '''+ecodigo.text+''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 order by '+ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    end;

  end;
  qrcontasreceber.open;
  btotalClick(frmcliente_financeiro);





end;

procedure Tfrmcliente_financeiro.rtodosClick(Sender: TObject);
begin
  Gpesquisa.Visible := false;
end;

procedure Tfrmcliente_financeiro.rclienteClick(Sender: TObject);
begin
  gpesquisa.visible := true;
  gpesquisa.Caption := 'Selecionar Cliente';
  ecodigo.Text := '';
  enome.Text := '';
end;

procedure Tfrmcliente_financeiro.rregiaoClick(Sender: TObject);
begin
  gpesquisa.visible := true;
  gpesquisa.Caption := 'Selecionar Regi�o';
  ecodigo.Text := '';
  enome.Text := '';

end;

procedure Tfrmcliente_financeiro.ratrazoClick(Sender: TObject);
begin
  gdias.Visible := true;
  gperiodo.Visible := false;
end;

procedure Tfrmcliente_financeiro.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  rdias.Value := UpDown1.Position;
      if rdias.value > 1 then rdias.DisplayFormat := '###,##0 dias' else rdias.DisplayFormat := '###,##0 dia';
end;

procedure Tfrmcliente_financeiro.rdiasChange(Sender: TObject);
begin
  try
    if rdias.value > 1 then rdias.DisplayFormat := '###,##0 dias' else rdias.DisplayFormat := '###,##0 dia';
  except
  end;
end;

procedure Tfrmcliente_financeiro.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.DateEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.DateEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente_financeiro.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltro.setfocus;
end;

procedure Tfrmcliente_financeiro.rperiodoClick(Sender: TObject);
begin
  gdias.Visible := false;
  gperiodo.Visible := true;
end;

procedure Tfrmcliente_financeiro.rdiasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltro.setfocus;
end;

procedure Tfrmcliente_financeiro.rdiasEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.rdiasExit(Sender: TObject);
begin
  UpDown1.Position := trunc(rdias.value);
  tedit(sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.ecodigoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.ecodigoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecodigo.text := frmprincipal.zerarcodigo(ecodigo.text,6);
  if ecodigo.text <> '000000' then
  begin

    if rcliente.Checked then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente,ecodigo.text,'codigo') then
         blocclick(Frmcliente_financeiro)
      else
      begin
        ecodigo.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        enome.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
         bfiltro.setfocus;
      end;
    end;


    if rregiao.Checked then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrregiao,ecodigo.text,'codigo') then
         blocclick(Frmcliente_financeiro)
      else
      begin
        ecodigo.Text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
        enome.Text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
         bfiltro.setfocus;
      end;
    end;
  end
  else
  begin
    bloc.setfocus;
  end;
end;

procedure Tfrmcliente_financeiro.blocClick(Sender: TObject);
begin
  if rcliente.checked then
  begin
    resultado_pesquisa1 := '';
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;
    if resultado_pesquisa1 <> '' then
    begin
      ecodigo.Text := resultado_pesquisa1;
      enome.Text := resultado_pesquisa2;
    end;
  end;
  if rregiao.checked then
  begin
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;
    ecodigo.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
    enome.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
  end;
  bfiltro.setfocus;
end;

procedure Tfrmcliente_financeiro.ecodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then Perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente_financeiro.bliquidarClick(Sender: TObject);
begin
            if not frmPrincipal.autentica('Bloquear Clientes',4) then
            begin
              application.messagebox('Desculpe! Seu acesso n�o foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              if application.messagebox('Tem certeza que deseja bloquear os clientes de todas as presta��es selecionadas?','Aten��o',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
              begin
                qrcontasreceber.first;
                while not qrcontasreceber.eof do
                begin

                    frmmodulo.qrcliente.close;
                    frmmodulo.qrcliente.SQL.Clear;
                    frmmodulo.qrcliente.SQL.Add('update c000007 set situacao = 3 where codigo = '''+qrcontasreceber.fieldbyname('codcliente').asstring+'''');
                    frmmodulo.qrcliente.ExecSQL;


                  qrcontasreceber.next;
                end;
                frmmodulo.qrcliente.close;
                frmmodulo.qrcliente.SQL.clear;
                frmmodulo.qrcliente.sql.add('select * from c000007 order by nome ');
                frmmodulo.qrcliente.Open;
                frmmodulo.qrcliente.IndexFieldNames := 'NOME';
                frmmodulo.Conexao.Commit;
                qrcontasreceber.Refresh;
                filtrado := false;
                showmessage('Processamento conclu�do');
              end;
            end;


end;

procedure Tfrmcliente_financeiro.bincluirClick(Sender: TObject);
begin
            if not frmPrincipal.autentica('Colocar Observa��o',4) then
            begin
              application.messagebox('Desculpe! Seu acesso n�o foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              if application.messagebox('Tem certeza que deseja colocar observa��es nos clientes de todas as presta��es selecionadas?','Aten��o',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
              begin
                qrcontasreceber.first;
                while not qrcontasreceber.eof do
                begin

                    frmmodulo.qrcliente.close;
                    frmmodulo.qrcliente.SQL.Clear;
                    frmmodulo.qrcliente.SQL.Add('update c000007 set situacao = 2, obs4 = '''+'Cliente com presta��es em Atrazo!'+''' where codigo = '''+qrcontasreceber.fieldbyname('codcliente').asstring+'''');
                    frmmodulo.qrcliente.ExecSQL;
                    qrcontasreceber.next;
                end;
                frmmodulo.qrcliente.close;
                frmmodulo.qrcliente.SQL.clear;
                frmmodulo.qrcliente.sql.add('select * from c000007 order by nome ');
                frmmodulo.qrcliente.Open;
                frmmodulo.qrcliente.IndexFieldNames := 'NOME';
                frmmodulo.Conexao.Commit;
                qrcontasreceber.Refresh;
                filtrado := false;
                showmessage('Processamento conclu�do');
              end;
            end;
end;

procedure Tfrmcliente_financeiro.BitBtn2Click(Sender: TObject);
begin
            if not frmPrincipal.autentica('Desbloquear Clientes',4) then
            begin
              application.messagebox('Desculpe! Seu acesso n�o foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              if application.messagebox('Tem certeza que deseja desbloquear os clientes de todas as presta��es selecionadas?','Aten��o',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
              begin
                qrcontasreceber.first;
                while not qrcontasreceber.eof do
                begin
                    frmmodulo.qrcliente.close;
                    frmmodulo.qrcliente.SQL.Clear;
                    frmmodulo.qrcliente.SQL.Add('update c000007 set situacao = 1 where codigo = '''+qrcontasreceber.fieldbyname('codcliente').asstring+'''');
                    frmmodulo.qrcliente.ExecSQL;
                  qrcontasreceber.next;
                end;
                frmmodulo.qrcliente.close;
                frmmodulo.qrcliente.SQL.clear;
                frmmodulo.qrcliente.sql.add('select * from c000007 order by nome ');
                frmmodulo.qrcliente.Open;
                frmmodulo.qrcliente.IndexFieldNames := 'NOME';
                frmmodulo.Conexao.Commit;
                qrcontasreceber.Refresh;
                filtrado := false;
                showmessage('Processamento conclu�do');
              end;
            end;
end;

procedure Tfrmcliente_financeiro.BitBtn3Click(Sender: TObject);
begin
            if not frmPrincipal.autentica('Tirar Observa��o',4) then
            begin
              application.messagebox('Desculpe! Seu acesso n�o foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              exit;
            end
            else
            begin
              if application.messagebox('Tem certeza que deseja tirar a observa��o dos clientes de todas as presta��es selecionadas?','Aten��o',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
              begin
                qrcontasreceber.first;
                while not qrcontasreceber.eof do
                begin
                    frmmodulo.qrcliente.close;
                    frmmodulo.qrcliente.SQL.Clear;
                    frmmodulo.qrcliente.SQL.Add('update c000007 set situacao = 1, obs4 = '''+''+''' where codigo = '''+qrcontasreceber.fieldbyname('codcliente').asstring+'''');
                    frmmodulo.qrcliente.ExecSQL;
                  qrcontasreceber.next;
                end;
                frmmodulo.qrcliente.close;
                frmmodulo.qrcliente.SQL.clear;
                frmmodulo.qrcliente.sql.add('select * from c000007 order by nome ');
                frmmodulo.qrcliente.Open;
                frmmodulo.qrcliente.IndexFieldNames := 'NOME';
                frmmodulo.Conexao.Commit;
                qrcontasreceber.Refresh;
                filtrado := false;
                showmessage('Processamento conclu�do');
              end;
            end;
end;

procedure Tfrmcliente_financeiro.brelatoriosClick(Sender: TObject);
begin
  FRMLISTA_CLIENTE_FINANCEIRO := TFRMLISTA_CLIENTE_FINANCEIRO.CREATE(SELF);
  FRMLISTA_CLIENTE_FINANCEIRO.SHOWMODAL;
end;

procedure Tfrmcliente_financeiro.BLOC2Click(Sender: TObject);
begin
  if rcliente2.checked then
  begin
    frmloc_cliente := tfrmloc_cliente.create(self);
    frmloc_cliente.showmodal;
    ecodigo2.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
    enome2.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
  end;
  if rregiao2.checked then
  begin
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;
    ecodigo2.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
    enome2.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
  end;
  bfiltro2.setfocus;
end;

procedure Tfrmcliente_financeiro.ECODIGO2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecodigo2.text := frmprincipal.zerarcodigo(ecodigo2.text,6);
  if ecodigo2.text <> '000000' then
  begin

    if rcliente2.Checked then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente,ecodigo2.text,'codigo') then
         bloc2click(Frmcliente_financeiro)
      else
      begin
        ecodigo2.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        enome2.Text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
         bfiltro2.setfocus;
      end;
    end;


    if rregiao2.Checked then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrregiao,ecodigo2.text,'codigo') then
         bloc2click(Frmcliente_financeiro)
      else
      begin
        ecodigo2.Text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
        enome2.Text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
         bfiltro2.setfocus;
      end;
    end;
  end
  else
  begin
    bloc2.setfocus;
  end;
end;

procedure Tfrmcliente_financeiro.RATRAZO2Click(Sender: TObject);
begin
  gdias2.Visible := true;
  gperiodo2.Visible := false;
end;

procedure Tfrmcliente_financeiro.RPERIODO2Click(Sender: TObject);
begin
  gdias2.Visible := false;
  gperiodo2.Visible := true;
end;

procedure Tfrmcliente_financeiro.DateEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltro2.setfocus;
end;

procedure Tfrmcliente_financeiro.RDIAS2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltro2.setfocus;
end;

procedure Tfrmcliente_financeiro.BFILTRO2Click(Sender: TObject);
begin

  wwDBGrid2.DataSource := NIL;

  qrresumo.Close;
  qrresumo.sql.clear;

  if rtodos2.Checked then
  begin
    if ratrazo2.Checked then
    begin

      QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo, cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      QRRESUMO.SQL.ADD('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := (date-rdias2.value);
    end;
    if rperiodo2.Checked then
    begin
      QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      QRRESUMO.SQL.ADD('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := dateedit3.date;
      qrresumo.Params.ParamByName('dataf').asdatetime := dateedit4.date;
    end;
  end;
  if rcliente2.Checked then
  begin
    if ratrazo2.Checked then
    begin
      QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.codcliente = '''+ecodigo2.text+''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      QRRESUMO.SQL.ADD('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := (date-rdias2.value);
    end;
    if rperiodo2.Checked then
    begin
      QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.codcliente = '''+ecodigo2.text+''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      QRRESUMO.SQL.ADD('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := dateedit3.date;
      qrresumo.Params.ParamByName('dataf').asdatetime := dateedit4.date;
    end;
  end;
  if rregiao2.Checked then
  begin
    if ratrazo2.Checked then
    begin
      QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo, cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cliente.codregiao = '''+ecodigo2.text+''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      QRRESUMO.SQL.ADD('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := (date-rdias2.value);
    end;
    if rperiodo2.Checked then
    begin
      QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cliente.codregiao = '''+ecodigo2.text+''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      QRRESUMO.SQL.ADD('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := dateedit3.date;
      qrresumo.Params.ParamByName('dataf').asdatetime := dateedit4.date;
    end;

  end;
  qrresumo.open;

  bTotalizaResumoClick(frmcliente_financeiro);
  grid5.SetFocus;
//  WWDBGRID2.DataSource := DSresumo;



end;

procedure Tfrmcliente_financeiro.PageView1Change(Sender: TObject);

begin
  IF PageView1.ActivePageINDEX = 1 THEN
  BEGIN
    QRRESUMO.CLOSE;
    QRRESUMO.SQL.CLEAR;
    QRRESUMO.SQL.ADD('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.valor_atual) total from c000007 cliente');
    QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.data_vencimento <= :datai and cr.situacao = 1 group by cliente.codigo, cliente.nome, cliente.situacao');
    QRRESUMO.SQL.ADD('order by cliente.nome');
    qrresumo.Params.ParamByName('datai').asdatetime := date;
    QRRESUMO.Open;
  END;
  IF PAGEVIEW1.ActivePageINDEX = 2 THEN
  BEGIN
    QRABC.CLOSE;
    QRABC.SQL.CLEAR;
    QRABC.SQL.ADD('DELETE FROM CL00006');
    QRABC.EXECSQL;
    QRABC.SQL.CLEAR;
    QRABC.SQL.ADD('SELECT * FROM CL00006 ORDER BY CAMPO2 DESC');
    QRABC.OPEN;
{
    QUERY2.CLOSE;
    QUERY2.SQL.CLEAR;
    QUERY2.SQL.ADD('SELECT SUM(TOTAL) TOTAL FROM C000048');
    QUERY2.Open;
    TOTAL_VENDA := QUERY2.FIELDBYNAME('TOTAL').ASFLOAT;
    QUERY2.CLOSE;

    QRVENDA.CLOSE;
    QRVENDA.SQL.CLEAR;
    QRVENDA.SQL.ADD('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.TOTAL) total from c000007 cliente');
    QRVENDA.SQL.ADD('jOIN c000048 cr on cliente.codigo = cr.codcliente group by cliente.codigo, cliente.nome, cliente.situacao');
    QRVENDA.SQL.ADD('order by cliente.nome');
    QRVENDA.Open;

    QRVENDA.FIRST;
    WHILE NOT QRVENDA.EOF DO
    BEGIN
      QRABC.INSERT;
      QRABC.FIELDBYNAME('CODIGO').ASSTRING := QRVENDA.FIELDBYNAME('CODIGO').ASSTRING;
      QRABC.FIELDBYNAME('CAMPO1').ASSTRING := QRVENDA.FIELDBYNAME('NOME').ASSTRING;
      QRABC.FIELDBYNAME('VALOR1').ASFLOAT  := QRVENDA.FIELDBYNAME('TOTAL').ASFLOAT;
      QRABC.FIELDBYNAME('VALOR2').ASINTEGER := QRVENDA.FIELDBYNAME('SITUACAO').ASINTEGER; 
      QRABC.FIELDBYNAME('CAMPO2').ASSTRING := frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',QRVENDA.FIELDBYNAME('TOTAL').ASFLOAT),20,'0','E');
      QRABC.POST;
      QRVENDA.NEXT;
    END;


    QRABC.Refresh;
     }
  END;
end;

procedure Tfrmcliente_financeiro.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
  rdias2.Value := UpDown2.Position;
      if rdias2.value > 1 then rdias2.DisplayFormat := '###,##0 dias' else rdias2.DisplayFormat := '###,##0 dia';
end;

procedure Tfrmcliente_financeiro.RDIAS2Exit(Sender: TObject);
begin
  UpDown2.Position := trunc(rdias2.value);
  tedit(sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.RDIAS2Change(Sender: TObject);
begin
  try
    if rdias2.value > 1 then rdias2.DisplayFormat := '###,##0 dias' else rdias2.DisplayFormat := '###,##0 dia';
  except
  end;
end;

procedure Tfrmcliente_financeiro.RTODOS2Click(Sender: TObject);
begin
  Gpesquisa2.Visible := false;
end;

procedure Tfrmcliente_financeiro.RCLIENTE2Click(Sender: TObject);
begin
  gpesquisa2.visible := true;
  gpesquisa2.Caption := 'Selecionar Cliente';
  ecodigo2.Text := '';
  enome2.Text := '';
end;

procedure Tfrmcliente_financeiro.RREGIAO2Click(Sender: TObject);
begin
  gpesquisa2.visible := true;
  gpesquisa2.Caption := 'Selecionar Regi�o';
  ecodigo2.Text := '';
  enome2.Text := '';
end;

procedure Tfrmcliente_financeiro.qrresumoCalcFields(DataSet: TDataSet);
var juros : real;
begin
  juros := 0;
  query.close;
  query.sql.clear;


    if ratrazo2.Checked then
    begin
      query.sql.add('select * from c000049 where codcliente = '''+qrresumoCODIGO.value+''' and data_vencimento <= :datai and situacao = 1 and valor_atual > 0');
      query.Params.ParamByName('datai').asdatetime := (date-rdias.value);
    end;
    if rperiodo2.Checked then
    begin
      query.sql.add('select * from c000049 where codcliente = '''+qrresumoCODIGO.value+''' and data_vencimento >= :datai and data_vencimento <= :dataf and situacao = 1 and valor_atual > 0');
      query.Params.ParamByName('datai').asdatetime := dateedit1.date;
      query.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    end;

  query.open;
  query.first;
  while not query.eof do
  begin
    juros := juros + queryRESTANTE.value;
    query.next;
  end;

  qrresumototalgeral.value := juros;
end;

procedure Tfrmcliente_financeiro.queryCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
dias : integer;
begin


  valor := query.fieldbyname('valor_ATUAL').asfloat;


  query.FieldByName('restante').asfloat := 0;

  if query.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if query.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if query.FieldByName('data_pagamento').asfloat > query.fieldbyname('data_vencimento').asdatetime then
           dias := trunc(date - query.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - query.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - query.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa/100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        IF (DIAS - JURO_CARENCIA) > 0 THEN
        BEGIN
          juro := (valor * ((juro_taxa/100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        END;
      end;
      if (dias - juro_carencia) > 0 then
      begin
        query.FieldByName('dias').AsInteger := dias;
        query.fieldbyname('restante').asfloat := valor;
        query.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        query.fieldbyname('restante').asfloat := query.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      query.FieldByName('dias').AsInteger := 0;
      query.fieldbyname('restante').asfloat := valor;
      query.fieldbyname('juros').asfloat := 0;
      query.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    query.FieldByName('dias').AsInteger := 0;
    query.fieldbyname('restante').asfloat := valor;
    query.fieldbyname('juros').asfloat := 0;
  end;





end;

procedure Tfrmcliente_financeiro.locEnter(Sender: TObject);
begin

//     qrcontasreceber.indexfieldnames := 'nome';


end;

procedure Tfrmcliente_financeiro.loc2Enter(
  Sender: TObject);
begin
     qrresumo.indexfieldnames := 'nome';
end;

procedure Tfrmcliente_financeiro.rtodos3Click(Sender: TObject);
begin
  Gpesquisa3.Visible := false;
end;

procedure Tfrmcliente_financeiro.rregiao3Click(Sender: TObject);
begin
  gpesquisa3.visible := true;
  gpesquisa3.Caption := 'Selecionar Regi�o';
  ecodigo3.Text := '';
  enome3.Text := '';
end;

procedure Tfrmcliente_financeiro.bloc3Click(Sender: TObject);
begin
  if rregiao3.checked then
  begin
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;
    ecodigo3.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
    enome3.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
  end;
  bfiltro3.setfocus;
end;

procedure Tfrmcliente_financeiro.ecodigo3Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ecodigo3.text := frmprincipal.zerarcodigo(ecodigo3.text,6);
  if ecodigo3.text <> '000000' then
  begin

    if rregiao3.Checked then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrregiao,ecodigo3.text,'codigo') then
         bloc3click(Frmcliente_financeiro)
      else
      begin
        ecodigo3.Text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
        enome3.Text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
         bfiltro3.setfocus;
      end;
    end;
  end
  else
  begin
    bloc3.setfocus;
  end;
end;

procedure Tfrmcliente_financeiro.DateEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltro3.setfocus;
end;

procedure Tfrmcliente_financeiro.qrabcCalcFields(DataSet: TDataSet);
VAR PERC : REAL;
begin
    IF TOTAL_VENDA <> 0 THEN
    BEGIN
      IF qrabc.FieldBYNAME('VALOR1').ASFLOAT <> 0 THEN
      BEGIN
        PERC := QRABC.FIELDBYNAME('VALOR1').ASFLOAT * 100 / TOTAL_VENDA;
        qrabcPERCENTUAL.VALUE := PERC;
        IF PERC >= 70 THEN qrabcABC.VALUE := 'A';
        IF (PERC < 70) AND (PERC >= 20) THEN qrabcABC.VALUE := 'B';
        IF PERC < 20 THEN qrabcABC.VALUE := 'C';
      END;
    END;
end;

procedure Tfrmcliente_financeiro.wwDBGrid3DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  IF qrabcPERCENTUAL.VALUE >= 70 THEN WWDbgrid3.canvas.Brush.Color:= $004040FF;
  IF (QRABCPERCENTUAL.VALUE < 70) AND (QRABCPERCENTUAL.VALUE >= 20) THEN WWDbgrid3.canvas.Brush.Color:= $00CEBE31;
  IF QRABCPERCENTUAL.VALUE < 20 THEN WWDbgrid3.canvas.Brush.Color:= $000BABC8;
  WWDbgrid3.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmcliente_financeiro.bfiltro3Click(Sender: TObject);
begin


wwDBGrid3.DataSource := NIL;



    QRABC.CLOSE;
    QRABC.SQL.CLEAR;
    QRABC.SQL.ADD('DELETE FROM CL00006');
    QRABC.EXECSQL;
    QRABC.SQL.CLEAR;
    QRABC.SQL.ADD('SELECT * FROM CL00006 ORDER BY CAMPO2 DESC');
    QRABC.OPEN;

    QUERY2.CLOSE;
    QUERY2.SQL.CLEAR;
    QUERY2.SQL.ADD('SELECT SUM(TOTAL) TOTAL FROM C000048 WHERE data >= :datai and data <= :dataf');
    qUERY2.Params.ParamByName('datai').asdatetime := dateedit5.date;
    qUERY2.Params.ParamByName('dataf').asdatetime := dateedit6.date;
    QUERY2.Open;
    TOTAL_VENDA := QUERY2.FIELDBYNAME('TOTAL').ASFLOAT;
    QUERY2.CLOSE;

    QRVENDA.CLOSE;
    QRVENDA.SQL.CLEAR;

  if rtodos3.Checked then
  begin
      QRVENDA.SQL.ADD('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.TOTAL) total from c000007 cliente');
      QRVENDA.SQL.ADD('jOIN c000048 cr on cliente.codigo = cr.codcliente and cr.data >= :datai and cr.data <= :dataf group by cliente.codigo, cliente.nome, cliente.situacao');
      QRVENDA.SQL.ADD('order by cliente.nome');
      qrvenda.Params.ParamByName('datai').asdatetime := dateedit5.date;
      qrvenda.Params.ParamByName('dataf').asdatetime := dateedit6.date;

  end;
  if rregiao3.Checked then
  begin
      QRVENDA.SQL.ADD('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.TOTAL) total from c000007 cliente');
      QRVENDA.SQL.ADD('jOIN c000048 cr on cliente.codigo = cr.codcliente and  cr.data >= :datai and cr.data <= :dataf and cliente.codregiao = '''+ecodigo3.text+''' and cr.data <= :dataf group by cliente.codigo, cliente.nome, cliente.situacao');
      QRVENDA.SQL.ADD('order by cliente.nome');
      qrvenda.Params.ParamByName('datai').asdatetime := dateedit5.date;
      qrvenda.Params.ParamByName('dataf').asdatetime := dateedit6.date;
  end;
  QRVENDA.OPEN;
    QRVENDA.FIRST;
    WHILE NOT QRVENDA.EOF DO
    BEGIN
      QRABC.INSERT;
      QRABC.FIELDBYNAME('CODIGO').ASSTRING := QRVENDA.FIELDBYNAME('CODIGO').ASSTRING;
      QRABC.FIELDBYNAME('CAMPO1').ASSTRING := QRVENDA.FIELDBYNAME('NOME').ASSTRING;
      QRABC.FIELDBYNAME('VALOR1').ASFLOAT  := QRVENDA.FIELDBYNAME('TOTAL').ASFLOAT;
      QRABC.FIELDBYNAME('VALOR2').ASINTEGER := QRVENDA.FIELDBYNAME('SITUACAO').ASINTEGER;
      QRABC.FIELDBYNAME('CAMPO2').ASSTRING := frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',QRVENDA.FIELDBYNAME('TOTAL').ASFLOAT),20,'0','E');
      QRABC.POST;
      QRVENDA.NEXT;
    END;
    // 

    QRABC.Refresh;


  WWDBGRID3.DataSource := DSABC;











end;

procedure Tfrmcliente_financeiro.btotalClick(Sender: TObject);
begin
  try
  wwdbgrid1.DataSource := nil;
  yvalor := 0;
  yjuro := 0;
  ytotal := 0;
  frmprocesso := tfrmprocesso.Create(self);
  frmprocesso.p.PartsComplete := 0;
  frmprocesso.p.TotalParts := qrcontasreceber.RecordCount;
  frmprocesso.show;
  Application.ProcessMessages;


  qrcontasreceber.first;
  while not qrcontasreceber.Eof do
  begin
    frmprocesso.caption := 'Processando...  '+qrcontasreceber.fieldbyname('codcliente').asstring+' | '+qrcontasreceber.fieldbyname('nome').asstring;
    yvalor := yvalor + qrcontasreceber.fieldbyname('valor_atual').asfloat;
    yjuro := yjuro + qrcontasreceber.fieldbyname('juros').asfloat;
    ytotal := ytotal + qrcontasreceber.fieldbyname('restante').asfloat;
    frmprocesso.p.PartsComplete := frmprocesso.p.PartsComplete + 1;

    application.ProcessMessages;
    qrcontasreceber.next;
  end;
  rvalor.value := yvalor;
  rjuro.value := yjuro;
  rtotal.value := ytotal;
  filtrado := false;
  frmprocesso.p.PartsComplete := frmprocesso.p.TotalParts;
  frmprocesso.Close;

  except
    Showmessage('Processamento interrompido!');
  end;

  wwdbgrid1.DataSource := dscontasreceber;

end;

procedure Tfrmcliente_financeiro.bfiltro5Click(Sender: TObject);
begin

  qrinativo.close;
  qrinativo.sql.clear;
  qrinativo.sql.add('select cliente.nome, cliente.codigo, cliente.data_ultimacompra,  cliente.situacao, sum(cr.valor_atual) total');
  qrinativo.sql.add('from c000007 cliente');
  qrinativo.SQL.add('JOIN c000049 cr on cliente.codigo = cr.codcliente');
  qrinativo.sql.add('and cr.codigo is not null and cliente.codigo is not null');
  qrinativo.sql.add('and cliente.situacao < 3');
  qrinativo.sql.add('and cliente.DATA_ULTIMACOMPRA < :datax');
  qrinativo.sql.add('group by cliente.codigo, cliente.nome, cliente.situacao, cliente.data_ultimacompra');
  qrinativo.sql.add('having sum(cr.valor_atual) = 0');
  qrinativo.sql.add('order by cliente.nome');
  qrinativo.params.ParamByName('datax').asdatetime := date - rdias_inativo.Value;
  qrinativo.open;
end;

procedure Tfrmcliente_financeiro.rdias_inativoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltro5.setfocus;
end;

procedure Tfrmcliente_financeiro.PageView2Change(Sender: TObject);
begin

  if PageView2.ActivePageIndex = 4 then
    begin
      qrresumo_geral.close;
      qrresumo_geral.sql.clear;
      qrresumo_geral.sql.add('select');
      qrresumo_geral.sql.add('nome, codigo, situacao,');
      qrresumo_geral.sql.add('sum(crediario) as crediario,');
      qrresumo_geral.sql.add('sum(cheque) as cheque,');
      qrresumo_geral.sql.add('sum(financeira) as financeira');
      qrresumo_geral.sql.add('from');
      qrresumo_geral.sql.add('(select');
      qrresumo_geral.sql.add('cliente.nome, cliente.codigo,cliente.situacao,');
      qrresumo_geral.sql.add('sum(cr.valor_atual) as crediario,');
      qrresumo_geral.sql.add('0 as cheque,');
      qrresumo_geral.sql.add('0 as financeira');
      qrresumo_geral.sql.add('from c000007 cliente');
      qrresumo_geral.sql.add('inner jOIN c000049 cr on (cliente.codigo = cr.codcliente)');
      qrresumo_geral.sql.add('where');
      qrresumo_geral.sql.add('cr.codigo is not null and cliente.codigo is not null');
      qrresumo_geral.sql.add('and cliente.situacao < 3');
      qrresumo_geral.sql.add('and cr.data_vencimento between :vdat1 and :vdat2');
      qrresumo_geral.sql.add('and cr.situacao = 1');
      qrresumo_geral.sql.add('and cr.valor_atual > 0');
      qrresumo_geral.sql.add('group by');
      qrresumo_geral.sql.add('cliente.codigo, cliente.nome, cliente.situacao');

      qrresumo_geral.sql.add('union');

      qrresumo_geral.sql.add('select');
      qrresumo_geral.sql.add('cliente.nome, cliente.codigo,cliente.situacao,');
      qrresumo_geral.sql.add('0 as crediario,');
      qrresumo_geral.sql.add('sum(ch.valor) as cheque,');
      qrresumo_geral.sql.add('0 as financeira');
      qrresumo_geral.sql.add('from c000007 cliente');
      qrresumo_geral.sql.add('inner jOIN c000040 ch on (cliente.codigo = ch.codcliente)');
      qrresumo_geral.sql.add('where');
      qrresumo_geral.sql.add('cliente.situacao < 3');
      qrresumo_geral.sql.add('and ch.vencimento between :vdat1 and :vdat2');
      qrresumo_geral.sql.add('and ch.situacao = 1');
      qrresumo_geral.sql.add('and ch.valor > 0');
      qrresumo_geral.sql.add('group by');
      qrresumo_geral.sql.add('cliente.codigo, cliente.nome, cliente.situacao');

      qrresumo_geral.sql.add('union');

      qrresumo_geral.sql.add('select');
      qrresumo_geral.sql.add('cliente.nome, cliente.codigo,cliente.situacao,');
      qrresumo_geral.sql.add('0 as crediario,');
      qrresumo_geral.sql.add('0 as cheque,');
      qrresumo_geral.sql.add('sum(fi.valor) as financeira');
      qrresumo_geral.sql.add('from c000007 cliente');
      qrresumo_geral.sql.add('inner jOIN c000123 fi on (cliente.codigo = fi.codcliente)');
      qrresumo_geral.sql.add('where');
      qrresumo_geral.sql.add('cliente.situacao < 3');
      qrresumo_geral.sql.add('and fi.data_pgto between :vdat1 and :vdat2');
      qrresumo_geral.sql.add('and fi.situacao = 1');
      qrresumo_geral.sql.add('and fi.valor > 0');
      qrresumo_geral.sql.add('group by');
      qrresumo_geral.sql.add('cliente.codigo, cliente.nome, cliente.situacao)');

      qrresumo_geral.sql.add('group by');
      qrresumo_geral.sql.add('codigo, nome, situacao');

      qrresumo_geral.sql.add('order by');
      qrresumo_geral.sql.add('nome');

      qrresumo_geral.params.ParamByName('vdat1').asdatetime := DateEdit3.date;
      qrresumo_geral.params.ParamByName('vdat2').asdatetime := DateEdit4.Date;

      qrresumo_geral.open;

    end;


  if PageView2.ActivePageIndex = 5 then
    begin
      series1.Clear;
      series1.AddY(qrresumo_geralCREDIARIO.AsFloat,qrresumo_geralCREDIARIO.DisplayLabel,clred);
      series1.AddY(qrresumo_geralCHEQUE.AsFloat,qrresumo_geralCHEQUE.DisplayLabel,clred);
      series1.AddY(qrresumo_geralFINANCEIRA.AsFloat,qrresumo_geralFINANCEIRA.DisplayLabel,clred);

      {
      BARseries1.Clear;
      BARseries1.AddY(qrresumo_geralCREDIARIO.AsFloat,qrresumo_geralCREDIARIO.DisplayLabel,CLBLUE);
      BARseries1.AddY(qrresumo_geralCHEQUE.AsFloat,qrresumo_geralCHEQUE.DisplayLabel,CLBLUE);
      BARseries1.AddY(qrresumo_geralFINANCEIRA.AsFloat,qrresumo_geralFINANCEIRA.DisplayLabel,CLBLUE);
      }

    end;

end;




procedure Tfrmcliente_financeiro.qrresumo_geralCalcFields(
  DataSet: TDataSet);
begin
  qrresumo_geralTotal.AsFloat :=  qrresumo_geralCREDIARIO.AsFloat+
                                  qrresumo_geralCHEQUE.AsFloat+
                                  qrresumo_geralFINANCEIRA.AsFloat;
end;

procedure Tfrmcliente_financeiro.bTotalizaResumoClick(Sender: TObject);
var
  vTotalResumo : Double;
begin
    vTotalResumo := 0;
    qrresumo_geral.First;
    while not qrresumo_geral.Eof do
    begin
      vTotalResumo := vTotalResumo + qrresumo_geralTotal.AsFloat;
      application.ProcessMessages;
      qrcontasreceber.next;
    end;
    qrresumo_geral.First;
    
end;

END.

Classe A : Clientes que possuem alto lucro dentro do per�odo selecionado (70% do lucro obtido).
Classe B : Clientes que possuem um lucro intermedi�rio dentro do per�odo selecionado (20% do lucro obtido).
Classe C : Clientes que possuem um baixo lucro dentro do per�odo selecionado (10% do lucro obtido).