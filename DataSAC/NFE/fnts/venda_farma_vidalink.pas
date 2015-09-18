unit venda_farma_vidalink;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RzPanel, DB, Wwdatsrc, Grids,
  Wwdbigrd, Wwdbgrid, RxMemDS, jpeg,
  TFlatPanelUnit, XPMan, Menus, Collection,Printers, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection, Mask, rxtooledit, rxcurredit, RzEdit,
  AdvToolBar, AdvToolBarStylers, AdvGlowButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, ImgList, DBCtrls, RzDBEdit, RzDBBnEd,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP,
  VrControls, VrLcd, PageView, AdvShapeButton;

type
  Tfrmvenda_farma_vidalink = class(TForm)
    dsrxprod: TwwDataSource;
    PopupMenu1: TPopupMenu;
    ESC1: TMenuItem;
    consulta1: TMenuItem;
    gravar1: TMenuItem;
    dsproduto: TDataSource;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCST: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TStringField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    dsautorizacao: TDataSource;
    qrautorizacao: TZQuery;
    dsconfig: TDataSource;
    qrautorizacaoDATA: TDateTimeField;
    qrautorizacaoTIPO: TStringField;
    qrautorizacaoCNPJ: TStringField;
    qrautorizacaoPLANO: TStringField;
    qrautorizacaoCONVENIADO: TStringField;
    qrautorizacaoCONVENIO: TStringField;
    qrautorizacaoECF: TStringField;
    qrautorizacaoCUPOM: TStringField;
    qrautorizacaoCODBARRA: TStringField;
    qrautorizacaoQTDE: TFloatField;
    qrautorizacaoPMC: TFloatField;
    qrautorizacaoPV: TFloatField;
    qrautorizacaoDESCONTO: TFloatField;
    qrautorizacaoCOMISSAO: TFloatField;
    qrautorizacaoPC_VISTA: TFloatField;
    qrautorizacaoPC_RECEBER: TFloatField;
    qrautorizacaoREEMBOLSO: TFloatField;
    qrautorizacaoSUBSIDIO: TFloatField;
    qrautorizacaoCODCLIENTE: TStringField;
    qrautorizacaoNOMECLIENTE: TStringField;
    consultad1: TMenuItem;
    gravard1: TMenuItem;
    dsautoriza: TwwDataSource;
    IdFTP1: TIdFTP;
    qrautorizacaoUF_MEDICO: TStringField;
    qrautorizacaoSOLICITACAO: TIntegerField;
    qrautorizacaoQTDE_AUTORIZADO: TFloatField;
    qrautorizacaoCPF: TStringField;
    qrautorizacaoCODCONVENIO: TIntegerField;
    qrautorizacaoAUTORIZACAO: TStringField;
    qrautorizacaoCRM_MEDICO: TStringField;
    estorno1: TMenuItem;
    tab_principal: TPageView;
    Panel7: TPanel;
    Label14: TLabel;
    Label1: TLabel;
    RzGroupBox3: TRzGroupBox;
    Label2: TLabel;
    Label15: TLabel;
    eresposta_autorizacao: TEdit;
    eresposta_venda: TEdit;
    emensagem_venda: TEdit;
    RzGroupBox5: TRzGroupBox;
    Label12: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    eautorizacao_venda: TEdit;
    ecupom: TEdit;
    eecf: TEdit;
    bvenda: TBitBtn;
    eretorno_venda: TEdit;
    eresposta: TEdit;
    emensagem: TEdit;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet4: TPageSheet;
    pprodutos: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label46: TLabel;
    Label51: TLabel;
    ecodproduto: TRzDBButtonEdit;
    DBEdit6: TDBEdit;
    eunitario: TRzDBNumericEdit;
    eposologia: TRzDBNumericEdit;
    eqtde: TRzDBNumericEdit;
    eapresentacao: TRzDBNumericEdit;
    Bevel3: TBevel;
    pmovimentacao: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    edinheiro: TRzNumericEdit;
    econvenio: TRzNumericEdit;
    Bevel4: TBevel;
    binclui_item: TAdvGlowButton;
    bexclui_item: TAdvGlowButton;
    bconsulta_itens: TAdvGlowButton;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Panel1: TPanel;
    AdvShapeButton3: TAdvShapeButton;
    Bevel7: TBevel;
    Label60: TLabel;
    Label61: TLabel;
    Label40: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label48: TLabel;
    esolicitacao: TEdit;
    ecrm: TEdit;
    dfpdata: TDateEdit;
    dfpprescricao: TDateEdit;
    euf: TDBComboBox;
    ecpf: TEdit;
    bpre_autorizacao: TAdvGlowButton;
    Label36: TLabel;
    Label29: TLabel;
    Label42: TLabel;
    Label55: TLabel;
    epaciente: TEdit;
    eautorizacao_datasus: TEdit;
    eretorno_datasus: TEdit;
    ecnpj_estabelecimento: TEdit;
    Bevel8: TBevel;
    Bevel9: TBevel;
    bgrava_item: TAdvGlowButton;
    bcancela_item: TAdvGlowButton;
    FlatPanel3: TFlatPanel;
    FlatPanel1: TFlatPanel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel1: TBevel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Bevel15: TBevel;
    Panel4: TPanel;
    bconsulta_datasus: TAdvGlowButton;
    bgravar_datasus: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    FlatPanel5: TFlatPanel;
    AdvShapeButton5: TAdvShapeButton;
    Bevel16: TBevel;
    Bevel2: TBevel;
    Label26: TLabel;
    Label27: TLabel;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    evalornf: TRzNumericEdit;
    evalorvista: TRzNumericEdit;
    evalorconvenio: TRzNumericEdit;
    evalorcliente: TRzNumericEdit;
    evalorpcm: TRzNumericEdit;
    evalorsubsidio: TRzNumericEdit;
    Panel2: TPanel;
    bgravar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Bevel12: TBevel;
    grid1: TwwDBGrid;
    Bevel11: TBevel;
    RzGroupBox2: TRzGroupBox;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel10: TBevel;
    btautorizacao: TEdit;
    bconsulta: TAdvGlowButton;
    eautorizacao: TEdit;
    ecnpj: TEdit;
    eplanoconvenio: TEdit;
    ecodconveniado: TEdit;
    enomeconveniado: TEdit;
    etpautorizacao: TEdit;
    etipo: TEdit;
    FlatPanel2: TFlatPanel;
    bretorno: TButton;
    FlatPanel6: TFlatPanel;
    Label30: TLabel;
    Label35: TLabel;
    Label49: TLabel;
    Label59: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Panel5: TPanel;
    Bevel17: TBevel;
    balteracaminho: TAdvGlowButton;
    bgravacaminho: TAdvGlowButton;
    Timer_datasus: TTimer;
    rxprodutos: TRxMemoryData;
    rxprodutosproduto: TStringField;
    rxprodutospv: TFloatField;
    rxprodutosqtde: TFloatField;
    rxprodutospc_vista: TFloatField;
    rxprodutospmc: TFloatField;
    rxprodutosqtde_autorizado: TFloatField;
    rxprodutosobs: TStringField;
    rxprodutosposologia: TFloatField;
    rxprodutoscodbarra: TStringField;
    rxprodutosunidade: TStringField;
    rxprodutoscst: TStringField;
    rxprodutosaliquota: TFloatField;
    rxprodutositem: TStringField;
    rxprodutosdesconto: TFloatField;
    rxprodutosreembolso: TFloatField;
    rxprodutospc_receber: TFloatField;
    rxprodutossubsidio: TFloatField;
    rxprodutoscomissao: TFloatField;
    rxprodutoscodigo: TStringField;
    rxprodutosapresentacao: TIntegerField;
    qrautorizacao_novartis: TZQuery;
    qrautorizacao_novartisAUTORIZACAO: TStringField;
    qrautorizacao_novartisOPERADORA: TStringField;
    qrautorizacao_novartisNUMERO_CARTAO: TStringField;
    qrautorizacao_novartisDATA: TDateTimeField;
    qrautorizacao_novartisCODOPERADOR: TStringField;
    qrautorizacao_novartisITEM: TStringField;
    qrautorizacao_novartisCODBARRA: TStringField;
    qrautorizacao_novartisCODIGO: TStringField;
    qrautorizacao_novartisPRODUTO: TStringField;
    qrautorizacao_novartisUNIDADE: TStringField;
    qrautorizacao_novartisCST: TStringField;
    qrautorizacao_novartisALIQUOTA: TFloatField;
    qrautorizacao_novartisEMBALAGEM: TStringField;
    qrautorizacao_novartisQUANTIDADE: TFloatField;
    qrautorizacao_novartisPMC: TFloatField;
    qrautorizacao_novartisDESCONTO: TFloatField;
    qrautorizacao_novartisDESCONTO1: TFloatField;
    qrautorizacao_novartisPRECO_LIQUIDO: TFloatField;
    qrautorizacao_novartisCLIENTE: TFloatField;
    qrautorizacao_novartisSUBSIDIO: TFloatField;
    qrautorizacao_novartisTOTAL: TFloatField;
    qrautorizacao_novartisSITUACAO: TIntegerField;
    qrautorizacao_novartisSTATUS: TStringField;
    qrautorizacao_novartisTIPO: TStringField;
    wwDBGrid3: TwwDBGrid;
    Memo1: TMemo;
    eautorizacao_datasus2: TEdit;
    qrautorizacaoPACIENTE: TStringField;
    qrautorizacaoPRE_AUTORIZACAO: TStringField;
    qrautorizacaoLOTE: TStringField;
    qrautorizacaoOBS: TStringField;
    PageSheet3: TPageSheet;
    Panel3: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label31: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    eautoriza: TEdit;
    ecnpj1: TEdit;
    bfiltra: TAdvGlowButton;
    Bevel14: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Bevel13: TBevel;
    FlatPanel4: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    rnfiscal: TRzNumericEdit;
    ravista: TRzNumericEdit;
    rconvenio: TRzNumericEdit;
    rareceber: TRzNumericEdit;
    rsubsidio: TRzNumericEdit;
    rqtde: TRzNumericEdit;
    btotaliza_autorizacao: TButton;
    Panel8: TPanel;
    brelatorio: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    qrautoriza: TZQuery;
    bestorno: TAdvGlowButton;
    qrestorno: TZQuery;
    qrestornoCODCLIENTE: TStringField;
    qrestornoCODPRODUTO: TStringField;
    qrestornoCODBARRA: TStringField;
    qrestornoCUPOM_NUMERO: TStringField;
    qrestornoDATA: TDateTimeField;
    qrestornoQTDE: TFloatField;
    Memo2: TMemo;
    pconfiguracoes: TRzPanel;
    GroupBox1: TGroupBox;
    Label45: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    bsenha: TEdit;
    ImageList1: TImageList;
    PageSheet7: TPageSheet;
    FlatPanel7: TFlatPanel;
    AdvShapeButton2: TAdvShapeButton;
    Bevel18: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel19: TBevel;
    FlatPanel8: TFlatPanel;
    AdvShapeButton4: TAdvShapeButton;
    Bevel20: TBevel;
    Label16: TLabel;
    Label18: TLabel;
    Bevel21: TBevel;
    lvenda_codigo: TLabel;
    qrautorizaPV: TFloatField;
    qrautorizaPC_VISTA: TFloatField;
    qrautorizaPC_RECEBER: TFloatField;
    qrautorizaREEMBOLSO: TFloatField;
    qrautorizaSUBSIDIO: TFloatField;
    qrautorizaPRE_AUTORIZACAO: TStringField;
    qrautorizaAUTORIZACAO: TStringField;
    qrautorizaDATA: TDateTimeField;
    qrautorizaCONVENIO: TStringField;
    qrautorizaCUPOM: TStringField;
    qrautorizaCNPJ: TStringField;
    qrautorizaLOTE: TStringField;
    qrautorizaCODCLIENTE: TStringField;
    qrautorizachave: TIntegerField;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    qrestornoapresentacao: TFloatField;
    lvenda_data: TLabel;
    qrestoque: TZQuery;
    Label19: TLabel;
    PageSheet6: TPageSheet;
    mLog: TMemo;
    qrautorizaCPF: TStringField;
    qrautorizacliente: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qrautorizaOBS: TStringField;
    procedure bconsultaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure ESC1Click(Sender: TObject);
    procedure consulta1Click(Sender: TObject);
    procedure btautorizacaoKeyPress(Sender: TObject; var Key: Char);
    procedure btautorizacaoExit(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure eecfExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bretornoClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bgravacaminhoClick(Sender: TObject);
    procedure balteracaminhoClick(Sender: TObject);
    procedure bfiltraClick(Sender: TObject);
    procedure btotaliza_autorizacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brelatorioClick(Sender: TObject);
    procedure gravar1Click(Sender: TObject);
    procedure consultad1Click(Sender: TObject);
    procedure gravard1Click(Sender: TObject);
    procedure ecodprodutoButtonClick(Sender: TObject);
    procedure ecodprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure bexclui_itemClick(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure binclui_itemClick(Sender: TObject);
    procedure bgrava_itemClick(Sender: TObject);
    procedure ecpfExit(Sender: TObject);
    procedure bcancela_itemClick(Sender: TObject);
    procedure bconsulta_itensClick(Sender: TObject);
    procedure bpre_autorizacaoClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure bconsulta_datasusClick(Sender: TObject);
    procedure bgravar_datasusClick(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure bestornoClick(Sender: TObject);
    procedure estorno1Click(Sender: TObject);
    procedure ecodprodutoExit(Sender: TObject);
    procedure eposologiaExit(Sender: TObject);
    procedure eqtdeExit(Sender: TObject);
    procedure Timer_datasusTimer(Sender: TObject);
    procedure dfpprescricaoExit(Sender: TObject);
    procedure ecrmExit(Sender: TObject);
    procedure eufExit(Sender: TObject);
    procedure eapresentacaoExit(Sender: TObject);
    procedure eautorizacao_datasus2Exit(Sender: TObject);
    procedure eautorizacao_datasus2Enter(Sender: TObject);
    procedure qrautorizaCalcFields(DataSet: TDataSet);
    procedure tab_principalChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private

    { Private declarations }
  public
    vfil_codigo,vfil_nome,vfil_cnpj,vfil_ie,vfil_cst,vfil_cipi,vfil_simples,vfil_ssimples,vfil_estadual: string;

    function sBreakApart(BaseString, BreakString: string; StringList: TStringList): TStringList;
    function zerarcodigo(codigo:string;qtde:integer):string;
    procedure ImpStrings(Strings: TStrings);
    function autentica(funcao : string;nivel:integer) : boolean;
    Function Cript(Action, Src: String): String;
    procedure ImprimeEstorno(Sender: TObject);

    { Public declarations }
  end;

var
  frmvenda_farma_vidalink: Tfrmvenda_farma_vidalink;

  autenticado:boolean;
  ativa_sistema : boolean;
  qtde_dias_ativacao : integer;
  DATA_TERMINO : TDATETIME;
  vopcao : integer;
  ArqTmp : TMemoryStream;

implementation

uses modulo, senha, principal, venda_fechamento_vidalink, compra_menu,
  lista_autorizacao, xloc_produto, compra, mensagem,
  venda_fechamento_datasus,ecf;


{$R *.dfm}

procedure Tfrmvenda_farma_vidalink.bconsultaClick(Sender: TObject);
var
  txt : textfile;
  sequencia,id,autorizacao,resposta,mensagem,cnpj_convenio : string;
  plano_convenio,codigo_conveniado,nome_conveniado,tipo_autorizacao: string;

  ean,qtde,pmc,preco_venda,preco_cliente_vista,preco_cliente_receber: string;
  valor_subsidio,valor_reembolso,desconto,comissao: string;

begin

  memo1.text := '';

  emensagem.Text := '';
  ecnpj.Text := '';
  eplanoconvenio.Text := '';
  ecodconveniado.Text := '';
  enomeconveniado.Text := '';
  etpautorizacao.Text := '';
  etipo.Text := '';
  eresposta.Text := '';
  emensagem.Text := '';

  eretorno_venda.Text := '';
  eautorizacao_venda.Text := '';
  ecupom.Text := '';
  eecf.Text := '';
  eresposta_venda.Text := '';
  emensagem_venda.Text := '';

  sequencia      := '0002';
  id             := '12';
  autorizacao    := zerarcodigo(btautorizacao.Text,12);
  resposta       := '';
  mensagem       := '';
  cnpj_convenio  := '';
  plano_convenio := '';
  codigo_conveniado := '';
  nome_conveniado := '';
  tipo_autorizacao := '';
  ean := '';
  qtde := '';
  pmc := '';
  preco_venda := '';
  preco_cliente_vista := '';
  preco_cliente_receber := '';
  valor_subsidio := '';
  valor_reembolso := '';
  desconto := '';
  comissao := '';

  {
      assignfile(txt,Trim(frmmodulo.qrconfigFARMACIA_ENVIO.AsString)+'Consulta.txt');
      rewrite(txt);
      writeln(txt,sequencia+id+autorizacao);
      Memo1.Lines.Add(sequencia+id+autorizacao);

      closefile(txt);
  }

  Memo1.Text := '';
  Memo1.Lines.Add(sequencia+id+autorizacao);
  Memo1.Lines.SaveToFile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO.AsString)+'Consulta.txt');

  eautorizacao.Text := autorizacao;
  bretornoClick(frmvenda_farma_vidalink);

end;

procedure Tfrmvenda_farma_vidalink.bfecharClick(Sender: TObject);
begin
  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt') then
    begin
      deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt');
    end;
  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt') then
    begin
      deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt');
    end;
    close;
end;

procedure Tfrmvenda_farma_vidalink.ESC1Click(Sender: TObject);
begin
  bfecharClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.consulta1Click(Sender: TObject);
begin
  bconsultaClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.btautorizacaoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
      PERFORM(WM_NEXTDLGCTL,0,0);
end;

function Tfrmvenda_farma_vidalink.sBreakApart(BaseString, BreakString: string; StringList: TStringList): TStringList;
var
EndOfCurrentString: byte;
TempStr: string;
begin
  repeat
  EndOfCurrentString := Pos(BreakString, BaseString);
  if EndOfCurrentString = 0 then
    StringList.add(BaseString)
  else
    StringList.add(Copy(BaseString, 1, EndOfCurrentString - 1));
    BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);

  until EndOfCurrentString = 0;
  result := StringList;
