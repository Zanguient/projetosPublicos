unit produto_serial_saida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Buttons, ExtCtrls, TFlatPanelUnit,
  Collection, Mask, ToolEdit, CurrEdit, Menus;

type
  Tfrmproduto_serial_saida = class(TForm)
    wwDBGrid2: TwwDBGrid;
    dsserial_produto: TDataSource;
    qrserial_produto: TZQuery;
    qrserial_produtoSERIAL: TStringField;
    qrserial_produtoCODNOTA: TStringField;
    qrserial_produtoPRECOCUSTO: TFloatField;
    qrserial_produtoPRECOVENDA: TFloatField;
    qrserial_produtoDATAVENDA: TDateTimeField;
    qrserial_produtoCLIENTE: TStringField;
    qrserial_produtoESTOQUE: TFloatField;
    qrserial_produtoCODIGO: TStringField;
    qrserial_produtoCODPRODUTO: TStringField;
    qrserial_produtoCODCLIENTE: TStringField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCODITEM: TStringField;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RTOTAL: TRxCalcEdit;
    RDIGITADO: TRxCalcEdit;
    RDIFERENCA: TRxCalcEdit;
    ViewSplit1: TViewSplit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    qrserial_produtoDATACOMPRA: TDateTimeField;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    qrserial_produtoNUMERONOTA: TStringField;
    qrserial_produtoCODFORNECEDOR: TStringField;
    qrserial_produtoCODITEM_SAIDA: TStringField;
    qrserial_produtoFILTRO: TIntegerField;
    Fechar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure qrserial_produtoAfterInsert(DataSet: TDataSet);
    procedure qrserial_produtoBeforePost(DataSet: TDataSet);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_serial_saida: Tfrmproduto_serial_saida;

implementation

uses modulo_nfe, produto_saida, principal;

{$R *.dfm}

procedure Tfrmproduto_serial_saida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action := cafree;
end;

procedure Tfrmproduto_serial_saida.FormShow(Sender: TObject);
begin
  if frmproduto_saida.qrsaida_item.State = dsinsert then
  begin
    qrserial_produto.close;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('update c000022 set filtro = 0 where codproduto = '''+frmPRODUTO_saida.qrsaida_ITEM.fieldbyname('codproduto').asstring+''' and situacao = 1');
    qrserial_produto.ExecSQL;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('select * from c000022 where codproduto = '''+frmPRODUTO_saida.qrsaida_ITEM.fieldbyname('codproduto').asstring+''' and situacao = 1 order by codigo');
    qrserial_produto.open;

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;
    RTOTAL.Value := frmproduto_saida.qrsaida_item.fieldbyname('qtde').asfloat;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end
  else
  begin
    qrserial_produto.close;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('update c000022 set filtro = 0 where codproduto = '''+frmPRODUTO_saida.qrsaida_ITEM.fieldbyname('codproduto').asstring+''' and situacao = 1');
    qrserial_produto.ExecSQL;
    qrserial_produto.close;
    qrserial_produto.sql.clear;
    qrserial_produto.sql.add('select * from c000022 where coditem_saida = '''+frmPRODUTO_saida.qrsaida_ITEM.fieldbyname('codigo').asstring+''' or situacao = 1 order by codigo');
    //verificar
    qrserial_produto.Open;

    qrserial_produto.first;

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;

    while not qrserial_produto.eof do
    begin
      if qrserial_produto.FieldByName('filtro').asinteger = 1 then
        rdigitado.value := rdigitado.value + 1;
      qrserial_produto.Next;
    end;
    RTOTAL.Value := frmproduto_saida.qrsaida_item.fieldbyname('qtde').asfloat;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end;


  qrserial_produto.Refresh;
  wwDBGrid2.setfocus;
end;

procedure Tfrmproduto_serial_saida.bgravarClick(Sender: TObject);
begin



  if (qrserial_produto.State = dsedit) or (qrserial_produto.State = dsinsert) then
  begin
     if application.messagebox('Existe um registro em edi��o! Deseja salv�-lo?','Aviso',mb_yesno+mb_iconwarning) = idyes then
     begin
       qrserial_produto.Post;

     end
     else
     begin
       qrserial_produto.Cancel;
     end;
  end;


  application.ProcessMessages;

  if (rdiferenca.value <> 0) then
  begin
    if rdigitado.Value <> 0 then
    begin
      application.MessageBox('A quantidade de seriais digitados n�o confere com a quantidade deste produto! Favor verificar.','Aten��o',mb_ok+MB_ICONWARNING);
      wwdbgrid2.setfocus;
    end
    else
    begin
      qrserial_produto.Refresh;
      close;
    end;
  end
  else
  begin
    qrserial_produto.Refresh;
    close;
  end;
end;

procedure Tfrmproduto_serial_saida.qrserial_produtoAfterInsert(
  DataSet: TDataSet);
begin
   qrserial_produto.Cancel;
end;

procedure Tfrmproduto_serial_saida.qrserial_produtoBeforePost(
  DataSet: TDataSet);
begin
    if qrserial_produto.fieldbyname('filtro').asinteger = 1 then
    begin
      rdigitado.value := rdigitado.value + 1;
      rdiferenca.Value := rdigitado.value - rtotal.value;
      qrserial_produto.fieldbyname('coditem_saida').asstring := frmproduto_saida.qrsaida_item.fieldbyname('codigo').asstring;
      qrserial_produto.fieldbyname('situacao').asinteger := 4;
    end
    else
    begin

      qrserial_produto.fieldbyname('coditem_saida').asstring := '';
      qrserial_produto.fieldbyname('situacao').asinteger := 1;

      rdigitado.value := rdigitado.value - 1;
      rdiferenca.Value := rdigitado.value - rtotal.value;
    end;

end;

procedure Tfrmproduto_serial_saida.Fechar1Click(Sender: TObject);
begin
  bgravarclick(frmproduto_serial_saida);
end;

end.