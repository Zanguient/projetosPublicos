unit ufiltromunic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmFiltroMunic = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnOK: TBitBtn;
    BtnCancel: TBitBtn;
    ediinformacao: TEdit;
    CbxCampo: TComboBox;
    CbxOrdPor: TComboBox;
    CbxOperacao: TComboBox;
    Operador: TLabel;
    cbxoperador: TComboBox;
    btnaplicar: TBitBtn;
    btnlimpar: TBitBtn;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxoperadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxCampoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxOperacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxoperadorKeyPress(Sender: TObject; var Key: Char);
    procedure CbxCampoKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOperacaoKeyPress(Sender: TObject; var Key: Char);
    procedure CbxOrdPorKeyPress(Sender: TObject; var Key: Char);
    procedure aplicarfiltro;
    procedure btnaplicarClick(Sender: TObject);
    procedure ediinformacaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure CbxCampoDropDown(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroMunic: TFrmFiltroMunic;

implementation

uses udados, ugeral, upesqMunic;

{$R *.dfm}

procedure TFrmFiltroMunic.BtnOKClick(Sender: TObject);
begin
  aplicarfiltro;
  close;
end;

procedure TFrmFiltroMunic.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltroMunic.FormShow(Sender: TObject);
begin

  cbxcampo.Items.Clear;
  cbxcampo.Items.Add('C�DIGO');
  cbxcampo.Items.Add('NOME');
  cbxcampo.Items.Add('N� IBGE');
  cbxcampo.Items.Add('FAIXA INICIAL');
  cbxcampo.Items.Add('FAIXA FINAL');
  cbxcampo.ItemIndex := 1;

  cbxOrdPor.Items.Clear;
  cbxOrdPor.Items.Add('C�DIGO');
  cbxOrdPor.Items.Add('NOME');
  cbxOrdPor.Items.Add('N� IBGE');
  cbxOrdPor.ItemIndex := frmpesqMunic.iClassificar;
  
  cbxOperacao.Items.Clear;
  cbxOperacao.Items.Add('IGUAL');
  cbxOperacao.Items.Add('DIFERENTE DE');
  cbxOperacao.Items.Add('MENOR OU IGUAL');
  cbxOperacao.Items.Add('MAIOR OU IGUAL');
  cbxOperacao.Items.Add('MENOR');
  cbxOperacao.Items.Add('MAIOR');
  cbxOperacao.Items.Add('QUALQUER PARTE');
  cbxOperacao.ItemIndex := 0;

  cbxOperador.Items.Clear;
  cbxOperador.Items.Add('E');
  cbxOperador.Items.Add('OU');


  if frmpesqMunic.sfiltro = '' then
     begin
       cbxOperador.Enabled := false;
     end
  else
     begin
       cbxOperador.Enabled := true;
       cbxOPerador.ItemIndex := 0;
     end;
  //endi


  ediinformacao.SetFocus;
end;

procedure TFrmFiltroMunic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmFiltroMunic:=nil;
  form_ativo := '';

end;

procedure TFrmFiltroMunic.cbxoperadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroMunic.CbxCampoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroMunic.CbxOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroMunic.CbxOrdPorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key :=0;
end;

procedure TFrmFiltroMunic.cbxoperadorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroMunic.CbxCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroMunic.CbxOperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroMunic.CbxOrdPorKeyPress(Sender: TObject;
  var Key: Char);
begin
key :=#0;
end;

procedure TFrmFiltroMunic.aplicarfiltro;
var
  sCampo:STRING;
  sOperacao:STRING;
  sOrdem:STRING;
  sFiltro:STRING;
  sInformacao:string;
begin

  CASE cbxOrdPor.ItemIndex OF
    0:begin
        sOrdem:='codigo';
        frmpesqMunic.sclassificar := 'C�DIGO';
      end;
    1:begin
        sOrdem:='nome';
        frmpesqMunic.sclassificar := 'NOME';
      end;
    2:begin
        sOrdem:='codibge';
        frmpesqMunic.sclassificar := 'N� IBGE';
      end;
  ELSE
    sOrdem:='';
  END;

  with frmdados do
    begin
      cds_Munic.IndexName :=  sOrdem;
      frmpesqMunic.iclassificar := cbxOrdPor.ItemIndex;
      frmpesqMunic.sOrdenado := sOrdem;
      frmpesqMunic.stbrodape.Panels[1].Text := 'ORDENADO POR '+frmpesqMunic.sclassificar;
      frmpesqMunic.lbllocalizar.Caption :=  frmpesqMunic.sclassificar;
      frmpesqMunic.edilocalizar.Text := '';
    end;
  //endth

  if(ediinformacao.Text <> '')then
    begin

      if (cbxoperador.Enabled) then
         if (cbxoperador.Text = '') then
            exit;
         //endi
      //endi


      if cbxCampo.Text = '' then
         Exit;
      //endi

      if cbxoperacao.Text = '' then
         Exit;
      //endi

      if cbxOrdPor.Text = '' then
         Exit;
      //endi

      Case cbxcampo.ItemIndex OF
        0:sCampo:='CODIGO';
        1:sCampo:='NOME';
        2:sCampo:='CODIBGE';
        3:sCampo:='FXINICIAL';
        4:sCampo:='FXFINAL';

      Else
        exit;
      End;

      CASE CbxOperacao.ItemIndex OF
        0:sOperacao:='=';
        1:sOperacao:='<>';
        2:sOperacao:='<=';
        3:sOperacao:='>=';
        4:sOperacao:='<';
        5:sOperacao:='>';
        6:sOPeracao:=' LIKE '+QUOTEDSTR('%'+ediinformacao.Text+'%');
      ELSE
        exit;
      END;

      if (CbxOperacao.ItemIndex<=5) then
         begin
           if cbxcampo.ItemIndex = 0 then
              sinformacao := ediinformacao.Text
           else
              if cbxcampo.ItemIndex = 3 then
                 sinformacao := ediinformacao.Text
              else
                 if cbxcampo.ItemIndex = 4 then
                    sinformacao := ediinformacao.Text
                 else
                    sinformacao := Quotedstr(ediinformacao.Text);
                 //endi
              //endi
           //endi
           sFiltro:=sFiltro + sCampo + sOperacao + sinformacao;
         end
      else
         begin
           sFiltro:= sCampo + sOperacao ;
         end;
      //endi

      if cbxOperador.Enabled then
         begin
           if cbxOperador.ItemIndex = 0 then
              begin
                frmpesqMunic.sfiltro := frmpesqMunic.sfiltro +' AND ('+sfiltro+')';
              end
           else
              begin
                frmpesqMunic.sfiltro := frmpesqMunic.sfiltro +' OR ('+sfiltro+')';
              end;
           //endi
           frmpesqMunic.stitrel := frmpesqMunic.stitrel + ' '+cbxOperador.Text+' '+cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqMunic.stbrodape.Panels[0].Text := frmpesqMunic.stitrel;

         end
      else
         begin
           frmpesqMunic.sfiltro :='('+sfiltro+')';
           frmpesqMunic.stitrel := cbxcampo.Text+' '+cbxOperacao.Text+' '+QuotedStr(ediinformacao.Text);
           frmpesqMunic.stbrodape.Panels[0].Text := 'FILTRO '+frmpesqMunic.stitrel;
         end;
      //endi
      with frmdados do
        begin
          cds_Munic.Filtered := false;
          cds_Munic.Filter := frmpesqMunic.sfiltro;
          cds_Munic.Filtered := true;
        end;
      //endth

      if frmpesqmunic.pctdados.TabIndex = 1 then
         frmpesqmunic.carregaficha;
      //endi

      cbxoperador.Enabled := true;
      cbxoperador.ItemIndex := 0;


    end;
  //endi
end;

procedure TFrmFiltroMunic.btnaplicarClick(Sender: TObject);
begin
aplicarfiltro;
end;

procedure TFrmFiltroMunic.ediinformacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
if cbxcampo.ItemIndex = 0 then
   begin
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
     //endi
   end;
//endi

end;

procedure TFrmFiltroMunic.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_Munic.Filtered := false;
    cds_Munic.Filter := '';
  end;
//endi

frmpesqmunic.stbrodape.Panels[0].Text := '';
frmpesqmunic.sfiltro := '';
frmpesqmunic.stitrel := '';

cbxoperador.Enabled := false;
cbxoperador.ItemIndex := -1;

ediinformacao.Text := '';

if frmpesqmunic.pctdados.TabIndex = 1 then
   frmpesqmunic.carregaficha;
//endi


end;

procedure TFrmFiltroMunic.CbxCampoDropDown(Sender: TObject);
begin
ediinformacao.Text := '';
end;

end.