end;




function Tfrmvenda_farma_vidalink.zerarcodigo(codigo:string;qtde:integer):string;
begin
  while length(codigo) < qtde do codigo := '0'+codigo;
  result := codigo;
end;



procedure Tfrmvenda_farma_vidalink.btautorizacaoExit(Sender: TObject);
begin
  bconsulta.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
    begin
    end;
end;

procedure Tfrmvenda_farma_vidalink.eecfExit(Sender: TObject);
begin
  eecf.Text := zerarcodigo(eecf.Text,4);
end;

procedure Tfrmvenda_farma_vidalink.ImpStrings(Strings: TStrings);
var Prn: TextFile;
  i: Word;
begin
  AssignPrn(Prn);
  try
    Rewrite(Prn);
    try
      for i := 0 to Strings.Count -1 do
        writeln(Prn, Strings.Strings[i]);
    finally
      CloseFile(Prn);
    end;
  except
    on EInOutError do
    MessageDlg('Erro na impress�o do texto.', mtError, [mbOK], 0);
  end;
end;

procedure Tfrmvenda_farma_vidalink.FormShow(Sender: TObject);
begin

  tab_principal.ActivePageIndex := 0;

  qrproduto.Open;
  qrproduto.sql.clear;
  qrproduto.SQL.add('select * from c000025');
  qrproduto.SQL.ADD('order by codbarra');
  qrproduto.open;

  dateedit3.text := '01/'+copy(datetostr(date),4,7);
  dateedit4.date := frmprincipal.UltimoDiaMes(date);

  qrautorizacao.close;
  qrautorizacao.sql.clear;
  qrautorizacao.SQL.add('select * from FARMACIA_AUTORIZACAO where CODCONVENIO = 1');
  qrautorizacao.SQL.add('ORDER BY solicitacao');
  qrautorizacao.Open;

  qrautoriza.close;
  qrautoriza.sql.clear;
  qrautoriza.SQL.add('select sum(pv) pv, sum(pc_vista) pc_vista,sum(pc_receber) pc_receber,');
  qrautoriza.SQL.add('sum(reembolso) reembolso, sum(subsidio)subsidio,');
  qrautoriza.SQL.add('pre_autorizacao,autorizacao,data,convenio,cupom,cnpj,lote,codcliente,obs,cpf');
  qrautoriza.SQL.add('from FARMACIA_AUTORIZACAO where data BETWEEN :datai and :dataf ');

  qrautoriza.params.ParamByName('datai').asdatetime := dateedit3.date;
  qrautoriza.params.ParamByName('dataf').asdatetime := dateedit4.date;

  qrautoriza.SQL.add('group by pre_autorizacao,autorizacao,data,convenio,cupom,cnpj,lote,codcliente,obs,cpf');
  qrautoriza.SQL.add('order by cupom');
  qrautoriza.Open;

  btotaliza_autorizacaoClick(frmvenda_farma_vidalink);

  qrautoriza.First;

  bconsulta.Enabled := true;
  bvenda.Enabled := false;

  dfpdata.Date := date;
  dfpprescricao.Date := date;

  bsenha.Text := Frmprincipal.Cript('D',frmmodulo.qrconfig.fieldbyname('FARMACIA_SENHA').asstring);
  ecnpj_estabelecimento.Text := frmPrincipal.somenteNumero(frmPrincipal.vfil_cnpj);

  vimp_comprovante := false;
  vimp_pagamento   := false;

  vfil_codigo  := frmmodulo.qrFilialCODIGO.AsString;
  vfil_nome    := frmmodulo.qrFilialFILIAL.AsString;
  vfil_cnpj    := frmmodulo.qrFilialCNPJ.AsString;
  vfil_ie      := frmmodulo.qrFilialIE.AsString;
  vfil_cipi    := frmmodulo.qrFilialCONTRIBUINTE_IPI.AsString;
  vfil_cst     := frmmodulo.qrFilialSUBSTITUTO_TRIBUTARIO.AsString;
  vfil_simples := frmmodulo.qrFilialOPTANTE_SIMPLES.AsString;
  vfil_ssimples:= frmmodulo.qrFilialOPTANTE_SUPER_SIMPLES.AsString;
  vfil_estadual:= frmmodulo.qrFilialEMPRESA_ESTADUAL.AsString;

  eretorno_datasus.Text := '';
  epaciente.Text := '';
  eautorizacao_datasus.Text := '';
  bconsulta_datasus.SetFocus;
