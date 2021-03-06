unit GeracaoSPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxtooledit, ACBrSpedFiscal, ComCtrls, ACBrEFDBlocos,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmGeracaoSPED = class(TForm)
    cbFinalidade: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    ed_data_ini: TDateEdit;
    ed_data_fim: TDateEdit;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Label4: TLabel;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    btnB_0: TButton;
    btnB_C: TButton;
    btnB_D: TButton;
    btnB_E: TButton;
    btnB_G: TButton;
    btnB_H: TButton;
    btnB_1: TButton;
    btnB_9: TButton;
    ProgressBar1: TProgressBar;
    cbConcomitante: TCheckBox;
    ZQuery1: TZQuery;
    procedure btnB_0Click(Sender: TObject);
    procedure btnB_CClick(Sender: TObject);
    procedure btnB_DClick(Sender: TObject);
    procedure btnB_EClick(Sender: TObject);
    procedure btnB_GClick(Sender: TObject);
    procedure btnB_HClick(Sender: TObject);
    procedure btnB_1Click(Sender: TObject);
    procedure btnB_9Click(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeracaoSPED: TfrmGeracaoSPED;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmGeracaoSPED.btnB_0Click(Sender: TObject);
const
  strUNID: array [0 .. 4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

var
  int0150: integer;
  int0175: integer;
  int0300: integer;
  int0190: integer;
  int0500: Integer;
  int0600: Integer;

begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco 0.

  btnB_0.Enabled := False;
  btnB_C.Enabled := True;

  //Definindo
  with ACBrSPEDFiscal1 do
  begin
    DT_INI := ed_data_ini.Date;
    DT_FIN := ed_data_fim.Date;
    LinhasBuffer := 1000;
    IniciaGeracao;
  end;

  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      COD_VER := vlVersao105;
      case cbFinalidade.ItemIndex of
       0: COD_FIN := raOriginal;
       1: COD_FIN := raSubstituto;
      end;

      NOME    := frmModulo.qrFilial.FieldByName('Filial').AsString;
      CNPJ    := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmModulo.qrFilial.FieldByName('cnpj').AsString)));
      CPF     := '';
      UF      := frmModulo.qrFilial.FieldByName('UF').AsString;
      IE      := FrmPrincipal.Tira_Ponto(frmprincipal.somenteNumero(frmModulo.qrFilial.FieldByName('IE').AsString));
      COD_MUN :=frmModulo.QrFilial.FieldByName('cod_municipio_ibge').AsInteger;
      IM      := FrmPrincipal.Tira_Ponto(frmprincipal.somenteNumero(frmModulo.qrFilial.FieldByName('INSC_MUNICIPAL').AsString));
      SUFRAMA := '';
      Case frmModulo.qrFilial.FieldByName('Perfil_Sped').AsInteger of
       0: IND_PERFIL := pfPerfilA;
       1: IND_PERFIL := pfPerfilB;
       2: IND_PERFIL := pfPerfilC;
      end;

      if trim(frmModulo.qrFilial.FieldByName('Atividade').AsString)='INDUSTRIA' then
       IND_ATIV:=atIndustrial
      else
       IND_ATIV:= atOutros;

    end;

    with Registro0001New do
    begin
      IND_MOV := imComDados;

      // FILHO - Dados complementares da Empresa
      with Registro0005New do
      begin
        FANTASIA := frmmodulo.qrFilial.FieldbyName('Fantasia').AsString;
        CEP      := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('cep').asString)));
        ENDERECO := frmmodulo.qrFilial.FieldbyName('endereco').AsString;
        NUM      := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('numero').asString)));
        COMPL    := frmmodulo.qrFilial.FieldbyName('complemento').AsString;
        BAIRRO   := frmmodulo.qrFilial.FieldbyName('BAIRRO').AsString;
        FONE     := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('telefone').AsString)));
        FAX      := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('fax').asString)));
        EMAIL    := frmmodulo.qrFilial.FieldbyName('email_empresa').AsString;
      end;


      // FILHO - Dados do contador.
      with Registro0100New do
      begin
        NOME     := frmmodulo.qrFilial.FieldbyName('contador_nome').AsString;
        CPF      := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('contador_cpf').AsString)));
        CRC      := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('contador_crc').AsString)));
        CNPJ     := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('contador_cnpj').AsString)));
        CEP      := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('contador_cep').AsString)));
        ENDERECO := trim(frmmodulo.qrFilial.FieldbyName('contador_endereco').AsString);
        NUM      := frmmodulo.qrFilial.FieldbyName('contador_numero').AsString;
        COMPL    := trim(frmmodulo.qrFilial.FieldbyName('contador_complemento').AsString);
        BAIRRO   := trim(frmmodulo.qrFilial.FieldbyName('contador_bairro').AsString);
        FONE     := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('contador_fone').AsString)));
        FAX      := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(frmmodulo.qrFilial.FieldbyName('contador_fax').AsString)));
        EMAIL    := frmmodulo.qrFilial.FieldbyName('contador_email').AsString;
        COD_MUN  := frmmodulo.qrFilial.FieldbyName('contador_cod_municipio').AsInteger;
      end;


      // CLIENTES

      Zquery1.Close;
      Zquery1.sql.clear;
      Zquery1.sql.add('select distinct a.codigo, a.nome, a.tipo, a.cpf, a.rg, a.cod_municipio_ibge, a.endereco, a.numero, a.complemento, a.bairro from c000007 a, c000032 b ');
      Zquery1.sql.add('where b.codcliente = a.codigo');
      Zquery1.sql.add('order by a.codigo');
      Zquery1.Open;

      if Zquery1.RecordCount > 0 then
      begin
        Zquery1.first;
        while not Zquery1.eof do
        begin
          with Registro0150New do
          begin
            COD_PART :=ZQuery1.FieldByName('codigo').asString;
            NOME     :=ZQuery1.FieldByName('nome').asString;
            COD_PAIS :='1058';
            if ZQuery1.FieldByName('Tipo').AsInteger = 2 then
             CNPJ    :=frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(ZQuery1.FieldByName('CPF').asString)))
            else
             CPF     :=frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(ZQuery1.FieldByName('CPF').asString)));

            IE := frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(frmprincipal.somenteNumero(ZQuery1.FieldByName('RG').asString)));;
            COD_MUN  :=ZQuery1.FieldByName('COD_MUNICIPIO_IBGE').AsInteger;
            SUFRAMA  :='';
            ENDERECO :=frmprincipal.TiraCaracterEspecial(frmprincipal.Tira_Ponto(Trim(ZQuery1.FieldByName('ENDERECO').AsString)));
            NUM      :=ZQuery1.FieldByName('NUMERO').AsString;
            COMPL    :=Trim(ZQuery1.FieldByName('COMPLEMENTO').AsString);
            BAIRRO   :=Trim(ZQuery1.FieldByName('BAIRRO').AsString);
          end;
         ZQuery1.Next;
        end;
      end;

      // unidades de medidas

      Zquery1.Close;
      Zquery1.sql.clear;
      Zquery1.sql.add('select count(*), upper(a.unidade) as Unidade');
      Zquery1.sql.add('from c000032 b, c000025 a');
      Zquery1.sql.add('where b.codproduto = a.codigo');   // and a.unidade <> '''' or a.unidade is not null
      Zquery1.sql.add('group by Unidade');
      Zquery1.Open;

      if Zquery1.RecordCount > 0 then
      begin
        Zquery1.first;
        while not Zquery1.eof do
        begin
          //--- Registro0190 -  ---
           if not Registro0190.LocalizaRegistro(ZQuery1.fieldByName('Unidade').AsString) then
            begin
              with Registro0190New do
              begin
                UNID  := ZQuery1.FieldByName('Unidade').AsString;
                DESCR := 'Unidade em '+ZQuery1.FieldByName('Unidade').AsString;
              end;
            end;
           ZQuery1.next;
        end;
      end;

      // tabela de produtos
      ZQuery1.close;
      ZQuery1.sql.clear;
      ZQuery1.sql.add('select a.codigo, a.produto, upper(a.unidade) as unidade,');
      ZQuery1.sql.add('a.codbarra,a.aliquota,a.ncm');
      ZQuery1.sql.add('from c000025 a, c000032 b where a.codigo = b.codproduto');
      ZQuery1.SQL.add('order by a.codigo');
      ZQuery1.open;

      if ZQuery1.RecordCount > 0 then
      begin
        ZQuery1.first;
        while not ZQuery1.eof do
        begin
          // Registro0200 - TABELA DE IDENTIFICA��O DO ITEM

          with Registro0200New do
          begin
            COD_ITEM   := ZQuery1.fieldbyname('codigo').asstring;                       //C�digo do item:
            DESCR_ITEM :=ZQuery1.fieldbyname('produto').asstring;                       //Descri��o do item:
            COD_BARRA  := ZQuery1.fieldbyname('codbarra').asstring;                   //C�digo de barra do produto, se houver:
            UNID_INV   := ZQuery1.fieldbyname('unidade').asstring;                        //Unidade de medida do estoque:
            TIPO_ITEM  := tiMercadoriaRevenda;
            if Length(Trim(ZQuery1.FieldByName('NCM').AsString))<=0 then
              COD_NCM  := '99999999'
            else
              COD_NCM  := ZQuery1.FieldByName('NCM').AsString;

            COD_GEN    := '30'; // ver como classificar esse campo
            ALIQ_ICMS  :=ZQuery1.fieldbyname('aliquota').asFloat ;                   //Al�quota ICMS aplic�vel (opera��es internas):

          end;
          ZQuery1.next;
        end;

      end;

     {
      with Registro0400New do
      begin
        COD_NAT := '12020';
        DESCR_NAT := 'DESCRI��O DA NATUREZA DE OPERA��O 12020';
      end;

      with Registro0450New do
      begin
        COD_INF := '000001';
        TXT := 'INFORMA��O COMPLEMENTAR DO DOCUMENTO FISCAL';
      end;

      with Registro0460New do
      begin
        COD_OBS := '000001';
        TXT := 'TEXTO DE OBSERVA��O DO DOCUMENTO FISCAL ';
      end;

      }
    end;
  end;
 end;

