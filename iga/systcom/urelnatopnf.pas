unit urelnatopnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelnatopnf = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabesalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmrelnatopnf: Tfrmrelnatopnf;

implementation
 uses udados ,ugeral ,upesqnatopnf ;
{$R *.dfm}

procedure Tfrmrelnatopnf.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldescricao.caption:=frmDados.Cds_NatOpNF.fieldbyname('DESCRICAO').AsString;
    lblcodigo.Caption:=frmDados.Cds_NatOpNF.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelnatopnf.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnatopnf.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Natureza Opera��o';
  lbltit4.Caption := frmpesqnatopnf.sTitRel;
end;

end.