end;


function tfrmvenda_farma_vidalink.autentica(funcao:string;nivel:integer) : boolean;
begin


  frmsenha := tfrmsenha.create(self);
  frmsenha.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha.showmodal;
  result := autenticado;

end;

Function tfrmvenda_farma_vidalink.Cript(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
KeyPos : Integer;
OffSet : Integer;
Dest, Key : String;
SrcPos : Integer;
SrcAsc : Integer;
TmpSrcAsc : Integer;
Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
//  Key := 'YUQL%%$#%3DF#0WI5E$JA$46#NM@XXL6JAOAUW%$#@0AOMM4$4VZYW&&HJUI23@7E%#@!DF34#4SKL K3LA@DJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else
  if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
  SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
  if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
  TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
  if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
  else TmpSrcAsc := TmpSrcAsc - OffSet;
  Dest := Dest + Chr(TmpSrcAsc);
  OffSet := SrcAsc;
  SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
end;


procedure Tfrmvenda_farma_vidalink.bgravarClick(Sender: TObject);
begin
  if evalornf.Value > 0 then
    begin
      frmvenda_fechamento_vidalink := tfrmvenda_fechamento_vidalink.create(self);
      frmvenda_fechamento_vidalink.showmodal;
    end
  else
    begin
      application.messagebox('Inconsist�ncia nos dados, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      btautorizacao.setfocus;
    end;
end;

procedure Tfrmvenda_farma_vidalink.bretornoClick(Sender: TObject);
var txt : textfile;
  entrada : string;
  vvalorcv,vvalorp,vvalorn,vvalorpv,vvalorc,vvalors : double;
  x, itens, i : integer;

  ean,qtde,pmc,preco_venda,preco_cliente_vista,preco_cliente_receber : string;
  valor_subsidio,valor_reembolso,desconto,comissao : string;

begin

  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt') then
    begin
      deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt');
    end;
  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt') then
    begin
      deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt');
    end;

  itens := 0;
  memo1.text := '';

  frmPrincipal.vcontador := 0;

  frmmensagem := tfrmmensagem.create(self);
  frmmensagem.show;

  Application.ProcessMessages;

  while true do
  begin
    frmPrincipal.vcontador := frmPrincipal.vcontador + 1;
    frmmensagem.VrNum1.Value := frmPrincipal.vcontador;

    If (fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'consulta.txt')) then
    begin

      frmmensagem.Destroy;

      rxprodutos.Close;
      rxprodutos.Open;
  {
      assignfile(txt,Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'consulta.txt');
      reset(txt); // inicia a leitura do arquivo
      //readln(txt,entrada);
      while not Eof ( txt ) do
        begin
          ReadLn ( txt, entrada);
  }

      Memo1.Text := '';
      Memo1.Lines.LoadFromFile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'consulta.txt');
      Memo1.Lines[0];

      for x:= 0 to memo1.lines.count-1 do
        begin

          if copy(Memo1.Lines[x],1,6) = '000212' then
          //if copy(entrada,1,6) = '000212' then
            begin
            //memo1.Lines.Add(entrada);
            eresposta.Text := copy(Memo1.Lines[x],7,2);
            emensagem.Text := copy(Memo1.Lines[x],09,40);
            eautorizacao.Text := copy(Memo1.Lines[x],49,12);
            ecnpj.Text := copy(Memo1.Lines[x],61,14);
            eplanoconvenio.Text := copy(Memo1.Lines[x],75,8);
            ecodconveniado.Text := copy(Memo1.Lines[x],83,30);
            enomeconveniado.Text := copy(Memo1.Lines[x],113,40);
            etpautorizacao.Text := copy(Memo1.Lines[x],153,1);
            if etpautorizacao.Text = '0' then
              etipo.Text := '� Vista ( PBM )'
            else if etpautorizacao.Text = '1' then
              etipo.Text := '� Receber ( Vidalink  Aberto)'
            else if etpautorizacao.Text = '2' then
              etipo.Text := '� Receber ( Conv�nio Fechado )'
            else if etpautorizacao.Text = '3' then
              etipo.Text := '� Receber ( Conv�nio Aberto  )'
            else if etpautorizacao.Text = '4' then
              etipo.Text := '� Receber ( Vidalink  Fechado)';

              if (etpautorizacao.Text = '1') or (etpautorizacao.Text = '3') then
                begin
                  bincluir.Enabled := true;
                  balterar.Enabled := true;
                  bexcluir.Enabled := true;
                end;

              if eresposta.Text = 'ER' then
              begin
                ShowMessage('Pr�-Autoriza��o de Consulta Inv�lida : ' + emensagem.Text);

                //closefile(txt); // fecha e salva o arquivo

                btautorizacao.SetFocus;
                exit;
              end;

              {
            if eautorizacao.Text <> btautorizacao.Text then
              begin
                if application.messagebox('Autoriza��o diferente da pr�-autoriza��o, continua?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
                else
                  bconsultaClick(Form1);
                  exit;
              end;
              }
            end
          else
            begin

            //memo1.Lines.Add(entrada);

            ean := copy(Memo1.Lines[x],1,13);
            qtde := copy(Memo1.Lines[x],14,2);
            pmc := copy(Memo1.Lines[x],16,7);
            preco_venda := copy(Memo1.Lines[x],23,7);
            preco_cliente_vista := copy(Memo1.Lines[x],30,7);
            preco_cliente_receber := copy(Memo1.Lines[x],37,7);
            valor_subsidio := copy(Memo1.Lines[x],44,7);
            valor_reembolso := copy(Memo1.Lines[x],51,7);
            desconto := copy(Memo1.Lines[x],58,7);
            comissao := copy(Memo1.Lines[x],65,5);

            if qrproduto.Locate('CODBARRA',ean,[loCaseInsensitive]) then
               IF NOT ESTOQUE_NEGATIVO THEN
                 BEGIN

                  qrestoque.close;
                  qrestoque.sql.clear;
                  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
                  qrestoque.open;
                  //lestoque.caption := formatfloat('###,###,##0.000',qrestoque.fieldbyname('estoque_atual').asfloat);

                  IF qrestoque.FieldByName('ESTOQUE_ATUAL').ASFLOAT < 0.01 THEN
                    BEGIN
                      APPLICATION.MESSAGEBOX('Este produto n�o possue ESTOQUE!','Aten��o',mb_ok+MB_ICONWARNING);
                      btautorizacao.setfocus;
                      exit;
                    END;

                END;

            // aqui

            itens := itens + 1;

            rxprodutos.Insert;
            rxprodutositem.AsString := frmprincipal.zerarcodigo(inttostr(itens),3);
            rxprodutoscodigo.AsString := qrproduto.fieldbyname('codigo').asstring;
            rxprodutoscodbarra.AsString := ean;
            rxprodutosproduto.AsString := qrproduto.fieldbyname('produto').asstring;
            rxprodutoscst.AsString := qrproduto.fieldbyname('cst').asstring;
            rxprodutosaliquota.AsFloat := qrproduto.fieldbyname('aliquota').AsFloat;
            rxprodutosqtde.AsFloat := strtoint(qtde);
            rxprodutospmc.AsFloat := strtofloat(copy(pmc,1,5)+','+copy(pmc,6,2));
            // valor da venda da farmacia(pre�o cliente-a vista+
            //                            preco cliente-a receber+
            //                            subsidio+reembolso)
            rxprodutospv.AsFloat := strtofloat(copy(preco_venda,1,5)+','+copy(preco_venda,6,2));
            // valor de venda ao consumidor para pagamento a vista
            rxprodutospc_vista.AsFloat := strtofloat(copy(preco_cliente_vista,1,5)+','+copy(preco_cliente_vista,6,2));
            // valor de venda ao consumidor para pagamento a receber
            rxprodutospc_receber.AsFloat := strtofloat(copy(preco_cliente_receber,1,5)+','+copy(preco_cliente_receber,6,2));
            rxprodutossubsidio.AsFloat := strtofloat(copy(valor_subsidio,1,5)+','+copy(valor_subsidio,6,2));
            rxprodutosreembolso.AsFloat := strtofloat(copy(valor_reembolso,1,5)+','+copy(valor_reembolso,6,2));
            rxprodutosdesconto.AsFloat := strtofloat(copy(desconto,1,5)+','+copy(desconto,6,2));
            rxprodutoscomissao.AsFloat := strtofloat(copy(comissao,1,3)+','+copy(comissao,4,2));
            rxprodutos.Post;
            vvalorcv := vvalorcv + (rxprodutosreembolso.AsFloat*rxprodutosqtde.AsFloat);
            vvalorp := vvalorp + (rxprodutospmc.AsFloat*rxprodutosqtde.AsFloat);
            vvalorpv := vvalorpv + (rxprodutospc_vista.AsFloat*rxprodutosqtde.AsFloat);
            vvalorn := vvalorn + (rxprodutospv.AsFloat*rxprodutosqtde.AsFloat);
            vvalorc := vvalorc + (rxprodutospc_receber.AsFloat*rxprodutosqtde.AsFloat);
            vvalors := vvalors + (rxprodutossubsidio.AsFloat*rxprodutosqtde.AsFloat);

            end;
        end;
      //closefile(txt); // fecha e salva o arquivo

      bconsulta.Enabled := false;
      bvenda.Enabled := true;

      if eresposta.Text = 'OK' then
        begin
          eautorizacao_venda.Text := eautorizacao.Text;
          //eautorizacao_venda.SetFocus;
          evalorconvenio.Value := vvalorcv; //formatfloat('###,###,##0.00',vvalorcv);
          evalorpcm.Value := vvalorp;  //formatfloat('###,###,##0.00',vvalorp);
          evalornf.Value := vvalorn;  // formatfloat('###,###,##0.00',vvalorn);
          evalorvista.Value := vvalorpv; //formatfloat('###,###,##0.00',vvalorpv);
          evalorcliente.Value := vvalorc; //formatfloat('###,###,##0.00',vvalorc);
          evalorsubsidio.Value := vvalors; //formatfloat('###,###,##0.00',vvalorc);
          bgravar.SetFocus;
          exit;
        end
      else
        //btautorizacao.SetFocus;
        bgravar.SetFocus;

        exit;
   end;

    if frmPrincipal.vcontador > 70000 then
    begin
      application.messagebox('Tempo de Acesso Esgotado, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      frmmensagem.Destroy;
      //closefile(txt); // fecha e salva o arquivo
      exit;
    end;
 end;
   //else
   //bconsultaClick(frmvenda_farma_vidalink);

end;

procedure Tfrmvenda_farma_vidalink.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Produto',4) then
    rxprodutos.Delete
  else
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);

end;

procedure Tfrmvenda_farma_vidalink.bgravacaminhoClick(Sender: TObject);
begin
  if (frmmodulo.qrconfig.State = dsinsert) or (frmmodulo.qrconfig.State = dsedit) then
  begin
      frmmodulo.qrconfigFARMACIA_SENHA.AsString := Frmprincipal.Cript('C',bsenha.Text);
      frmmodulo.qrconfig.post;
  end;

  FRMMODULO.Conexaolocal.Commit;
  FRMMODULO.CONEXAO.Commit;

  tab_principal.ActivePageIndex := 0;
  balteracaminho.Enabled := true;
  bgravacaminho.Enabled := false;
  pconfiguracoes.Enabled := false;

end;

procedure Tfrmvenda_farma_vidalink.balteracaminhoClick(Sender: TObject);
begin
    frmmodulo.qrconfig.Edit;
    bsenha.Text := Frmprincipal.Cript('D',frmmodulo.qrconfig.fieldbyname('FARMACIA_SENHA').asstring);
    balteracaminho.Enabled := false;
    bgravacaminho.Enabled := true;
    pconfiguracoes.Enabled := true;
    dbedit1.setfocus;
end;

procedure Tfrmvenda_farma_vidalink.bfiltraClick(Sender: TObject);
var autoriza, cnpj : string;
begin
  if eautoriza.Text = '' then autoriza := ''  else autoriza := ' and autorizacao = '''+copy(eautoriza.text,1,12)+'''';
  if ecnpj1.text = '' then cnpj := '' else cnpj := ' and cnpj = '''+ecnpj1.text+'''';

  qrautoriza.close;
  qrautoriza.sql.clear;
  qrautoriza.SQL.add('select sum(pv) pv, sum(pc_vista) pc_vista,sum(pc_receber) pc_receber,');
  qrautoriza.SQL.add('sum(reembolso) reembolso, sum(subsidio)subsidio,');
  qrautoriza.SQL.add('pre_autorizacao,autorizacao,data,convenio,cupom,cnpj,lote,codcliente,obs,cpf');
  qrautoriza.SQL.add('from FARMACIA_AUTORIZACAO where data BETWEEN :datai and :dataf ' +autoriza+cnpj);
  qrautoriza.params.ParamByName('datai').asdatetime := dateedit3.date;
  qrautoriza.params.ParamByName('dataf').asdatetime := dateedit4.date;

  qrautoriza.SQL.add('group by pre_autorizacao,autorizacao,data,convenio,cupom,cnpj,lote,codcliente,obs,cpf');
  qrautoriza.SQL.add('order by cupom');
  qrautoriza.Open;

  if qrautoriza.RecordCount > 0 then
    btotaliza_autorizacaoClick(frmvenda_farma_vidalink);

  qrautoriza.First;

  wwDBGrid1.SetFocus;

  eautoriza.Text := '';
  ecnpj1.Text := '';

end;

procedure Tfrmvenda_farma_vidalink.btotaliza_autorizacaoClick(
  Sender: TObject);
begin

  rqtde.value := 0;
  rnfiscal.value := 0;
  ravista.value := 0;
  rconvenio.value := 0;
  rareceber.value := 0;
  rsubsidio.value := 0;

  dsautoriza.DataSet := nil;
  qrautoriza.first;
  while not qrautoriza.Eof do
  begin
     rqtde.Value := rqtde.Value + 1;
     rnfiscal.value := rnfiscal.Value + qrautoriza.fieldbyname('pv').asfloat;
     ravista.value := ravista.Value + qrautoriza.fieldbyname('pc_vista').asfloat;
     rconvenio.value := rconvenio.Value + qrautoriza.fieldbyname('reembolso').asfloat;
     rareceber.value := rareceber.Value + qrautoriza.fieldbyname('pc_receber').asfloat;
     rsubsidio.value := rsubsidio.Value + qrautoriza.fieldbyname('subsidio').asfloat;

     qrautoriza.next;
  end;
  dsautoriza.DataSet := qrautoriza;

end;

procedure Tfrmvenda_farma_vidalink.FormClose(Sender: TObject;
  var Action: TCloseAction);

  var
  txt : textfile;

begin

{
  assignfile(txt,Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt');
  rewrite(txt);

  try
    CloseFile(txt);
  except
  end;
 }


  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt') then
    deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Venda.txt');
  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt') then
    deletefile(Trim(frmmodulo.qrconfigFARMACIA_RESPOSTA.AsString)+'Consulta.txt');

  qrautorizacao.Close;
  qrautoriza.Close;
  qrproduto.Close;
end;

procedure Tfrmvenda_farma_vidalink.brelatorioClick(Sender: TObject);
begin
  FRMLISTA_AUTORIZACAO := TFRMLISTA_AUTORIZACAO.CREATE(SELF);
  FRMLISTA_AUTORIZACAO.SHOWMODAL;

end;

procedure Tfrmvenda_farma_vidalink.gravar1Click(Sender: TObject);
begin
  bgravarClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.consultad1Click(Sender: TObject);
begin
  bconsulta_datasusClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.gravard1Click(Sender: TObject);
begin
  bgravar_datasusClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.ecodprodutoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;

  if resultado_pesquisa1 <>'' then
    begin
      frmmodulo.qrproduto.close;
      frmmodulo.qrproduto.sql.clear;
      frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
      frmmodulo.qrproduto.open;
      if frmmodulo.qrproduto.RecordCount > 0 then
        begin
          rxprodutos.Edit;
          rxprodutos.FieldByName('codigo').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          rxprodutos.FieldByName('apresentacao').AsInteger := frmmodulo.qrproduto.fieldbyname('FARMACIA_APRESENTACAO').AsInteger;
          rxprodutos.FieldByName('codbarra').AsString := frmmodulo.qrproduto.fieldbyname('codbarra').AsString;
          rxprodutos.FieldByName('produto').asstring := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          rxprodutos.FieldByName('unidade').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          rxprodutos.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
          rxprodutos.fieldbyname('aliquota').AsFloat := frmmodulo.qrproduto.fieldbyname('aliquota').AsFloat;
          rxprodutos.FieldByName('pv').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').AsFloat;
          rxprodutos.FieldByName('posologia').AsFloat := Round(frmmodulo.qrproduto.fieldbyname('FARMACIA_APRESENTACAO').AsInteger/30);
          rxprodutos.FieldByName('qtde').AsFloat := frmmodulo.qrproduto.fieldbyname('FARMACIA_APRESENTACAO').AsInteger;
          eposologia.setfocus;
        end
        else
        begin
          application.messagebox('Produto n�o cadastrado!','Aviso',mb_ok+mb_iconwarning);
          ecodproduto.setfocus;
        end;
  end;
end;

procedure Tfrmvenda_farma_vidalink.ecodprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 THEN
     BEGIN
          //if rxprodutos_item.State <> dsedit then if rxprodutos_item.State <> dsinsert then exit;

          frmmodulo.qrproduto.Close;
          frmmodulo.qrproduto.sql.clear;
          frmmodulo.qrproduto.sql.add('select * from c000025 where codbarra = '''+ecodproduto.text+'''');
          frmmodulo.qrproduto.open;
          if frmmodulo.qrproduto.RecordCount > 0 then
               begin
                    rxprodutos.FieldByName('codigo').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                    rxprodutos.FieldByName('apresentacao').AsInteger := frmmodulo.qrproduto.fieldbyname('FARMACIA_APRESENTACAO').AsInteger;
                    rxprodutos.FieldByName('codbarra').AsString := frmmodulo.qrproduto.fieldbyname('codbarra').AsString;
                    rxprodutos.FieldByName('produto').asstring := frmmodulo.qrproduto.fieldbyname('produto').asstring;
                    rxprodutos.FieldByName('unidade').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
                    rxprodutos.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
                    rxprodutos.fieldbyname('aliquota').AsFloat := frmmodulo.qrproduto.fieldbyname('aliquota').AsFloat;
                    rxprodutos.FieldByName('pv').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').AsFloat;
                    rxprodutos.FieldByName('posologia').AsFloat := frmmodulo.qrproduto.fieldbyname('FARMACIA_APRESENTACAO').AsInteger/30;
                    eposologia.setfocus;
               end
          else
               begin
                    rxprodutos.FieldByName('codigo').asstring := frmprincipal.zerarcodigo(ecodproduto.Text,6);
                    if  rxprodutos.FieldByName('codigo').asstring <> '000000' then
                         begin
                              frmmodulo.qrproduto.Close;
                              frmmodulo.qrproduto.sql.clear;
                              frmmodulo.qrproduto.sql.add('select * from c000025 where codIGO = '''+rxprodutos.FieldByName('codigo').asstring+'''');
                              frmmodulo.qrproduto.open;
                              if frmmodulo.qrproduto.RecordCount > 0 then
                                   begin
                                        rxprodutos.FieldByName('codigo').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                                        rxprodutos.FieldByName('apresentacao').AsInteger := frmmodulo.qrproduto.fieldbyname('FARMACIA_APRESENTACAO').AsInteger;
                                        rxprodutos.FieldByName('codbarra').AsString := frmmodulo.qrproduto.fieldbyname('codbarra').AsString;
                                        rxprodutos.FieldByName('produto').asstring := frmmodulo.qrproduto.fieldbyname('produto').asstring;
                                        rxprodutos.FieldByName('unidade').asstring := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
                                        rxprodutos.FieldByName('cst').asstring := frmmodulo.qrproduto.fieldbyname('cst').asstring;
                                        rxprodutos.fieldbyname('aliquota').AsFloat := frmmodulo.qrproduto.fieldbyname('aliquota').AsFloat;
                                        rxprodutos.FieldByName('pv').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').AsFloat;
                                        rxprodutos.FieldByName('posologia').AsFloat := frmmodulo.qrproduto.fieldbyname('FARMACIA_APRESENTACAO').AsInteger/30;
                                        eposologia.setfocus;

                                   end
                              else
                                   begin
                                        application.messagebox('Produto n�o cadastrado!','Aviso',mb_ok+mb_iconwarning);
                                        ecodprodutoButtonClick(frmvenda_farma_vidalink);
                                   end;
                         end
                    else
                         begin
                              ecodprodutoButtonClick(frmvenda_farma_vidalink);
                         end;
                    end;
  end;
end;

procedure Tfrmvenda_farma_vidalink.bexclui_itemClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Produto',4) then
    Rxprodutos.Delete
  else
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);

end;

procedure Tfrmvenda_farma_vidalink.eunitarioExit(Sender: TObject);
begin
  bgrava_item.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.binclui_itemClick(Sender: TObject);
begin
  pprodutos.Enabled := true;
  rxprodutos.Append;
  ecodproduto.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.bgrava_itemClick(Sender: TObject);
begin
  if eapresentacao.Value = 0 then
    begin
      application.messagebox('Apresenta��o n�o informada, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      eapresentacao.Enabled := true;
      eapresentacao.SetFocus;
      exit;
    end;
  Rxprodutos.Post;
  pprodutos.Enabled := false;
  binclui_item.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.ecpfExit(Sender: TObject);
begin
  frmprincipal.CheckCPF1.Cpf := ecpf.Text;
  if frmprincipal.CheckCPF1.Valido then
    begin
      if pos('-',ecpf.text) = 0 then
        //frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
    end
  else
    begin
      Showmessage('CPF Inv�lido!');
      ecpf.SetFocus;
      exit;
    end;
  if trim(ecpf.Text) = '' then
    begin
      application.messagebox('CPF Inv�lido, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      ecpf.SetFocus;
    end;
end;

procedure Tfrmvenda_farma_vidalink.bcancela_itemClick(Sender: TObject);
begin
  Rxprodutos.Cancel;
  pprodutos.Enabled := false;

  binclui_item.Enabled := true;
  bexclui_item.Enabled := true;

  binclui_item.SetFocus;

end;

procedure Tfrmvenda_farma_vidalink.bconsulta_itensClick(Sender: TObject);

begin

{
  qrautorizacao.close;
  qrautorizacao.sql.clear;
  qrautorizacao.SQL.add('select * from FARMACIA_AUTORIZACAO where CODCONVENIO = 1');
  qrautorizacao.SQL.add('ORDER BY solicitacao');
  qrautorizacao.Open;
}
  qrautorizacao.Last;
  esolicitacao.Text := frmPrincipal.zerarcodigo(inttostr(qrautorizacaoSOLICITACAO.AsInteger+1),6);

  {
  ecpf.Text := '00106409166';
  ecrm.Text := '21113';
  }


  ecpf.SetFocus;

  //esolicitacao.SetFocus;

end;

procedure Tfrmvenda_farma_vidalink.bpre_autorizacaoClick(Sender: TObject);
var
  txt : textfile;
  x,i, linhas : integer;
  vdinheiro,vconvenio : double;

  login,senha,data,entrada : string;
  solicitacao,cnpj,cpf,crm,uf,emissao : string;
  ean,qtde_solicitada,preco,qtde_prescrita : string;

  qtde_autorizada,valor_total_MS,valor_total_PACIENTE : string;
  retorno_datasus_medicamento : string;

begin

  vopcao := 1;
  if esolicitacao.Text = '' then
    begin
      bconsulta_itensClick(frmvenda_farma_vidalink);
      exit;
    end;
  Timer_datasus.Enabled := false;

  eretorno_datasus.Text := '';
  epaciente.Text := '';
  eautorizacao_datasus.Text := '';
  bgravar_datasus.Enabled := true;

  if esolicitacao.Text = '' then
  begin
    application.messagebox('N�o Foi Informado o C�digo de Solicita��o de Medicamentos, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
    bconsulta_datasus.setfocus;
    exit;
  end;

  //  memo1.text := '';


  // Registro Tipo 01 - Login da Farm�cia
  // login := '45585655'; //marquinhos
  // login := '48789765'; // bitshop

  login := trim(frmmodulo.qrconfigFARMACIA_LOGIN.AsString);

  // Registro Tipo 02 - Senha da Farmacia
  // senha := '81372940'; //marquinhos

  //senha := '35226219'; // bitshop

  senha := trim(Frmprincipal.Cript('D',frmmodulo.qrconfig.fieldbyname('FARMACIA_SENHA').asstring));

  // Registro Tipo 03 - Dados do Estabelecimento e Paciente - Pr�-Autoriza��o
  solicitacao := frmPrincipal.zerarcodigo(esolicitacao.Text,6); // Codigo da Solicita��o Gerada pelo Estabelecimento (6)

  //cnpj := frmPrincipal.somenteNumero('90.948.837/0001-50');
  cnpj := frmPrincipal.somenteNumero(frmmodulo.qrFilialCNPJ.AsString); // CNPJ do Estabelecimento (14)

  //cnpj := '90948837000150'; bitshop

  cpf := frmPrincipal.somenteNumero(ecpf.Text); // CPF do participante (11)

  //crm := '21113'; // CRM do Prescritor numero (6)
  crm := ecrm.Text; // CRM do Prescritor numero (6)

 // uf := 'RS';
  uf := euf.Text; // Unidade Federativa do Prescritor (2)

  emissao := dfpprescricao.Text; // Data de Emiss�o da Prescricao (10) (dd/mm/aaaa)

  while length(solicitacao) < 6  do solicitacao := solicitacao+' ';
  while length(cnpj)        < 14 do cnpj        := cnpj+' ';
  while length(cpf)         < 11 do cpf         := cpf+' ';
  while length(crm)         < 6  do crm         := crm+' ';
  while length(uf)          < 2  do uf          := uf+' ';
  while length(emissao)     < 10 do emissao     := emissao+' ';

  // Registro Tipo 04 - Dados dos Medicamentos - Pr�-Autoriza��o
  ean := ''; // C�d. de barras (EAN) da apresenta��o do medicamento a ser dispensado (13)
  qtde_solicitada := ''; // Quantidade Solicitada (em comprimidos) (05) (3 inteiros e 2 dec - zeros a esq.)
  preco := ''; // Preco de Venda da Apresenta��o (15) (13 inteiros e 2 dec - zeros a esq.)
  qtde_prescrita := ''; // Quantidade diaria prescrita (Posologia) (05) (3 inteiros e 2 dec - zeros a esq.)

  Memo1.Text := '';
  Memo1.Lines.Add('01'+login);
  Memo1.Lines.Add('02'+senha);
  Memo1.Lines.Add('03'+solicitacao+cnpj+cpf+crm+uf+emissao);

  frmvenda_farma_vidalink.rxprodutos.Open;
  frmvenda_farma_vidalink.rxprodutos.First;
  while not frmvenda_farma_vidalink.rxprodutos.Eof do begin
    ean := frmvenda_farma_vidalink.rxprodutoscodbarra.AsString;
    qtde_solicitada := frmPrincipal.zerarcodigo(FRMPRINCIPAL.somenteNumero(formatcurr('0.00', frmvenda_farma_vidalink.rxprodutos.FieldByName('qtde').AsFloat)),5);
    preco := frmPrincipal.zerarcodigo(FRMPRINCIPAL.somenteNumero(formatcurr('0.00', frmvenda_farma_vidalink.rxprodutos.FieldByName('pv').AsFloat)),15);
    qtde_prescrita := frmPrincipal.zerarcodigo(FRMPRINCIPAL.somenteNumero(formatcurr('0.00', frmvenda_farma_vidalink.rxprodutos.FieldByName('posologia').AsFloat)),5);

    while length(ean) < 13 do ean := ean+' ';
    Memo1.Lines.Add('04'+ean+qtde_solicitada+preco+qtde_prescrita);
    frmvenda_farma_vidalink.rxprodutos.Next;
  end;

  Memo1.Lines.SaveToFile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV.TXT');

  frmPrincipal.vcontador := 0;

  frmmensagem := tfrmmensagem.create(self);
  frmmensagem.show;
  Application.ProcessMessages;

  while true do

  begin

  frmPrincipal.vcontador   := frmPrincipal.vcontador + 1;
  frmmensagem.VrNum1.Value := frmPrincipal.vcontador;

  If (fileexists(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT')) then
    begin

      frmmensagem.Destroy;

      Memo1.Text := '';
      Memo1.Lines.LoadFromFile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT');
      Memo1.Lines[0];

      for x:= 0 to memo1.lines.count-1 do
        begin
          if copy(Memo1.Lines[x],1,2) = '01' then
            begin
              eretorno_datasus.Text := copy(Memo1.Lines[x],6,200);
              epaciente.Text := copy(Memo1.Lines[x],206,100);

              //frmvenda_farma_vidalink.mLog.Text := '';
              frmvenda_farma_vidalink.mLog.Lines.Add(pchar(trim(eretorno_datasus.Text)));
                
              eautorizacao_datasus.Text := copy(Memo1.Lines[x],306,19);

              if ( copy(Memo1.Lines[x],3,3) <> '00S' ) and ( copy(Memo1.Lines[x],3,3) <> '01S' ) then
                begin
                  bgravar_datasus.Enabled := false;
                  //bpre_autorizacao.SetFocus;
                  //exit;
                end;
            end;

          if copy(Memo1.Lines[x],1,2) = '02' then
            begin
              ean := copy(Memo1.Lines[x],3,13);
              qtde_autorizada := copy(Memo1.Lines[x],16,5);
              valor_total_MS := copy(Memo1.Lines[x],21,15);
              valor_total_PACIENTE := copy(Memo1.Lines[x],36,15);
              //retorno_datasus_medicamento := copy(Memo1.Lines[x],51,200);
              retorno_datasus_medicamento := copy(Memo1.Lines[x],58,200);

              //frmvenda_farma_vidalink.mLog.Text := '';
              frmvenda_farma_vidalink.mLog.Lines.Add(pchar(trim(eretorno_datasus.Text)));

              //showmessage(ean+ ' '+retorno_datasus_medicamento);

              if rxprodutos.Locate('codbarra',ean,[loCaseInsensitive]) then
                begin
                  rxprodutos.Edit;
                  if copy(Memo1.Lines[x],51,3) = '00S' then
                    begin
                      rxprodutosqtde_autorizado.asfloat := strtofloat(copy(qtde_autorizada,1,3)+','+copy(qtde_autorizada,4,2));
                      rxprodutospc_vista.asfloat := strtofloat(copy(valor_total_MS,1,13)+','+copy(valor_total_MS,14,2));  // Valor Total da Parcela do Ministerio da Saude
                      rxprodutospmc.asfloat := strtofloat(copy(valor_total_PACIENTE,1,13)+','+copy(valor_total_PACIENTE,14,2));
                      rxprodutospv.asfloat := rxprodutospc_vista.asfloat+rxprodutospmc.asfloat;
                    end
                  else
                    begin
                      rxprodutosqtde_autorizado.asfloat := 0;
                      rxprodutospc_vista.asfloat := 0;
                      rxprodutospmc.asfloat := 0;
                      //rxprodutospv.asfloat := 0;
                    end;

                  rxprodutosobs.AsString := retorno_datasus_medicamento;

                  vdinheiro := vdinheiro + rxprodutospmc.AsFloat;
                  vconvenio := vconvenio + rxprodutospc_vista.AsFloat;
                end;
              if ( rxprodutos.State = dsinsert ) or ( rxprodutos.State = dsedit ) then
                rxprodutos.Post;
            end;
        end;

      Application.ProcessMessages;

      Timer_datasus.Enabled := true;

        edinheiro.Value := vdinheiro;
        econvenio.Value := vconvenio;

        pmovimentacao.Enabled := false;
        if bgravar_datasus.Enabled = true then
          bgravar_datasus.SetFocus;
        exit;
    end;

  if frmPrincipal.vcontador > 120000 then
    begin
      application.messagebox('Tempo de Acesso Esgotado, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      frmmensagem.Destroy;
      Timer_datasus.Enabled := true;
      exit;
    end;

  end;
end;

procedure Tfrmvenda_farma_vidalink.DBEdit9Exit(Sender: TObject);
begin
   bgravacaminho.SetFocus;
end;


procedure Tfrmvenda_farma_vidalink.bconsulta_datasusClick(Sender: TObject);
begin
  mLog.Text := '';
  
  pmovimentacao.Enabled := true;
  with rxprodutos do
    while RecordCount > 0 do
      Delete;

  esolicitacao.Text := '';
  ecnpj.Text := '';
  ecpf.Text := '';
  ecrm.Text := '';
  euf.Text := '';

  //ecodretorno_datasus.Text := '';
  eretorno_datasus.Text := '';
  epaciente.Text := '';
  eautorizacao_datasus.Text := '';

  bgravar_datasus.Enabled := true;

  binclui_itemClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.bgravar_datasusClick(Sender: TObject);
begin
  if eautorizacao_datasus.Text <> '' then
    begin
      frmvenda_fechamento_datasus := tfrmvenda_fechamento_datasus.create(self);
      frmvenda_fechamento_datasus.lcpf.Caption := copy(frmPrincipal.somenteNumero(ecpf.Text),1,3)+'.'+
                                                  copy(frmPrincipal.somenteNumero(ecpf.Text),4,3)+'.'+
                                                  copy(frmPrincipal.somenteNumero(ecpf.Text),7,3)+'.'+
                                                  copy(frmPrincipal.somenteNumero(ecpf.Text),10,2);
      frmvenda_fechamento_datasus.showmodal;
    end
  else
    begin
      application.messagebox('Pr�-Autoriza��o Inv�lida, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      bconsulta_datasus.setfocus;
    end;
end;

procedure Tfrmvenda_farma_vidalink.DBEdit14Exit(Sender: TObject);
begin
  DBEdit1.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.DBEdit5Exit(Sender: TObject);
begin
  dbedit3.SetFocus;
end;


procedure Tfrmvenda_farma_vidalink.bestornoClick(Sender: TObject);
var
  txt : textfile;
  x,i : integer;
  vdinheiro,vconvenio : double;

  login,senha,data,entrada : string;
  autorizacao,cnpj : string;
  ean,qtde_devolvida : string;

  qtde_autorizada,valor_total_MS,valor_total_PACIENTE : string;
  retorno_datasus_medicamento : string;
begin

  vopcao := 2;

  if qrautorizacao.Locate('autorizacao',qrautorizaAUTORIZACAO.AsString,[loCaseInsensitive]) then
    begin
      if copy(qrautorizacao.FieldByName('obs').AsString,1,7) = 'ESTORNO' then
        begin
          application.messagebox('Autoriza��o j� Estornada , Verifique!!','Aten��o!',mb_ok+mb_iconwarning);
          bestorno.SetFocus;
          exit;
        end;
    end;

  if application.messagebox(PCHAR('Deseja estornar a Autorizac�o de N�: ' +qrautorizaAUTORIZACAO.AsString+' ?'),'Aviso',mb_yesno+MB_ICONQUESTION) = idyes then
    begin

      Timer_datasus.Enabled := false;

      rxprodutos.Open;
      with rxprodutos do
        while RecordCount > 0 do
          Delete;

      qrestorno.close;
      qrestorno.sql.clear;
      qrestorno.SQL.add('select data,codcliente,codproduto,codbarra,cupom_numero,qtde from c000032');
      qrestorno.SQL.add('where cupom_numero = '''+ qrautoriza.fieldbyname('cupom').AsString+'''');
      qrestorno.SQL.add('and codcliente = '''+ qrautoriza.fieldbyname('codcliente').AsString+'''');
      qrestorno.SQL.add('and data = :vdat');
      qrestorno.Params.ParamByName('vdat').AsDateTime := qrautoriza.fieldbyname('data').AsDateTime;
      qrestorno.Open;

      if qrestorno.RecordCount = 0 then
        begin
          application.messagebox('Dados N�o Encontrados na Tabela de Movimenta��o, Verifique!!','Aten��o!',mb_ok+mb_iconwarning);
          bestorno.SetFocus;
          exit;
        end;

      while not qrestorno.Eof do begin

//        showmessage(floattostr(qrestorno.fieldbyname('qtde').AsFloat)+ ' '+floattostr(qrestorno.fieldbyname('apresentacao').AsFloat));

        rxprodutos.Insert;
        rxprodutoscodigo.AsString := qrestorno.fieldbyname('codproduto').asstring;
        rxprodutoscodbarra.AsString := qrestorno.fieldbyname('codbarra').asstring;
        rxprodutosqtde.AsFloat := qrestorno.fieldbyname('qtde').AsFloat*qrestorno.fieldbyname('apresentacao').AsFloat;
        rxprodutos.Post;
        qrestorno.Next;
      end;

      memo1.text := '';

      login := trim(frmmodulo.qrconfigFARMACIA_LOGIN.AsString);

      // Registro Tipo 02 - Senha da Farmacia
      senha := trim(Frmprincipal.Cript('D',frmmodulo.qrconfig.fieldbyname('FARMACIA_SENHA').asstring));

      // Registro Tipo 03 - Dados do Estabelecimento e Paciente - Pr�-Autoriza��o
      autorizacao := qrautorizaAUTORIZACAO.AsString; // C�digo da Autoriza��o gerado pelo DATASUS (19)

      //cnpj := frmPrincipal.somenteNumero('90.948.837/0001-50');
      cnpj := frmPrincipal.somenteNumero(frmmodulo.qrFilialCNPJ.AsString); // CNPJ do Estabelecimento (14)

      while length(autorizacao) < 19  do autorizacao := autorizacao+' ';
      while length(cnpj)        < 14 do cnpj        := cnpj+' ';

      // Registro Tipo 04 - Dados dos Medicamentos - Pr�-Autoriza��o
      ean := ''; // C�d. de barras (EAN) da apresenta��o do medicamento a ser dispensado (13)
      qtde_devolvida := ''; // Quantidade Devolvida em comprimidos (5) (3 int. e 2 dec. - zeros a esq.)

      Memo1.Text := '';
      Memo1.Lines.Add('01'+login);
      Memo1.Lines.Add('02'+senha);
      Memo1.Lines.Add('06'+cnpj+autorizacao);

      rxprodutos.First;
      while not rxprodutos.Eof do begin
        ean := rxprodutoscodbarra.AsString;
        qtde_devolvida := frmPrincipal.zerarcodigo(FRMPRINCIPAL.somenteNumero(formatcurr('0.00', rxprodutos.FieldByName('qtde').AsFloat)),5);
        Application.ProcessMessages;
        while length(ean) < 13 do ean := ean+' ';
          Memo1.Lines.Add('07'+ean+qtde_devolvida);
        rxprodutos.Next;
        Application.ProcessMessages;
      end;


      Memo1.Lines.SaveToFile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV.TXT');

      frmPrincipal.vcontador := 0;

      frmmensagem := tfrmmensagem.create(self);
      frmmensagem.show;
      Application.ProcessMessages;

      while true do begin

      frmPrincipal.vcontador   := frmPrincipal.vcontador + 1;
      frmmensagem.VrNum1.Value := frmPrincipal.vcontador;

      If (fileexists(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT')) then
        begin

          frmmensagem.Destroy;

          Memo1.Text := '';
          Memo2.Text := '';
          Memo1.Lines.LoadFromFile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT');
          Memo1.Lines[0];

          for x:= 0 to memo1.lines.count-1 do
            begin
              if copy(Memo1.Lines[x],1,2) = '05' then
                begin
                  //ecodretorno_datasus.Text := copy(entrada,3,3);
                  eretorno_datasus.Text := copy(Memo1.Lines[x],3,200);
                  epaciente.Text := copy(Memo1.Lines[x],206,100);
                  eautorizacao_datasus.Text := copy(Memo1.Lines[x],306,19);
                  Memo2.Lines.Add(trim(copy(eretorno_datasus.Text,4,200)));
                end
              else
                begin
                  ean := copy(Memo1.Lines[x],3,13);
                  retorno_datasus_medicamento := copy(Memo1.Lines[x],16,200);
                  Memo2.Lines.Add(trim(copy(Memo1.Lines[x],3,14)+' - ' + copy(Memo1.Lines[x],23,200)));

                  if rxprodutos.Locate('codbarra',ean,[loCaseInsensitive]) then
                    begin
                      //rxprodutos.Open;
                      rxprodutos.Edit;
                      rxprodutosobs.AsString := retorno_datasus_medicamento;
                    end;

                end;

              //frmvenda_farma_vidalink.mLog.Text := '';
              frmvenda_farma_vidalink.mLog.Lines.Add(pchar(trim(eretorno_datasus.Text)));

            end;

            if ( rxprodutos.State = dsinsert ) or ( rxprodutos.State = dsedit ) then
              rxprodutos.Post;

            pmovimentacao.Enabled := false;

            if copy(eretorno_datasus.Text,1,3) = '02E' then
              begin
                Application.MessageBox(pchar(trim(Memo2.Text)),'Aten��o',mb_ok+MB_ICONWARNING);
                eretorno_datasus.Text := '';
              end
            else
              begin
                if qrautorizacao.Locate('autorizacao',autorizacao,[loCaseInsensitive]) then
                  begin
                    qrautorizacao.Edit;
                    qrautorizacao.FieldByName('obs').AsString := 'ESTORNO - '+Copy(eretorno_datasus.Text,4,100);
                    qrautorizacao.Post;
                  end;
                  frmmodulo.Conexao.Commit;
                  Application.MessageBox('Estorno Efetuado com sucesso...','Aten��o',mb_ok+MB_ICONWARNING);
              end;

          //frmvenda_farma_vidalink.mLog.Text := '';
          frmvenda_farma_vidalink.mLog.Lines.Add(pchar(trim(eretorno_datasus.Text)));

            Timer_datasus.Enabled := true;
            qrautoriza.Refresh;
            exit;
        end;

        if frmPrincipal.vcontador > 120000 then
          begin
            application.messagebox('Tempo de Acesso Esgotado, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
            frmmensagem.Destroy;
            Timer_datasus.Enabled := true;
            exit;
          end;

    end;
  end;

end;

procedure Tfrmvenda_farma_vidalink.estorno1Click(Sender: TObject);
begin
  bestornoClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.ecodprodutoExit(Sender: TObject);
begin
  if ecodproduto.Text = '' then
    begin
      //rxprodutos.Cancel;
      bconsulta_itens.SetFocus;
    end;
end;

procedure Tfrmvenda_farma_vidalink.eposologiaExit(Sender: TObject);
begin
  if rxprodutos.FieldByName('posologia').AsFloat <= 0 then
    begin
      Application.MessageBox('Quantidade Di�ria n�o informada, Verifique!','Aten��o',mb_ok+MB_ICONWARNING);
      eposologia.SetFocus;
    end;
end;

procedure Tfrmvenda_farma_vidalink.eqtdeExit(Sender: TObject);
begin
  if rxprodutos.FieldByName('qtde').AsFloat <= 0 then
    begin
      Application.MessageBox('Quantidade Solicitada n�o informada, Verifique!','Aten��o',mb_ok+MB_ICONWARNING);
      eqtde.SetFocus;
      exit;
    end;
  bgrava_item.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.Timer_datasusTimer(Sender: TObject);
var
  varq_origem , varq_destino : string;
  varquivo : string;
begin

  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV.TXT') then
    begin

      varq_origem := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV.TXT';

      if vopcao = 1 then
        varq_destino := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV_'+esolicitacao.Text+'.001'
      else if vopcao = 2 then
        varq_destino := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_EST_'+qrautorizacaoSOLICITACAO.AsString+'.001'
      else if vopcao = 3 then
        varq_destino := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_AUT_'+qrautorizacaoSOLICITACAO.AsString+'.001'
      else
        varq_destino := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_OUT_'+qrautorizacaoSOLICITACAO.AsString+'.001';

      if fileexists(varq_destino) then deletefile(varq_destino);

      if not CopyFile(PChar(varq_origem), PChar(varq_destino), true) then
        ShowMessage('Erro ao copiar ' + varq_origem + ' para ' + varq_destino);

      deletefile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_ENV.TXT');
    end;
  if fileexists(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT') then
    begin
      varq_origem := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT';
      if vopcao = 1 then
        varq_destino := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ_'+esolicitacao.Text+'.001'
      ELSE if vopcao = 3 then
        varq_destino := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_RAUT_'+esolicitacao.Text+'.001'
      else
        varq_destino := Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REST_'+qrautorizacaoSOLICITACAO.AsString+'.001';

      if fileexists(varq_destino) then deletefile(varq_destino);

      if not CopyFile(PChar(varq_origem), PChar(varq_destino), true) then
        ShowMessage('Erro ao copiar ' + varq_origem + ' para ' + varq_destino);
      deletefile(Trim(frmmodulo.qrconfigFARMACIA_ENVIO_RESPOSTA.AsString)+'FP_REQ.TXT');
    end;
end;

procedure Tfrmvenda_farma_vidalink.dfpprescricaoExit(Sender: TObject);
begin
  bpre_autorizacao.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.ecrmExit(Sender: TObject);
begin
  if trim(ecrm.Text) = '' then
    begin
      application.messagebox('CRM Inv�lido, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      ecrm.SetFocus;
    end;

end;

procedure Tfrmvenda_farma_vidalink.eufExit(Sender: TObject);
begin
  if trim(euf.Text) = '' then
    begin
      application.messagebox('UF Inv�lido, verifique!!','Aten��o!',mb_ok+mb_iconwarning);
      euf.SetFocus;
    end;
end;

procedure Tfrmvenda_farma_vidalink.eapresentacaoExit(Sender: TObject);
begin
  eapresentacao.Enabled := false;
  bgrava_itemClick(frmvenda_farma_vidalink);
end;

procedure Tfrmvenda_farma_vidalink.eautorizacao_datasus2Exit(
  Sender: TObject);
begin
  bestorno.SetFocus;
end;

procedure Tfrmvenda_farma_vidalink.eautorizacao_datasus2Enter(
  Sender: TObject);
begin
  eautorizacao_datasus.Text := '952.296.743.652.808';
end;

procedure Tfrmvenda_farma_vidalink.qrautorizaCalcFields(DataSet: TDataSet);
begin


  if copy(qrautoriza.fieldbyname('obs').asstring,1,7) = 'ESTORNO' then
    begin
      //ShowMessage('ESTORNADO');
      qrautoriza.FieldByName('chave').AsInteger := 1
    end
  else
    begin
      //ShowMessage('nao ESTORNADO');

      qrautoriza.FieldByName('chave').AsInteger := 0;
    end;
end;

procedure Tfrmvenda_farma_vidalink.tab_principalChange(Sender: TObject);
begin
  if tab_principal.ActivePageIndex = 3 then
    begin
      bfiltraClick(frmvenda_farma_vidalink);
    end;
end;

procedure Tfrmvenda_farma_vidalink.FormCreate(Sender: TObject);
begin
  ArqTmp := TMemoryStream.Create;

end;

procedure Tfrmvenda_farma_vidalink.bincluirClick(Sender: TObject);
begin
  showmessage('Op��o ainda n�o implementada...');
end;

procedure Tfrmvenda_farma_vidalink.balterarClick(Sender: TObject);
begin
  showmessage('Op��o ainda n�o implementada...');
end;

procedure Tfrmvenda_farma_vidalink.ImprimeEstorno(Sender: TObject);
VAR
  I : INTEGER;
  DATA, CUPOM, DOCUMENTO, VALOR : STRING;
begin

  ecf_recebimento_nao_fiscal(ecf_modelo,'03',qrautorizaPV.AsFloat,FDINHEIRO);

  ecf_relatorio_gerencial(ecf_modelo,'         E S T O R N O   C O N V � N I O        ');
  ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
  ecf_relatorio_gerencial(ecf_modelo,'Cliente: '+copy(qrautorizacliente.Asstring,1,38));
  ecf_relatorio_gerencial(ecf_modelo,'CPF....: '+qrautorizacpf.Asstring);
  ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
  ecf_relatorio_gerencial(ecf_modelo,'CUPOM FISCAL        : '+ qrautorizacupom.Asstring);
  ecf_relatorio_gerencial(ecf_modelo,'AUTORIZA��O DATASUS : '+ qrautorizaautorizacao.Asstring);
  ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
  ecf_relatorio_gerencial(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',qrautorizaPV.AsFloat),9,' ','E'));
  ecf_relatorio_gerencial(ecf_modelo,'CLIENTE / PACIENTE .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',qrautorizaPC_VISTA.AsFloat),9,' ','E'));
  ecf_relatorio_gerencial(ecf_modelo,'DATASUS  ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',qrautorizaREEMBOLSO.AsFloat),9,' ','E'));
  ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------' );
  ecf_relatorio_gerencial(ecf_modelo,'');
  ecf_relatorio_gerencial(ecf_modelo, emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',date)+'.');
  ecf_fecha_relatorio_gerencial(ecf_modelo);

end;


procedure Tfrmvenda_farma_vidalink.BitBtn1Click(Sender: TObject);
begin
  ImprimeEstorno(Self);
end;

procedure Tfrmvenda_farma_vidalink.BitBtn2Click(Sender: TObject);
begin
  ecf_fecha_relatorio_gerencial(ecf_modelo);
end;

end.