procedure TfrmGeracaoSPED.btnB_CClick(Sender: TObject);
var
  INotas: integer;
  IItens: integer;
  NNotas: integer;
  BNotas: integer;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco C.

  ZQuery1.Close;
  ZQuery1.Sql.Clear;
  ZQuery1.SQL.Add('Select * from c000061');
  ZQuery1.SQL.Add('order by data');
  ZQuery1.Open;

  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
    begin
     if ZQuery1.RecordCount <=0 then
       begin
        IND_MOV := imSemDados;
       end
     else
       begin
            IND_MOV := imComDados;
            //
            for INotas := 1 to NNotas do
            begin
              with RegistroC100New do
              begin
                IND_OPER := tpEntradaAquisicao;
                IND_EMIT := edTerceiros;
                COD_PART := '001';
                COD_MOD := '55';
                COD_SIT := sdRegular;
                SER := '';
                NUM_DOC := FormatFloat('11000000', INotas);
                CHV_NFE := '';
                DT_DOC := DT_INI + INotas;
                DT_E_S := DT_INI + INotas;
                VL_DOC := 0;
                IND_PGTO := tpSemPagamento;
                VL_DESC := 0;
                VL_ABAT_NT := 0;
                VL_MERC := 0;
                IND_FRT := tfSemCobrancaFrete;
                VL_SEG := 0;
                VL_OUT_DA := 0;
                VL_BC_ICMS := 0;
                VL_ICMS := 0;
                VL_BC_ICMS_ST := 0;
                VL_ICMS_ST := 0;
                VL_IPI := 0;
                VL_PIS := 0;
                VL_COFINS := 0;
                VL_PIS_ST := 0;
                VL_COFINS_ST := 0;


                { Gera registros espec�ficos para notas emitidas por terceiros }
                if IND_EMIT = edTerceiros then
                begin
                  With RegistroC110New do
                  begin
                    COD_INF := '000001';
                    TXT_COMPL := '';
                  end;
                end;

                { Gera o registro de importa��o apenas para notas de entrada }
                if IND_OPER = tpEntradaAquisicao then
                begin
                  with RegistroC120New do
                  begin
                    COD_DOC_IMP := diSimplificadaImport;
                    NUM_DOC__IMP := '1024879531';
                    PIS_IMP := 0.00;
                    COFINS_IMP := 0.00;
                    NUM_ACDRAW := '';
                  end;
                end;

                { Gera registros espec�ficos para notas emitidas por terceiros e de presta��o }
                if (IND_EMIT = edTerceiros) and (IND_OPER = tpSaidaPrestacao) then
                begin
                  with RegistroC130New do
                  begin
                    VL_SERV_NT := 10.12;
                    VL_BC_ISSQN := 10.12;
                    VL_ISSQN := 10.12;
                    VL_BC_IRRF := 10.12;
                    VL_IRRF := 10.12;
                    VL_BC_PREV := 10.12;
                    VL_PREV := 10.12;
                  end;
                end;


                // REGISTRO C170: ITENS DO DOCUMENTO (C�DIGO 01, 1B, 04 e 55).
                for IItens := 1 to 10 do
                begin
                  with RegistroC170New do // Inicio Adicionar os Itens:
                  begin
                    NUM_ITEM := FormatFloat('000', IItens);
                    COD_ITEM := FormatFloat('000000', StrToInt(NUM_ITEM));
                    DESCR_COMPL := FormatFloat('11000000', INotas) + ' -> ITEM '
                      + COD_ITEM;
                    QTD := 1;
                    UNID := 'UN';
                    VL_ITEM := 0;
                    VL_DESC := 0;
                    IND_MOV := mfNao;
                    CST_ICMS := '001';
                    CFOP := '1252';
                    COD_NAT := '64';
                    VL_BC_ICMS := 0;
                    ALIQ_ICMS := 0;
                    VL_ICMS := 0;
                    VL_BC_ICMS_ST := 0;
                    ALIQ_ST := 0;
                    VL_ICMS_ST := 0;
                    IND_APUR := iaMensal;
                    CST_IPI := ipiEntradaIsenta;
                    COD_ENQ := '';
                    VL_BC_IPI := 0;
                    ALIQ_IPI := 0;
                    VL_IPI := 0;
                    CST_PIS := pisOutrasOperacoes;
                    VL_BC_PIS := 0;
                    ALIQ_PIS_PERC := 0;
                    QUANT_BC_PIS := 0;
                    ALIQ_PIS_R := 0;
                    VL_PIS := 0;
                    CST_COFINS := cofinsOutrasOperacoes;
                    VL_BC_COFINS := 0;
                    ALIQ_COFINS_PERC := 0;
                    QUANT_BC_COFINS := 0;
                    ALIQ_COFINS_R := 0;
                    VL_COFINS := 0;
                    COD_CTA := '000';

                    //REGISTRO C171: ARMAZENAMENTO DE COMBUSTIVEIS (c�digo 01, 55)
                    { S� gera para opera��es de aquisi��o }
      //              if IND_OPER = tpEntradaAquisicao then
      //              begin
      //                with RegistroC171New do
      //                begin
      //                  NUM_TANQUE := '115';
      //                  QTDE := 1.00;
      //                end;
      //              end;

                    //REGISTRO C176: RESSARCIMENTO DE ICMS EM OPERA��ES COM
                    //SUBSTITUI��O TRIBUT�RIA (C�DIGO 01, 55).
      //              with RegistroC176New do
      //              begin
      //                COD_MOD_ULT_E := '55';
      //                NUM_DOC_ULT_E := '124567';
      //                SER_ULT_E := '1';
      //                DT_ULT_E := Now;
      //                COD_PART_ULT_E := '000001';
      //                QUANT_ULT_E := 10.00;
      //                VL_UNIT_ULT_E := 1.00;
      //                VL_UNIT_BC_ST := 5.00;
      //              end;
                  end; // Fim dos Itens;
                end;

                // REGISTRO C190: REGISTRO ANAL�TICO DO DOCUMENTO (C�DIGO 01, 1B, 04 E 55).
                for IItens := 1 to 1 do
                begin
                  with RegistroC190New do
                  begin
                    CST_ICMS := '040';
                    CFOP := '1252';
                    ALIQ_ICMS := 0;
                    VL_OPR := 0;
                    VL_BC_ICMS := 0;
                    VL_ICMS := 0;
                    VL_BC_ICMS_ST := 0;
                    VL_ICMS_ST := 0;
                    VL_RED_BC := 0;
                    VL_IPI := 0;
                    COD_OBS := '000';
                  end; // Fim dos Itens;
                end;
              end;

              if cbConcomitante.Checked then
              begin
                if (INotas mod BNotas) = 0 then // Gravar a cada N notas
                begin
                  // Grava registros na memoria para o TXT, e limpa memoria
                  ACBrSPEDFiscal1.WriteBloco_C(False); // False, NAO fecha o Bloco
                  ProgressBar1.Position := INotas;
                  Application.ProcessMessages;
                end;
              end;
            end;

            //REGISTRO C400 - EQUIPAMENTO ECF (C�DIGO 02 e 2D).
            With RegistroC400New do
            begin
              COD_MOD := '2D';
              ECF_MOD := 'DARUMA FS600';
              ECF_FAB := '21098765432123456789';
              ECF_CX := '001';

              With RegistroC405New do
              begin
                DT_DOC := DT_FIN; //StrToDate('30/11/2011');
                CRO := 1;
                CRZ := 1;
                NUM_COO_FIN := 1;
                GT_FIN := 100.00;
                VL_BRT := 100.00;

                With RegistroC410New do
                begin
                  VL_PIS := 0.00;
                  VL_COFINS := 0.00;
                end;

                With RegistroC420New do
                begin
                  COD_TOT_PAR := 'T1700';
                  VLR_ACUM_TOT := 100.00;
                  NR_TOT := 1;
                  DESCR_NR_TOT := 'TOTALIZADOR T1700';

                  { Gera este registro somente para empresas do pergil B de apresenta��o }
                  if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
                  begin
                    With RegistroC425New do
                    begin
                      COD_ITEM := '000001';
                      QTD := 1;
                      UNID := 'PC';
                      VL_ITEM := 100.00;
                      VL_PIS := 0.00;
                      VL_COFINS := 0.00;
                    end;
                  end;
                end;

                if Bloco_0.Registro0000.IND_PERFIL <> pfPerfilB then
                begin
                  with REgistroC460New do
                  begin
                    COD_MOD := '2D';
                    COD_SIT := sdRegular;
                    NUM_DOC := '000001';
                    DT_DOC := StrToDate('30/11/2011');
                    VL_DOC := 100.00;
                    VL_PIS := 0.00;
                    VL_COFINS := 0.00;
                    CPF_CNPJ := '33333333333';
                    NOM_ADQ := 'TESTE';

                    with RegistroC470New do
                    begin
                      COD_ITEM := '000001';
                      QTD := 1;
                      QTD_CANC := 0;
                      UNID := 'UN';
                      VL_ITEM := 100.00;
                      CST_ICMS := '000';
                      CFOP := '5102';
                      ALIQ_ICMS := 17.00;
                      VL_PIS := 0.00;
                      VL_COFINS := 0.00;
                    end;
                  end;
                end;

                with RegistroC490New do
                begin
                  CST_ICMS := '000';
                  CFOP := '5102';
                  ALIQ_ICMS := 17.00;
                  VL_OPR := 100.00;
                  VL_BC_ICMS := 100.00;
                  VL_ICMS := 17.00;
                  COD_OBS := '000001'
                end;

                { S� envia este registro se o contribuinte for da BA }
                if Bloco_0.Registro0000.UF = 'BA' then
                begin
                  with RegistroC495New do
                  begin
                    ALIQ_ICMS := 17.00;
                    COD_ITEM := '000001';
                    QTD := 1.00;
                    QTD_CANC := 0.00;
                    UNID := 'UN';
                    VL_ITEM := 100.00;
                    VL_DESC := 0.00;
                    VL_CANC := 0.00;
                    VL_ACMO := 0.00;
                    VL_BC_ICMS := 100.00;
                    VL_ICMS := 17.00;
                    VL_ISEN := 0.00;
                    VL_ICMS_ST := 0.00;
                  end;
                end;
              end;
        end;
      end;

    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_C(True); // True, fecha o Bloco
