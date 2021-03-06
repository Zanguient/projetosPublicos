unit urelrecdia1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, DBCtrls;

type
  Tfrmrelrecdia1 = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbltittot: TQRLabel;
    lbltotal: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    iPag:integer;
    ftotal:real;
  public
    { Public declarations }
  end;

var
  frmrelrecdia1: Tfrmrelrecdia1;

implementation
   uses udados, ugeral, upesqrec;
{$R *.dfm}

procedure Tfrmrelrecdia1.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmrelrecdia1.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag := 0;
ftotal := 0;

lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
lbltit1.Caption := datetostr(date);
lbltit3.Caption := 'Contas';
lbltit4.Caption := frmpesqrec.sTitRel;

end;

procedure Tfrmrelrecdia1.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  lbltotal.Caption := '';
  lbltittot.caption := '';
  with frmdados do
    begin
      if cds_vencto.Eof then
        begin
          //dbx_exec.Active := false;
          //dbx_exec.SQL.Clear;
          //dbx_exec.SQL.Add('Select sum(valor) as total from vencimentos where ehvenda = '+quotedstr('T'));
          //dbx_exec.Active := true;
          lbltittot.caption := 'Total';
          lbltotal.Caption := formatfloat('###,###,##0.00',ftotal);
        end;
      //endi

    end;
  //endi


end;

procedure Tfrmrelrecdia1.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ftotal := ftotal + frmdados.Cds_Vencto.fieldbyname('valor').asfloat;
end;

end.
