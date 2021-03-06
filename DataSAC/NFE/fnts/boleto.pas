unit boleto;

{$IFDEF VER140}
{$DEFINE USAVARIANTS}
{$ENDIF}

{$IFDEF VER150}
{$DEFINE USAVARIANTS}
{$ENDIF}

interface

uses
  Windows, Messages, SysUtils, {$IFDEF USAVARIANTS} Variants,{$ENDIF} ComObj,
  Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, Buttons, Menus, Mask, rxtooledit,
  wwdblook, rxcurredit, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  AdvGlowButton;

type
  Tfrmboleto = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label2: TLabel;
    PVENCIMENTO: TShape;
    Label1: TLabel;
    Label3: TLabel;
    PCEDENTE: TShape;
    PAGENCIA: TShape;
    Label4: TLabel;
    PNOSSO: TShape;
    Label5: TLabel;
    PDATA: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape10: TShape;
    PVALOR: TShape;
    Label8: TLabel;
    PDESCONTO: TShape;
    Label9: TLabel;
    PDEDUCOES: TShape;
    Label10: TLabel;
    PMORA: TShape;
    Label11: TLabel;
    PACRESCIMOS: TShape;
    Label12: TLabel;
    PCOBRADO: TShape;
    Label13: TLabel;
    POBS: TShape;
    Label14: TLabel;
    Label15: TLabel;
    PDOCUMENTO: TShape;
    Label16: TLabel;
    PESP: TShape;
    Label17: TLabel;
    PACEITE: TShape;
    Label18: TLabel;
    Shape21: TShape;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Shape22: TShape;
    Label22: TLabel;
    Label23: TLabel;
    PESPECIE: TShape;
    Label24: TLabel;
    PQTDE: TShape;
    Label25: TLabel;
    ptotal: TShape;
    Label26: TLabel;
    Label27: TLabel;
    PSACADO: TShape;
    Label28: TLabel;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Limpar1: TMenuItem;
    Fechar1: TMenuItem;
    COMBOCONTA: TwwDBLookupCombo;
    EVENCIMENTO: TDateEdit;
    EDATA_DOC: TDateEdit;
    ENUMERO_DOC: TEdit;
    EESPECIE_DOC: TEdit;
    EACEITE: TEdit;
    EESPECIE: TEdit;
    EQTDE: TEdit;
    EVALOR: TEdit;
    RVALOR_DOC: TRxCalcEdit;
    RDESCONTO: TRxCalcEdit;
    ROUTRAS: TRxCalcEdit;
    RMORA: TRxCalcEdit;
    ROUTROS: TRxCalcEdit;
    RVALOR_COBRADO: TRxCalcEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    LBANCO: TLabel;
    LNBANCO: TLabel;
    COMBOCLIENTE: TwwDBLookupCombo;
    EDIT13: TEdit;
    DataSource1: TDataSource;
    LAGENCIA: TLabel;
    Label31: TLabel;
    bimpresso: TButton;
    qrboleto_campo: TZQuery;
    bcobrebem: TBitBtn;
    bfechar: TAdvGlowButton;
    Bevel4: TBevel;
    bimprimir: TAdvGlowButton;
    blimpar: TAdvGlowButton;
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EVENCIMENTOEnter(Sender: TObject);
    procedure COMBOCONTAEnter(Sender: TObject);
    procedure EDATA_DOCEnter(Sender: TObject);
    procedure ENUMERO_DOCEnter(Sender: TObject);
    procedure EESPECIE_DOCEnter(Sender: TObject);
    procedure EACEITEEnter(Sender: TObject);
    procedure EESPECIEEnter(Sender: TObject);
    procedure EQTDEEnter(Sender: TObject);
    procedure EVALOREnter(Sender: TObject);
    procedure RVALOR_DOCEnter(Sender: TObject);
    procedure RDESCONTOEnter(Sender: TObject);
    procedure ROUTRASEnter(Sender: TObject);
    procedure RMORAEnter(Sender: TObject);
    procedure ROUTROSEnter(Sender: TObject);
    procedure RVALOR_COBRADOEnter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure EVENCIMENTOExit(Sender: TObject);
    procedure COMBOCONTAExit(Sender: TObject);
    procedure EDATA_DOCExit(Sender: TObject);
    procedure ENUMERO_DOCExit(Sender: TObject);
    procedure EESPECIE_DOCExit(Sender: TObject);
    procedure EACEITEExit(Sender: TObject);
    procedure EESPECIEExit(Sender: TObject);
    procedure EQTDEExit(Sender: TObject);
    procedure EVALORExit(Sender: TObject);
    procedure RVALOR_DOCExit(Sender: TObject);
    procedure RDESCONTOExit(Sender: TObject);
    procedure ROUTRASExit(Sender: TObject);
    procedure RMORAExit(Sender: TObject);
    procedure ROUTROSExit(Sender: TObject);
    procedure RVALOR_COBRADOExit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure EVENCIMENTOKeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure COMBOCLIENTEEnter(Sender: TObject);
    procedure COMBOCLIENTEExit(Sender: TObject);
    procedure EDIT13Exit(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure EDIT13Enter(Sender: TObject);
    procedure Edit14Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure blimparClick(Sender: TObject);
    procedure EDIT13KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure bimpressoClick(Sender: TObject);
    procedure bcobrebemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmboleto: Tfrmboleto;

implementation

uses modulo, principal, boleto_impressao;

{$R *.dfm}

procedure Tfrmboleto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmboleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmboleto.EVENCIMENTOEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PVENCIMENTO.Brush.Color := $00A0FAF8;
end;

procedure Tfrmboleto.COMBOCONTAEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PCEDENTE.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.EDATA_DOCEnter(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := $00A0FAF8;
  PDATA.Brush.Color := $00A0FAF8;

  IF edata_doc.TEXT = '  /  /    ' THEN edata_doc.Date := DATE;

end;

procedure Tfrmboleto.ENUMERO_DOCEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PDOCUMENTO.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.EESPECIE_DOCEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PESP.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.EACEITEEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PACEITE.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.EESPECIEEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PESPECIE.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.EQTDEEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PQTDE.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.EVALOREnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PTOTAL.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.RVALOR_DOCEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PVALOR.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.RDESCONTOEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PDESCONTO.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.ROUTRASEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PDEDUCOES.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.RMORAEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PMORA.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.ROUTROSEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PACRESCIMOS.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.RVALOR_COBRADOEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  PCOBRADO.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.Edit7Enter(Sender: TObject);
begin
  edit7.COLOR := $00A0FAF8;
  edit8.color := $00A0FAF8;
  edit9.color := $00A0FAF8;
  edit10.color := $00A0FAF8;
  edit11.color := $00A0FAF8;
  edit12.color := $00A0FAF8;


  POBS.Brush.Color := $00A0FAF8;

end;

procedure Tfrmboleto.EVENCIMENTOExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00DDE4F7;
  PVENCIMENTO.Brush.Color := $00DDE4F7;

end;

procedure Tfrmboleto.COMBOCONTAExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
  PCEDENTE.Brush.Color := CLWINDOW;
  IF COMBOCONTA.TEXT <> '' THEN
  BEGIN
    IF FRMMODULO.qrconfig_cobrebem.Locate('descricao',COMBOCONTA.TEXT,[loCaseInsensitive]) THEN
    BEGIN
      LAGENCIA.Caption := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('AGENCIA').ASSTRING+'/'+FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('CODIGO_CEDENTE').ASSTRING;
      LBANCO.Caption := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('BANCO').ASSTRING;
      LNBANCO.Caption := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('codigo_banco').ASSTRING;

      EDIT7.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_1').ASSTRING;
      EDIT8.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_2').ASSTRING;
      EDIT9.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_3').ASSTRING;



    END
    ELSE
    BEGIN
      APPLICATION.MESSAGEBOX('Cedente/Conta n�o localizado!','Aten��o',mb_ok+MB_ICONERROR);
      comboconta.setfocus;

    END;
  END;


end;

procedure Tfrmboleto.EDATA_DOCExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PDATA.Brush.Color := CLWINDOW;

end;

procedure Tfrmboleto.ENUMERO_DOCExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PDOCUMENTO.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.EESPECIE_DOCExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PESP.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.EACEITEExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PACEITE.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.EESPECIEExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PESPECIE.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.EQTDEExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PQTDE.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.EVALORExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PTOTAL.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.RVALOR_DOCExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := $00DDE4F7;
  PVALOR.Brush.Color := $00DDE4F7;
end;

procedure Tfrmboleto.RDESCONTOExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PDESCONTO.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.ROUTRASExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PDEDUCOES.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.RMORAExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PMORA.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.ROUTROSExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PACRESCIMOS.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.RVALOR_COBRADOExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
  PCOBRADO.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.Edit7Exit(Sender: TObject);
begin
  edit7.COLOR := CLWINDOW;
  edit8.color := CLWINDOW;
  edit9.color := CLWINDOW;
  edit10.color := CLWINDOW;
  edit11.color := CLWINDOW;
  edit12.color := CLWINDOW;

  POBS.Brush.Color := CLWINDOW;
end;

procedure Tfrmboleto.EVENCIMENTOKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmboleto.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 then bimprimir.SetFocus;
end;

procedure Tfrmboleto.COMBOCLIENTEEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  EDIT13.Color := $00A0FAF8;
//  EDIT14.Color := $00A0FAF8;

  Psacado.Brush.Color := $00A0FAF8;
end;

procedure Tfrmboleto.COMBOCLIENTEExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLwindow;
  EDIT13.Color := CLWINDOW;
//  EDIT14.Color := CLWINDOW;

  Psacado.Brush.Color := CLwindow;

  IF COMBOCLIENTE.TEXT <> '' THEN
  BEGIN
    IF FRMMODULO.QRCLIENTE.Locate('NOME',COMBOCLIENTE.TEXT,[loCaseInsensitive]) THEN
    BEGIN
      COMBOCLIENTE.Text := frmmodulo.qrcliente.fieldbyname('NOME').asstring+'       CPF/CNPJ: '+
                           frmmodulo.qrcliente.fieldbyname('CPF').asstring;
      EDIT13.Text := frmmodulo.qrcliente.fieldbyname('endereco').asstring+', '+
                            frmmodulo.qrcliente.fieldbyname('Bairro').asstring+' - '+
                            frmmodulo.qrcliente.fieldbyname('Cidade').asstring+'/'+
                            frmmodulo.qrcliente.fieldbyname('UF').asstring+'   CEP: '+
                            frmmodulo.qrcliente.fieldbyname('CEP').asstring;



    END
    ELSE
    BEGIN
      APPLICATION.MESSAGEBOX('Cliente/Sacado n�o localizado!','Aten��o',mb_ok+MB_ICONERROR);
      comboCLIENTE.setfocus;

    END;
  END;




end;

procedure Tfrmboleto.EDIT13Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLwindow;
  Psacado.Brush.Color := CLwindow;
  COMBOCLIENTE.Color := CLWINDOW;
//  EDIT14.Color := CLWINDOW;


end;

procedure Tfrmboleto.Edit14Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLwindow;
  Psacado.Brush.Color := CLwindow;
  COMBOCLIENTE.Color := CLWINDOW;
  EDIT13.Color := CLWINDOW;

end;

procedure Tfrmboleto.EDIT13Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  Psacado.Brush.Color := $00A0FAF8;
  COMBOCLIENTE.Color := $00A0FAF8;
//  EDIT14.Color := $00A0FAF8;

end;

procedure Tfrmboleto.Edit14Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  Psacado.Brush.Color := $00A0FAF8;
    COMBOCLIENTE.Color := $00A0FAF8;
  EDIT13.Color := $00A0FAF8;
end;

procedure Tfrmboleto.FormShow(Sender: TObject);
begin



  frmmodulo.qrcontacorrente.close;
  frmmodulo.qrcontacorrente.SQL.clear;
  frmmodulo.qrcontacorrente.sql.add('select * from c000041 order by TITULAR');
  frmmodulo.qrcontacorrente.Open;


  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.sql.add('select * from c000013 order by banco');
  frmmodulo.qrbanco.Open;



  frmmodulo.qrCLIENTE.close;
  frmmodulo.qrCLIENTE.SQL.clear;
  frmmodulo.qrCLIENTE.sql.add('select * from c000007 order by NOME');
  frmmodulo.qrCLIENTE.Open;


  frmmodulo.qrconfig_cobrebem.close;
  frmmodulo.qrconfig_cobrebem.SQL.clear;
  frmmodulo.qrconfig_cobrebem.sql.add('select * from c000064 order by descricao');
  frmmodulo.qrconfig_cobrebem.Open;




end;

procedure Tfrmboleto.blimparClick(Sender: TObject);
begin
  frmprincipal.limpaedit(frmboleto);
end;

procedure Tfrmboleto.EDIT13KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BIMPRIMIR.SETFOCUS;
end;

procedure Tfrmboleto.bimprimirClick(Sender: TObject);
begin
   IF FRMMODULO.qrconfig_cobrebem.FieldByName('TIPO').ASINTEGER = 1 THEN // BOLETO COBREBEM
   BEGIN
     bcobrebemclick(frmboleto);
   END
   ELSE
   BEGIN // BOLETO NORMAL

      bimpressoClick(frmboleto);

   END;
end;

procedure Tfrmboleto.bimpressoClick(Sender: TObject);
var f : textfile;
vencimento, data_doc, numero_doc, especie_doc, aceite, especie, qtde, valor,
valor_doc, desconto, outras, mora, outros, valor_cobrado, inst1, inst2, inst3, inst4, inst5, inst6,
cedente, cedente_ender : string;
LINHAS : ARRAY [1..50] OF STRING;
TEXTO : STRING;

I,x, Y : INTEGER;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20


  assignfile(f,impressora_venda);
  rewrite(f);


    VENCIMENTO := FRMPRINCIPAL.texto_justifica(EVENCIMENTO.Text,10,' ','E');
    DATA_DOC   := FRMPRINCIPAL.texto_justifica(EDATA_DOC.Text,10,' ','E');
    NUMERO_DOC := FRMPRINCIPAL.texto_justifica(eNUMERO_DOC.Text,20,' ','E');
    ESPECIE_DOC:= FRMPRINCIPAL.texto_justifica(eESPECIE_DOC.Text,7,' ','D');
    ACEITE     := FRMPRINCIPAL.texto_justifica(EACEITE.Text,6,' ','D');
    ESPECIE    := FRMPRINCIPAL.texto_justifica(EESPECIE.Text,10,' ','D');
    QTDE       := FRMPRINCIPAL.texto_justifica(EQTDE.Text,10,' ','E');
    VALOR      := FRMPRINCIPAL.texto_justifica(EVALOR.Text,10,' ','E');
    VALOR_DOC  := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',RVALOR_DOC.VALUE),10,' ','E');
    IF RDESCONTO.VALUE <> 0 THEN DESCONTO := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',RDESCONTO.VALUE),10,' ','E') ELSE
                                 DESCONTO := FRMPRINCIPAL.texto_justifica('',10,' ','E');

    IF ROUTRAS.VALUE <> 0 THEN OUTRAS := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',ROUTRAS.VALUE),10,' ','E') ELSE
                               OUTRAS := FRMPRINCIPAL.texto_justifica('',10,' ','E');


    IF RMORA.VALUE <> 0 THEN MORA     := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',RMORA.VALUE),10,' ','E') ELSE
                             MORA     := FRMPRINCIPAL.texto_justifica('',10,' ','E');


    IF ROUTROS.VALUE <> 0 THEN OUTROS := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',ROUTROS.VALUE),10,' ','E') ELSE
                               OUTROS := FRMPRINCIPAL.texto_justifica('',10,' ','E');

    IF RVALOR_COBRADO.VALUE <> 0 THEN VALOR_COBRADO := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',RVALOR_COBRADO.VALUE),10,' ','E') ELSE
                               VALOR_COBRADO := FRMPRINCIPAL.texto_justifica('',10,' ','E');


    INST1  := FRMPRINCIPAL.texto_justifica(Edit7.Text,80,' ','D');
    INST2  := FRMPRINCIPAL.texto_justifica(Edit8.Text,80,' ','D');
    INST3  := FRMPRINCIPAL.texto_justifica(Edit9.Text,80,' ','D');
    INST4  := FRMPRINCIPAL.texto_justifica(Edit10.Text,80,' ','D');
    INST5  := FRMPRINCIPAL.texto_justifica(Edit11.Text,80,' ','D');
    INST6  := FRMPRINCIPAL.texto_justifica(Edit12.Text,80,' ','D');


    CEDENTE := FRMPRINCIPAL.texto_justifica(COMBOCLIENTE.Text,90,' ','D');
    cedente_ender := FRMPRINCIPAL.texto_justifica(EDIT13.Text,90,' ','D');



  for Y := 1 to 50 do
  begin
     linhas[Y] := '                                                                                                               ';
  end;
  // vencimento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_VENCIMENTO').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_VENCIMENTO').ASinteger,10);
  insert(vencimento,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_VENCIMENTO').ASinteger);
  linhas[y] := texto;
  // data do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_DATADOC').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_DATADOC').ASinteger,10);
  insert(data_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_DATADOC').ASinteger);
  linhas[y] := texto;
  // numero do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_numero').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_numero').ASinteger,20);
  insert(numero_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_numero').ASinteger);
  linhas[y] := texto;
  // especie do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_espdoc').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_espdoc').ASinteger,7);
  insert(especie_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_espdoc').ASinteger);
  linhas[y] := texto;
  // aceite
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_aceite').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_aceite').ASinteger,6);
  insert(aceite,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_aceite').ASinteger);
  linhas[y] := texto;
  // especie
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_esp').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp').ASinteger,10);
  insert(especie,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp').ASinteger);
  linhas[y] := texto;
  // quantidade
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_qtde').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde').ASinteger,10);
  insert(qtde,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde').ASinteger);
  linhas[y] := texto;
  // valor
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valor').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor').ASinteger,10);
  insert(valor,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor').ASinteger);
  linhas[y] := texto;
  // valor do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valordoc').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valordoc').ASinteger,10);
  insert(valor_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valordoc').ASinteger);
  linhas[y] := texto;
  // desconto
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_desconto').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_desconto').ASinteger,10);
  insert(desconto,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_desconto').ASinteger);
  linhas[y] := texto;
  // outras
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outras').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outras').ASinteger,10);
  insert(outras,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outras').ASinteger);
  linhas[y] := texto;
  // mora
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_mora').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora').ASinteger,10);
  insert(mora,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora').ASinteger);
  linhas[y] := texto;
  // outros
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outros').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outros').ASinteger,10);
  insert(outros,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outros').ASinteger);
  linhas[y] := texto;
  // valor
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cobrado').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cobrado').ASinteger,10);
  insert(valor_cobrado,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cobrado').ASinteger);
  linhas[y] := texto;
  // sacado
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedente').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedente').ASinteger,90);
  insert(cedente,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedente').ASinteger);
  linhas[y] := texto;
  // sacado endereco
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedenteender').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedenteender').ASinteger,90);
  insert(cedente_ender,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedenteender').ASinteger);
  linhas[y] := texto;
  // instrucoes
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst1').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst1,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst2').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst2,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst3').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst3,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst4').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst4,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst5').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst5,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst6').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst6,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;


  for y := 1 to 50 do
  begin
     writeln(f,#27+#51+#15+#27#72,linhas[y]);
  end;

  x := frmmodulo.qrconfig_cobrebem.fieldbyname('entre_linhas').asinteger;
  while x <> 0 do begin   writeln(f,#27+#51+#15+#27#72,''); x := x - 1;END;

  writeln(f,#12);
  closefile(f);





end;

procedure Tfrmboleto.bcobrebemClick(Sender: TObject);
var
   CobreBemX: Variant;
   Boleto: Variant;
   texto,texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11, texto12, texto13, texto14, texto15, texto16 : string;
   proximonumero, arquivoremessa : integer;
begin



     CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');
     CobreBemX.ArquivoLicenca := frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_CONFIGURACAO').asstring;


     //----------------------------------- ARQUIVO DE REMESSA ---------------------\\
     if frmmodulo.qrconfig_cobrebem.FieldByName('REMESSA_UTILIZA').Asinteger = 1 then
     begin
       CobrebemX.ArquivoRemessa.Layout := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_layout').asstring;
       CobreBemX.ArquivoRemessa.Arquivo := 'R_'+copy(datetostr(date),1,2)+copy(datetostr(date),4,2)+copy(datetostr(date),7,4)+'_'+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+'.txt';
       CobreBemX.ArquivoRemessa.Diretorio := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_local').asstring;;
       CobrebemX.ArquivoRemessa.Sequencia := frmprincipal.zerarcodigo(inttostr(Frmmodulo.qrconfig_cobrebem.fieldbyname('REMEsSA_SEQUENCIA').asINTEGER),5);//'00015';
       arquivoremessa := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_sequencia').asinteger;
     end;
     //-----------------------------------------------------------------------------\\




     //----------------------------------- INFORMACOES DA CONTA -------------------------------\\
     CobreBemX.CodigoAgencia       := frmmodulo.qrconfig_cobrebem.fieldbyname('agencia').asstring;
     CobreBemX.NumeroContaCorrente := frmmodulo.qrconfig_cobrebem.fieldbyname('codconta').asstring;
     CobreBemX.CodigoCedente       := frmmodulo.qrconfig_cobrebem.fieldbyname('codigo_cedente').asstring;
     CobreBemX.InicioNossoNumero   := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_INICIO').asstring;
     CobreBemX.FimNossoNumero      := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_FIM').asstring;
     CobreBemX.ProximoNossoNumero  := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring;

     proximonumero :=  strtoint(frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring);

     if frmmodulo.qrconfig_cobrebem.fieldbyname('VARIACAO_MODALIDADE').asstring <> '' then
     begin
       CobreBemX.OutroDadoConfiguracao1      :=  frmmodulo.qrconfig_cobrebem.fieldbyname('VARIACAO_MODALIDADE').asstring;
     end;


     //----------------------------------- CONFIGURACOES DO BOLETO -----------------------------\\
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_LOGOMARCA').asstring;
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := '\DATASAC\server\cob\CobreBemX\Imagens\';



     if frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO_BOLETO').asstring = 'Padrao' then
     begin
       //

     end
     else
     begin
        Cobrebemx.padroesboleto.padroesboletoimpresso.LayoutBoleto := frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO_BOLETO').asstring;//'CarnetReciboLateralEsquerda';
     end;
     if frmmodulo.qrconfig_cobrebem.fieldbyname('MARGEM_SUPERIOR').asinteger > 0 then
        Cobrebemx.padroesboleto.padroesboletoimpresso.MargemSuperior := frmmodulo.qrconfig_cobrebem.fieldbyname('MARGEM_SUPERIOR').asinteger;//4;

     texto := '<font face="Courier New" size = "">'+EDIT7.TEXT+
                                                 '<br> '+EDIT8.TEXT+
                                                 '<br> '+EDIT9.TEXT+
                                                 '<br> '+EDIT10.TEXT+
                                                 '<br> '+EDIT11.TEXT+
                                                 '<br> '+EDIT12.TEXT+
                                                 '<br> '+''+'</font>';



           Boleto                 := CobreBemX.DocumentosCobranca.Add;
           Boleto.NumeroDocumento := enumero_doc.text;
           Boleto.NomeSacado      := frmmodulo.qrcliente.fieldbyname('nome').asstring;
           Boleto.CPFSacado       := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
           Boleto.EnderecoSacado  := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
           Boleto.BairroSacado    := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
           Boleto.CidadeSacado    := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
           Boleto.EstadoSacado    := frmmodulo.qrcliente.fieldbyname('uf').asstring;
           Boleto.CepSacado       := frmprincipal.somenteNumero( frmmodulo.qrcliente.fieldbyname('cep').asstring );
           Boleto.DataDocumento   := edata_doc.text;
           Boleto.DataVencimento  := evencimento.Text;
           Boleto.ValorDocumento  := rvalor_doc.value;
           Boleto.PadroesBoleto.Demonstrativo :=  texto;
           Boleto.PadroesBoleto.InstrucoesCaixa := '<br>'+edit7.text+'<br>'+edit8.text+'<br>'+edit9.text;
           CobreBemX.CalcularDadosBoletos;
           proximonumero := proximonumero+1;


     //------- IMPRIMIR BOLETOS -------\\\
     CobreBemX.ImprimeBoletos;



     if frmmodulo.qrconfig_cobrebem.FieldByName('REMESSA_UTILIZA').Asinteger = 1 then
     begin
       if application.MessageBox('Deseja gerar remessa?','Aviso',mb_yesno+mb_iconquestion) = idyes then
       begin
         arquivoremessa := arquivoremessa + 1;
         CobreBemX.GravaArquivoRemessa;
       end;
     end;


     CobreBemX := Unassigned;



     texto := inttostr(proximonumero);
     while length(texto) < 4 do texto := '0'+texto;

     frmmodulo.qrconfig_cobrebem.Edit;
     frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring := texto;
     frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_sequencia').asinteger := arquivoremessa;
     frmmodulo.qrconfig_cobrebem.post;

     frmmodulo.Conexao.Commit;

     frmmodulo.qrcliente.close;
     frmmodulo.qrcliente.sql.Clear;
     frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
     frmmodulo.qrcliente.open;


end;

end.















 







   //  VENCIMENTO L 001  C 091
  //



{
  writeln(f,#27+#51+#15+#27#72,'linha1 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha2 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha3 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha4 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha5 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha6 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha7 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha8 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha9 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha0 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha1 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha2 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha3 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha4 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha5 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha6 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha7 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha8 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha9 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha0 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha1 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha2 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha3 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha4 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha5 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha6 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha7 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha8 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha9 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha8 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha9 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha8 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha9 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
  writeln(f,#27+#51+#15+#27#72,'linha0 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');

}








  //                                       10        20        30        40        50        60        70        90        90        100       110
  //                              12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890




  writeln(f,#27+#51+#15+#27#72,{001}'                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{002}'                                                                                          DD/MM/AAAA           ');
  writeln(f,#27+#51+#15+#27#72,{003}'3                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{004}'4                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{005}'5                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{006}'6                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{007}'7                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{008}'8                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{009}'9                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{010}'0                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{011}'1  DD/MM/AAAA     00000000000000000000      ESPECIE  ACEITE                                                     ');
  writeln(f,#27+#51+#15+#27#72,{012}'2                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{013}'3                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{014}'4                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{015}'5                         ESPECIE        QUANTIDADE          VALOR                                   VALOR DOCTO');
  writeln(f,#27+#51+#15+#27#72,{016}'6                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{017}'7                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{018}'8                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{019}'9   INSTRUCOES 1                                                                                     DESCONTO   ');
  writeln(f,#27+#51+#15+#27#72,{020}'0                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{021}'1   INSTRUCOES 2                                                                                                ');
  writeln(f,#27+#51+#15+#27#72,{022}'2                                                                                                    OUTRAS     ');
  writeln(f,#27+#51+#15+#27#72,{023}'3   INSTRUCOES 3                                                                                                ');
  writeln(f,#27+#51+#15+#27#72,{024}'4                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{025}'5   INSTRUCOES 4                                                                                                ');
  writeln(f,#27+#51+#15+#27#72,{026}'6                                                                                                    MORA       ');
  writeln(f,#27+#51+#15+#27#72,{027}'7   INSTRUCOES 5                                                                                                ');
  writeln(f,#27+#51+#15+#27#72,{028}'8                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{029}'9   INSTRUCOES 6                                                                                     OUTROS     ');
  writeln(f,#27+#51+#15+#27#72,{030}'0                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{031}'1                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{032}'2                                                                                                    TOTAL      ');
  writeln(f,#27+#51+#15+#27#72,{033}'3                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{034}'4                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{035}'5                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{036}'6                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{037}'7   NOME DO SACADO                                                                                              ');
  writeln(f,#27+#51+#15+#27#72,{038}'8                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{039}'9   ENDERECO DO SACADO                                                                                          ');
  writeln(f,#27+#51+#15+#27#72,{040}'0                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{041}'1                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{042}'2                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{043}'3                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{044}'4                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{045}'5                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{046}'6                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{047}'7                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{048}'8                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{049}'1                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{050}'2                                                                                                               ');


  writeln(f,#27+#51+#15+#27#72,{}'4                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{}'5                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{}'6                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{}'7                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{}'8                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{}'9                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{}'0                                                                                                               ');
  writeln(f,#27+#51+#15+#27#72,{}'1                                                                                                               ');

  I := I + 1;
  END;
















                                                                                                              ');
                                                                                          DD/MM/AAAA           ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
  DD/MM/AAAA     00000000000000000000      ESPECIE  ACEITE                                                     ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
                         ESPECIE        QUANTIDADE          VALOR                                   VALOR DOCTO');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
   INSTRUCOES 1                                                                                     DESCONTO   ');
                                                                                                               ');
   INSTRUCOES 2                                                                                                ');
                                                                                                    OUTRAS     ');
   INSTRUCOES 3                                                                                                ');
                                                                                                               ');
   INSTRUCOES 4                                                                                                ');
                                                                                                    MORA       ');
   INSTRUCOES 5                                                                                                ');
                                                                                                               ');
   INSTRUCOES 6                                                                                     OUTROS     ');
                                                                                                               ');
                                                                                                               ');
                                                                                                    TOTAL      ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
                                                                                                               ');
   NOME DO SACADO                                                                                              ');
                                                                                                               ');
   ENDERECO DO SACADO                                                                                          ');
                                                                                                               ');
}'2                                                                                                               ');
}'4                                                                                                               ');
}'5                                                                                                               ');
}'6                                                                                                               ');
}'7                                                                                                               ');
}'8                                                                                                               ');
}'9                                                                                                               ');
}'0                                                                                                               ');
}'1                                                                                                               ');
}'2                                                                                                               ');
}'4                                                                                                               ');
}'5                                                                                                               ');
}'6                                                                                                               ');
}'7                                                                                                               ');
}'8                                                                                                               ');
}'9                                                                                                               ');
}'0                                                                                                               ');
}'1                                                                                                               ');