//    LoadToMemo;
  end;

  ProgressBar1.Visible := False;

end;

procedure TfrmGeracaoSPED.btnB_DClick(Sender: TObject);
begin
  btnB_D.Enabled := False;
  btnB_E.Enabled := True;

  // Alimenta o componente com informa��es para gerar todos os registros do Bloco D.
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      IND_MOV := imComDados;

      with RegistroD100New do
      begin
        IND_OPER := tpEntradaAquisicao;
        IND_EMIT := edTerceiros;
        COD_PART := '000001';
        COD_MOD := '57';
        COD_SIT := sdRegular;
        SER := '1';
        NUM_DOC := '012345';
        CHV_CTE := '';
        DT_DOC := DT_FIN - 1; //StrToDate('30/11/2011');
        DT_A_P := DT_FIN - 1; //StrToDate('30/11/2011');
        TP_CT_e := '1';
        VL_DOC := 100.00;
        VL_DESC := 0.00;
        IND_FRT := tfPorContaEmitente;
        VL_SERV := 100.00;
        VL_BC_ICMS := 100.00;
        VL_ICMS := 17.00;
        VL_NT := 10.10;
        COD_INF := '000001';
        COD_CTA := '111';
      end;

      with RegistroD190New do
      begin
        CST_ICMS := '000';
        CFOP := '1252';
        ALIQ_ICMS := 17.00;
        VL_OPR := 100.00;
        VL_BC_ICMS := 100.00;
        VL_ICMS := 17.00;
        VL_RED_BC := 0.00;
        COD_OBS := '000001';
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_D;
//    LoadToMemo;
  end;
