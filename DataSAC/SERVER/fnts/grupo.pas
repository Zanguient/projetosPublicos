unit grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, AdvGlowButton;

type
  Tfrmgrupo = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsgrupo2: TDataSource;
    qrgrupo: TZQuery;
    Relatrios1: TMenuItem;
    dsgrupo: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    panel99: TPanel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dssubgrupo: TDataSource;
    HeaderView2: THeaderView;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    BitBtn6: TBitBtn;
    Panel2: TPanel;
    wwDBGrid2: TwwDBGrid;
    BitBtn7: TBitBtn;
    dsgrade_subgrupo: TDataSource;
    DBEdit3: TDBEdit;
    BitBtn8: TBitBtn;
    EditarGrade1: TMenuItem;
    VoltarparaSubgrupo1: TMenuItem;
    ExcluirSubgrupo1: TMenuItem;
    ExcluirGrade1: TMenuItem;
    BitBtn9: TBitBtn;
    pesconde: TFlatPanel;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    Bevel2: TBevel;
    Bevel10: TBevel;
    MainMenu1: TMainMenu;
    ctrldek1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgrupo: Tfrmgrupo;
  comando : string;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_grupo;

{$R *.dfm}


procedure Tfrmgrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmgrupo.FormShow(Sender: TObject);
begin


  pgravar.visible := false;
  pgravar.Align := alClient;
  frmmodulo.qrgrupo.close;
  frmmodulo.qrgrupo.SQL.clear;
  frmmodulo.qrgrupo.SQL.add('select * from c000017 order by codigo');
  frmmodulo.qrgrupo.open;
  frmmodulo.qrgrupo.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmgrupo.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmgrupo.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmgrupo.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrgrupo.insert;
  frmmodulo.qrgrupo.fieldbyname('codigo').asstring := frmprincipal.codifica('000017');

      frmmodulo.qrGRADE_subgrupo.Close;
      frmmodulo.qrGRADE_subgrupo.SQL.clear;
      frmmodulo.qrGRADE_subgrupo.SQL.Add('select * from c000020 where codSUBgrupo = ''xxxxxx'' order by ORDEM');
      frmmodulo.qrGRADE_subgrupo.open;
  
  pficha.Enabled := true;
  dbedit2.setfocus;
  pgravar.Visible := true;
  pesconde.visible := false;

  PopupMenu := pop2;
end;

procedure Tfrmgrupo.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN
    pesconde.visible := false;

    frmmodulo.qrgrupo.Edit;
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

procedure Tfrmgrupo.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir grupo',4) then
  begin

    while frmmodulo.qrsubgrupo.RecordCount <> 0 do
    begin
      try
        frmmodulo.qrGRADE_subgrupo.Close;
        frmmodulo.qrGRADE_subgrupo.SQL.clear;
        frmmodulo.qrGRADE_subgrupo.SQL.Add('delete from c000020 where codSUBgrupo = '''+frmmodulo.qrSUBgrupo.fieldbyname('codigo').asstring+'''');
        frmmodulo.qrGRADE_subgrupo.execsql;
      except
      end;
      frmmodulo.qrsubgrupo.Delete;
    end;

    frmmodulo.qrgrupo.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmgrupo.blocalizarClick(Sender: TObject);
begin
  frmxloc_grupo := tfrmxloc_grupo.create(self);
  frmxloc_grupo.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrgrupo.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmgrupo.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmgrupo.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
   if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome v�lido para este grupo!','Aten��o',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;



  if (frmmodulo.qrsubgrupo.State = dsinsert) or (frmmodulo.qrsubgrupo.State = dsedit) then frmmodulo.qrsubgrupo.post;

  if (frmmodulo.qrgrupo.State = dsinsert) or (frmmodulo.qrgrupo.State = dsedit) then
  begin
      frmmodulo.qrgrupo.post;
  end;



  frmmodulo.qrgrade_subgrupo.Refresh;
  frmmodulo.qrsubgrupo.Refresh;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  pesconde.visible := true;





end;

procedure Tfrmgrupo.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrgrupo.State = dsinsert) or (frmmodulo.qrgrupo.State = dsedit) then
    begin
        if (frmmodulo.qrgrupo.State = dsinsert) then
        begin
          //frmprincipal.transMestre.active := true;
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000017''');
          frmprincipal.qrmestre.execsql;
          //frmprincipal.transMestre.commit;
        end;

      frmmodulo.qrgrupo.cancel;
    end;

  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

  pesconde.visible := true;

end;

procedure Tfrmgrupo.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmgrupo.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrgrupo.state = dsinsert then
end;

procedure Tfrmgrupo.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmgrupo.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmgrupo.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmgrupo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmgrupo.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmgrupo.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmgrupo.DBEdit1Change(Sender: TObject);
begin
  try
    frmmodulo.qrsubgrupo.Close;
    frmmodulo.qrsubgrupo.SQL.clear;
    frmmodulo.qrsubgrupo.SQL.Add('select * from c000018 where codgrupo = '''+frmmodulo.qrgrupo.fieldbyname('codigo').asstring+''' order by subgrupo');
    frmmodulo.qrsubgrupo.open;
  except
  end;
end;

procedure Tfrmgrupo.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmgrupo.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN WWDBGRID2.SETFOCUS;
end;

procedure Tfrmgrupo.DBEdit3Change(Sender: TObject);
begin
  try
    if dbedit3.text <> '' then
    begin
      frmmodulo.qrGRADE_subgrupo.Close;
      frmmodulo.qrGRADE_subgrupo.SQL.clear;
      frmmodulo.qrGRADE_subgrupo.SQL.Add('select * from c000020 where codSUBgrupo = '''+frmmodulo.qrSUBgrupo.fieldbyname('codigo').asstring+''' order by ORDEM');
      frmmodulo.qrGRADE_subgrupo.open;
    end;
  except
  end;
end;

procedure Tfrmgrupo.BitBtn6Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir numera��o',4) then
  begin
    frmmodulo.qrgrade_subgrupo.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmgrupo.BitBtn7Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir subgrupo',4) then
  begin

      try
        frmmodulo.qrGRADE_subgrupo.Close;
        frmmodulo.qrGRADE_subgrupo.SQL.clear;
        frmmodulo.qrGRADE_subgrupo.SQL.Add('delete from c000020 where codSUBgrupo = '''+frmmodulo.qrSUBgrupo.fieldbyname('codigo').asstring+'''');
        frmmodulo.qrGRADE_subgrupo.execsql;
      except
      end;

    frmmodulo.qrsubgrupo.Delete;




    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmgrupo.wwDBGrid1Enter(Sender: TObject);
begin
  if (frmmodulo.qrsubgrupo.State = dsinsert) or (frmmodulo.qrsubgrupo.State = dsedit) then
  begin
      frmmodulo.qrsubgrupo.post;
  end;
end;

procedure Tfrmgrupo.BitBtn8Click(Sender: TObject);
begin
  wwdbgrid1.setfocus;
end;

procedure Tfrmgrupo.BitBtn9Click(Sender: TObject);
begin
  wwdbgrid2.setfocus;
end;

procedure Tfrmgrupo.wwDBGrid1Exit(Sender: TObject);
begin
  if (frmmodulo.qrgrade_subgrupo.State = dsinsert) or (frmmodulo.qrgrade_subgrupo.State = dsedit) then
  begin
      frmmodulo.qrgrade_subgrupo.post;
  end;

end;

procedure Tfrmgrupo.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if dbedit2.text = '' then
   begin
     application.messagebox('Favor informar um nome v�lido para este registro!','Aten��o',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;

end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
