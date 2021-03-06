unit servico;
                                                                                                                                                    
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, AdvGlowButton;

type
  Tfrmservico = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsservico2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ERENDA: TRxDBCalcEdit;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    blocgrupo_servico: TBitBtn;
    DBEdit30: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel10: TBevel;
    bitbtn6: TAdvGlowButton;
    Label3: TLabel;
    ECOMISSAO: TRxDBCalcEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
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
    procedure DBEdit28Exit(Sender: TObject);
    procedure blocgrupo_servicoClick(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ERENDAExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ECOMISSAOKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmservico: Tfrmservico;
  comando : string;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_grupo_servico,
  grupo_servico, xloc_servico, lista_servicos2;

{$R *.dfm}


procedure Tfrmservico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmservico.FormShow(Sender: TObject);
begin

  frmmodulo.qrgrupo_servico.close;
  frmmodulo.qrgrupo_servico.sql.clear;
  frmmodulo.qrgrupo_servico.SQL.add('select * from c000012 order by grupo');
  frmmodulo.qrgrupo_servico.open;
  frmmodulo.qrgrupo_servico.IndexFieldNames := 'grupo';



  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrservico.close;
  frmmodulo.qrservico.SQL.clear;
  frmmodulo.qrservico.SQL.add('select * from c000011 order by codigo');
  frmmodulo.qrservico.open;
  frmmodulo.qrservico.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmservico.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmservico.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmservico.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrservico.insert;
  frmmodulo.qrservico.fieldbyname('codigo').asstring := frmprincipal.codifica('000011');
  pficha.Enabled := true;
  dbedit2.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;

procedure Tfrmservico.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN
    
    frmmodulo.qrservico.Edit;
    pficha.Enabled := true;
    dbedit2.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmservico.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir servico',4) then
  begin
    frmmodulo.qrservico.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmservico.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmservico.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

 if dbedit2.text = '' then
  begin
   application.messagebox('Favor informar o nome do Servi�o!','Aten��o',mb_ok+mb_iconerror);
   dbedit2.setfocus;
   exit;
  end;

 if DBEdit28.text = '' then
  begin
   application.messagebox('Favor informar o Grupo do Servi�o!','Aten��o',mb_ok+mb_iconerror);
   DBEdit28.setfocus;
   exit;
  end;

  if (frmmodulo.qrservico.State = dsinsert) or (frmmodulo.qrservico.State = dsedit) then
  begin

      frmmodulo.qrservico.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmservico.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrservico.State = dsinsert) or (frmmodulo.qrservico.State = dsedit) then
    begin
        if (frmmodulo.qrservico.State = dsinsert) then
        begin
          //frmprincipal.transMestre.active := true;
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000011''');
          frmprincipal.qrmestre.execsql;
          //frmprincipal.transMestre.commit;
        end;

      frmmodulo.qrservico.cancel;
    end;

  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmservico.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmservico.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrservico.first;
end;

procedure Tfrmservico.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrservico.last;
end;

procedure Tfrmservico.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrservico.prior;
end;

procedure Tfrmservico.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrservico.next;
end;

procedure Tfrmservico.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmservico.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrservico.state = dsinsert then
end;

procedure Tfrmservico.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmservico.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmservico.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmservico.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmservico.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmservico.DBEdit28Exit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrservico.state = dsinsert) or (frmmodulo.qrservico.State = dsedit) then
  begin
    frmmodulo.qrservico.fieldbyname('codgrupo').asstring := frmprincipal.zerarcodigo(dbedit28.text,6);
    if dbedit28.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrgrupo_servico,dbedit28.text,'codigo') then blocgrupo_servicoclick(Frmservico) else erenda.Setfocus
    else
      blocgrupo_servico.SetFocus;
  end;




end;

procedure Tfrmservico.blocgrupo_servicoClick(Sender: TObject);
begin
  frmloc_grupo_servico := tfrmloc_grupo_servico.create(self);
  frmloc_grupo_servico.showmodal;
  frmmodulo.qrservico.fieldbyname('codGRUPO').asstring := frmmodulo.qrgrupo_servico.fieldbyname('codigo').asstring;
  erenda.setfocus;
end;

procedure Tfrmservico.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmservico.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmservico.BitBtn6Click(Sender: TObject);
begin
  frmgrupo_servico := tfrmgrupo_servico.create(self);
  frmgrupo_servico.showmodal;

  frmmodulo.qrgrupo_servico.refresh;
end;

procedure Tfrmservico.blocalizarClick(Sender: TObject);
begin
  frmxloc_SERVICO := tfrmxloc_SERVICO.create(self);
  frmxloc_SERVICO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrSERVICO.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmservico.BitBtn5Click(Sender: TObject);
begin
  frmlista_servicos2 := tfrmlista_servicos2.create(self);
  frmlista_servicos2.showmodal;
end;

procedure Tfrmservico.ERENDAExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if ERENDA.Value = 0 then
    begin
      application.messagebox('Favor informar o valor do Servi�o!','Aten��o',mb_ok+mb_iconerror);
      ERENDA.setfocus;
      exit;
    end;
end;

procedure Tfrmservico.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome v�lido para este registro!','Aten��o',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;

end;

procedure Tfrmservico.ECOMISSAOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;

end;

end.