end;

procedure TfrmGeracaoSPED.btnB_EClick(Sender: TObject);
const
  ESTADOS: array [0 .. 1] of String = ('RS', 'SC');
var
  I: Integer;
begin
  // Alimenta o componente com informa��es para gerar todos os registros do Bloco E.
  btnB_E.Enabled := False;
  btnB_G.Enabled := True;

  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := imComDados;

      with RegistroE100New do
      begin
        DT_INI := ed_data_ini.Date;
        DT_FIN := ed_data_fim.Date;

        with RegistroE110New do
        begin
          VL_TOT_DEBITOS := 17.00;
          VL_AJ_DEBITOS := 0.00;
          VL_TOT_AJ_DEBITOS := 0.00;
          VL_ESTORNOS_CRED := 0;
          VL_TOT_CREDITOS := 17.00;
          VL_AJ_CREDITOS := 0;
          VL_TOT_AJ_CREDITOS := 0;
          VL_ESTORNOS_DEB := 0;
          VL_SLD_CREDOR_ANT := 0;
          VL_SLD_APURADO := 0.00;
          VL_TOT_DED := 0.00;
          VL_ICMS_RECOLHER := 0.00;
          VL_SLD_CREDOR_TRANSPORTAR := 0;
          DEB_ESP := 0;

          // with RegistroE111New do begin
          // COD_AJ_APUR    := 'RS009999';
          // DESCR_COMPL_AJ := '';
          // VL_AJ_APUR     := 1.00;
          //
          // with RegistroE112New do begin
          // NUM_DA    := '123';
          // NUM_PROC  := '123';
          // IND_PROC  := opOutros;
          // PROC      := 'DESCRI��O RESUMIDA';
          // TXT_COMPL := 'COMPLEMENTO';
          // end;
          //
          // with RegistroE113New do begin
          // COD_PART := '000001';
          // COD_MOD  := '01';
          // SER      := 'SERI';
          // SUB      := '';
          // NUM_DOC  := '123456789';
          // DT_DOC   := Now;
          // COD_ITEM := '000001';
          // VL_AJ_ITEM := 0;
          // end;
          // end;

          { Rio Grande do Sul n�o possui as tabelas do registro E115, ent�o este n�o precisa ser gerado }
          // with RegistroE115New do begin
          // COD_INF_ADIC   := 'RS000001';
          // VL_INF_ADIC    := 0;
          // DESCR_COMPL_AJ := '';
          // end;

          with RegistroE116New do
          begin
            COD_OR := '000';
            VL_OR := 0;
            DT_VCTO := Now;
            COD_REC := '123';
            NUM_PROC := '10';
            IND_PROC := opSefaz;
            PROC := 'DESCRI��O DO PROCESSO';
            TXT_COMPL := '';
            MES_REF := '112011';
          end;
        end;
      end;

      { Gera um registro E200 e filhos para cada estado onde o contribuinte possui inscri��o estadual }
      for I := Low(ESTADOS) to High(ESTADOS) do
      begin
        with RegistroE200New do
        begin
          DT_INI := ed_data_ini.Date;
          DT_FIN := ed_data_fim.Date;
          UF := ESTADOS[I];

          with RegistroE210New do
          begin
            IND_MOV_ST := mstSemOperacaoST;
            VL_SLD_CRED_ANT_ST := 0;
            VL_DEVOL_ST := 0;
            VL_RESSARC_ST := 0;
            VL_OUT_CRED_ST := 0;
            VL_AJ_CREDITOS_ST := 0;
            VL_SLD_DEV_ANT_ST := 0.00;
            VL_DEDUCOES_ST := 0;
            VL_ICMS_RECOL_ST := 0.00;
            VL_SLD_CRED_ST_TRANSPORTAR := 0;
            VL_OUT_DEB_ST := 0.00;
            DEB_ESP_ST := 0;

            // with RegistroE220New do begin
            // COD_AJ_APUR    := 'RS109999';
            // DESCR_COMPL_AJ := '';
            // VL_AJ_APUR     := 0.00;
            //
            // with RegistroE230New do begin
            // NUM_DA    := '123';
            // NUM_PROC  := '123';
            // IND_PROC  := opOutros;
            // PROC      := 'DESCRI��O RESUMIDA';
            // TXT_COMPL := 'COMPLEMENTO';
            // end;
            //
            // with RegistroE240New do begin
            // COD_PART   := '000001';
            // COD_MOD    := '01';
            // SER        := 'SERI';
            // SUB        := '';
            // NUM_DOC    := '123456789';
            // DT_DOC     := Now;
            // COD_ITEM   := '000001';
            // VL_AJ_ITEM := 0;
            // end;
            // end;

            with RegistroE250New do
            begin
              COD_OR := '000';
              VL_OR := 0;
              DT_VCTO := Now;
              COD_REC := '123';
              NUM_PROC := '1020304050';
              IND_PROC := opOutros;
              PROC := 'DESCRI��O RESUMIDA';
              TXT_COMPL := '';
              MES_REF := '112011';
            end;
          end;
        end;
      end;

      with RegistroE500New do
      begin
        IND_APUR := iaMensal;
        DT_INI := ed_data_ini.Date;
        DT_FIN := ed_data_fim.Date;

        with RegistroE510New do
        begin
          CFOP := '5120';
          CST_IPI := '50';
          VL_CONT_IPI := 0;
          VL_BC_IPI := 0;
          VL_IPI := 0;
        end;

        with RegistroE520New do
        begin
          VL_SD_ANT_IPI := 0;
          VL_DEB_IPI := 0;
          VL_CRED_IPI := 0;
          VL_OD_IPI := 10.00;
          VL_OC_IPI := 0;
          VL_SC_IPI := 0;
          VL_SD_IPI := 10.00;

          with RegistroE530New do
          begin
            IND_AJ := ajDebito;
            VL_AJ := 10;
            COD_AJ := '001';
            IND_DOC := odOutros;
            NUM_DOC := '123';
            DESCR_AJ := 'DESCRI��O DETALHADA';
          end;
        end;
        { fim registro E500 }
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_E;
//    LoadToMemo;
  end;
end;

procedure TfrmGeracaoSPED.btnB_GClick(Sender: TObject);
begin
  btnB_G.Enabled := False;
  btnB_H.Enabled := True;

  // Alimenta o componente com informa��es para gerar todos os registros do Bloco G.
  with ACBrSPEDFiscal1.Bloco_G do
  begin
    with RegistroG001New do
    begin
      IND_MOV := imComDados;

      With RegistroG110New do
      begin
        DT_INI := Now;
        DT_FIN := Now;
        SALDO_IN_ICMS := 44.00;
        SOM_PARC := 4.40;
        VL_TRIB_EXP := 10.999;
        VL_TOTAL := 10.999;
        IND_PER_SAI := 1.00;
        ICMS_APROP := 4.40;
        SOM_ICMS_OC := 10.999;

        With RegistroG125New do
        begin
          COD_IND_BEM := '000001';
          DT_MOV := StrToDate('01/11/2011');
          TIPO_MOV := mbcSI;
          VL_IMOB_ICMS_OP := 10.999;
          VL_IMOB_ICMS_ST := 10.999;
          VL_IMOB_ICMS_FRT := 10.999;
          VL_IMOB_ICMS_DIF := 10.999;
          NUM_PARC := 10;
          VL_PARC_PASS := 4.40;

          With RegistroG126New do
          begin
            DT_INI := ed_data_ini.Date;
            DT_FIN := ed_data_fim.Date;
            NUM_PARC := 1234;
            VL_PARC_PASS := 10.999;
            VL_TRIB_OC := 10.999;
            VL_TOTAL := 10.999;
            IND_PER_SAI := 1.00;
            VL_PARC_APROP := 10.999;
          end;

          With RegistroG130New do
          begin
            IND_EMIT := edEmissaoPropria;
            COD_PART := '000001';
            COD_MOD := '55';
            SERIE := '1';
            NUM_DOC := '000068849';
            CHV_NFE_CTE := '35100260318797000100550010000688490882775007';
            DT_DOC := Now;

            With RegistroG140New do
            begin
              NUM_ITEM := '9999';
              COD_ITEM := '000001';
            end;
          end;
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_G;
//    LoadToMemo;
  end;

end;

procedure TfrmGeracaoSPED.btnB_HClick(Sender: TObject);
var
  IInvent: integer;
begin
  btnB_H.Enabled := False;
  btnB_1.Enabled := True;

  // Alimenta o componente com informa��es para gerar todos os registros do
  // Bloco H.
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH001New do
    begin
      IND_MOV := imComDados;
      //
      with RegistroH005New do
      begin
        DT_INV := DT_FIN; //o valor informado no campo deve ser menor ou igual ao valor no campo DT_FIN do registro 0000
        VL_INV := 1000;
        // FILHO
        for IInvent := 1 to 10 do
        begin
          with RegistroH010New do
          begin
            COD_ITEM := FormatFloat('00000000000000', IInvent);
            UNID := 'UN';
            QTD := 1;
            VL_UNIT := 100;
            VL_ITEM := 100;
            IND_PROP := piInformante;
            COD_PART := '';
            TXT_COMPL := '';
            COD_CTA := '';
          end;
        end;
      end;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_H;
//    LoadToMemo;
  end;
end;
procedure TfrmGeracaoSPED.btnB_1Click(Sender: TObject);
begin
  btnB_1.Enabled := False;
  btnB_9.Enabled := cbConcomitante.Checked;

  // Alimenta o componente com informa��es para gerar todos os registros do Bloco 1.
  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imSemDados;
    end;
  end;

  if cbConcomitante.Checked then
  begin
    ACBrSPEDFiscal1.WriteBloco_1;
  end;
end;

procedure TfrmGeracaoSPED.btnB_9Click(Sender: TObject);
begin
  btnB_9.Enabled := False;
  ACBrSPEDFiscal1.WriteBloco_9;

  // Habilita os bot�es
  btnB_0.Enabled := True;
  btnB_1.Enabled := True;
  btnB_C.Enabled := True;
  btnB_D.Enabled := True;
  btnB_E.Enabled := True;
  btnB_G.Enabled := True;
  btnB_H.Enabled := True;

  cbConcomitante.Enabled := True;
end;

procedure TfrmGeracaoSPED.bt_okClick(Sender: TObject);
begin

  btnB_0Click(Self);
  btnB_CClick(Self);
  btnB_DClick(Self);
  btnB_EClick(Self);
  btnB_GClick(Self);
  btnB_HClick(Self);
  btnB_1Click(Self);


  ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef('1000', 0);

  with ACBrSPEDFiscal1 do
  begin
    DT_INI := ed_data_ini.Date;
    DT_FIN := ed_data_fim.Date;
  end;

  // M�todo que gera o arquivo TXT.
  ACBrSPEDFiscal1.SaveFileTXT;

  // Habilita os bot�es
  btnB_0.Enabled := True;
  cbConcomitante.Enabled := True;
end;

end.
