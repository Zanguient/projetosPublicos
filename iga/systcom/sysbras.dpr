program sysbras;

uses
  Forms,
  ufrente in 'ufrente.pas' {frmfrente},
  uecf in 'uecf.pas',
  uDados in 'udados.pas' {frmDados: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  uGeral in 'Ugeral.pas',
  uprincipal in 'uprincipal.pas' {frmprincipal},
  uvef in 'uvef.pas' {frmvef},
  uconfig in 'uconfig.pas' {frmconfig},
  uApDados in 'uApDados.pas' {frmApDados},
  upesqvfey in 'upesqvfey.pas' {frmpesqvefy},
  urelitenv in 'urelitenv.pas' {frmrelitenv},
  uconfbcofb in 'uconfbcofb.pas' {frmconfbcofb},
  uPesqVd in 'uPesqVd.pas' {frmPesqVd},
  upnivelace in 'upnivelace.pas' {frmpnivelace},
  upesqund in 'upesqund.pas' {frmPesqUnd},
  uPesqCli in 'uPesqCli.pas' {frmPesqcli},
  uCaixaapa in 'uCaixaapa.pas' {frmCaixaApa},
  uAtu in 'uAtu.pas',
  urelest_cr in 'urelest_cr.pas' {frmrelest_cr},
  urelrescla in 'urelrescla.pas' {frmrelrescla},
  uMRCla in 'uMRCla.pas' {frmMRCla},
  uMRrec in 'uMRrec.pas' {frmMRrec},
  uRelProdVB in 'uRelProdVB.pas' {frmrelprodVB},
  ubaixaAut in 'ubaixaAut.pas',
  uresto in 'uresto.pas',
  upesqclap in 'upesqclap.pas' {frmPesqclap},
  upesqcla in 'upesqcla.pas' {frmPesqcla},
  ucopiaapl2 in 'ucopiaapl2.pas' {frmcopiaapl2},
  uPesqVprod in 'uPesqVprod.pas' {frmPesqVProd},
  uIndice in 'uindice.pas' {frmIndice},
  uMROS in 'uMROS.pas' {frmMROS},
  uPesqVf in 'uPesqVf.pas' {frmPesqVf},
  upesqprod in 'upesqprod.pas' {frmpesqprodD},
  uPesqPro in 'upesqpro.pas' {frmPesqProd},
  ucopiaapl in 'ucopiaapl.pas' {frmcopiaapl},
  uimporcp in 'uimporcp.pas' {frmimporcp},
  ucopiaapl3 in 'ucopiaapl3.pas' {frmcopiaapl3},
  uetiqav in 'uetiqav.pas' {frmetiqav},
  uimpetqav in 'uimpetqav.pas' {frmimpetqav},
  urelrankp in 'urelrankp.pas' {frmrelrankp},
  Uemailped in 'Uemailped.pas' {frmemailped},
  upesqEprod in 'upesqEprod.pas' {frmPesqEProd},
  upesqfun in 'upesqfun.pas' {frmPesqfun},
  upesqforn in 'upesqforn.pas' {frmPesqforn},
  upesqSprod in 'upesqSprod.pas' {frmPesqSProd},
  upesqgru in 'upesqgru.pas' {frmPesqGru},
  urelest in 'urelest.pas' {frmrelest},
  ureldfatu in 'ureldfatu.pas' {frmreldfatu},
  uMRProd in 'uMRProd.pas' {frmMRProd},
  urelos in 'urelos.pas' {frmrelos},
  umultpagto in 'umultpagto.pas' {frmmultpgto},
  uMRpag in 'uMRpag.pas' {frmMRPag},
  urelpagar in 'urelpagar.pas' {frmrelpagar},
  urelrec in 'urelrec.pas' {frmrelrec},
  urelrecDia in 'urelrecdia.pas' {frmrelrecDia},
  upesqmatprima in 'upesqmatprima.pas' {frmPesqmatprima},
  uPesqAIFIS in 'uPesqAIFIS.pas' {frmPesqAliqImpFis},
  uPesqIPI in 'uPesqIPI.pas' {frmPesqIPI},
  upesqsita in 'upesqsita.pas' {frmPesqSITA},
  uPesqSitb in 'uPesqSitb.pas' {frmPesqsitb},
  upesqcf in 'upesqcf.pas' {frmPesqcf},
  uPesqNatOp in 'uPesqNatOp.pas' {frmPesqnatop},
  upesqtrans in 'upesqtrans.pas' {frmPesqtrans},
  uPesqfunc in 'uPesqfunc.pas' {frmPesqFunc},
  uPesqForc in 'uPesqForc.pas' {frmPesqforc},
  upesqcondpgto in 'upesqcondpgto.pas' {frmPesqcondpgto},
  upesqrep in 'upesqrep.pas' {frmPesqRep},
  upesqest in 'upesqest.pas' {frmPesqEst},
  upesqtipo_prod in 'upesqtipo_prod.pas' {frmPesqTipo_Prod},
  upesqnfe in 'upesqnfe.pas' {frmPesqNFE},
  upesqcfun in 'upesqcfun.pas' {frmPesqcfun},
  upesqcrep in 'upesqcrep.pas' {frmPesqcRep},
  upesqnf in 'upesqnf.pas' {frmPesqNF},
  ufecenf in 'ufecenf.pas' {frmfecenf},
  uimplpt in 'uimplpt.pas',
  uimpnf in 'uimpnf.pas' {frmimpnf},
  uMp20i in 'uMp20i.pas',
  uetiqenv in 'uetiqenv.pas' {frmetiqenv},
  ureldlu in 'ureldlu.pas' {frmreldlu},
  upesqeqp in 'upesqeqp.pas' {frmPesqEQP},
  upesqcmobra in 'upesqcmobra.pas' {frmPesqcmobra},
  upesqmod in 'upesqmod.pas' {frmPesqmod},
  upesqost in 'upesqost.pas' {frmPesqOST},
  ufecos in 'ufecos.pas' {frmfecOS},
  upesqcmobrad in 'upesqcmobrad.pas' {frmpesqcmobrad},
  ucopiaapl4 in 'ucopiaapl4.pas' {frmcopiaapl4},
  upesqtcc in 'upesqtcc.pas' {frmPesqtcc},
  upesqtpcli in 'upesqtpcli.pas' {frmPesqTpCli},
  urellistpr in 'urellistpr.pas' {frmrellistpr},
  umrcli in 'umrcli.pas' {frmMRcli},
  urelestmin in 'urelestmin.pas' {frmrelestmin},
  upesqrec in 'upesqrec.pas' {frmPesqRec},
  uingesp in 'uingesp.pas' {frmingestaop},
  usangriap in 'usangriap.pas' {frmsangriap},
  upesqrecbto in 'upesqrecbto.pas' {frmPesqRecbto},
  ubaixarec in 'ubaixarec.pas' {frmbaixarrec},
  urelani in 'urelani.pas' {frmrelani},
  uasenha in 'uasenha.pas' {frmAsenha},
  urelmovprod in 'urelmovprod.pas' {frmrelmovprod},
  upesqmunic in 'upesqmunic.pas' {frmPesqMunic},
  upesqpais in 'upesqpais.pas' {frmPesqPais},
  uPesqNatOpNF in 'uPesqNatOpNF.pas' {frmPesqnatopNF},
  upesqmodbcst in 'upesqmodbcst.pas' {frmPesqmodbcst},
  upesqmodbc in 'upesqmodbc.pas' {frmPesqmodbc},
  uemailmark in 'uemailmark.pas' {frmemailmark},
  upesqoimp in 'upesqoimp.pas' {frmPesqOimp},
  upesqvii in 'upesqvii.pas' {frmPesqvii},
  upesqir_ii in 'upesqir_ii.pas' {frmPesqir_ii},
  upesqcofins in 'upesqcofins.pas' {frmPesqCofins},
  upesqpis in 'upesqpis.pas' {frmPesqPIS},
  uconfint in 'uconfint.pas' {frmconfint},
  uimpped in 'uimpped.pas' {FrmImpPed},
  upesqtipotab in 'upesqtipotab.pas' {frmPesqTipoTab},
  upesqmat_rest in 'upesqmat_rest.pas' {frmPesqMat_Rest},
  upesqos in 'upesqos.pas' {frmPesqOS},
  uliqost in 'uliqost.pas' {frmliqost},
  ufecost in 'ufecost.pas' {frmfecOST},
  uimpost in 'uimpost.pas' {FrmImpOst},
  uqtdecoma in 'uqtdecoma.pas' {frmqtdecoma},
  uimpcoma in 'uimpcoma.pas' {frmimpcoma},
  uimpetqav29mm in 'uimpetqav29mm.pas' {frmimpetqav29mm},
  ufatorprod in 'ufatorprod.pas' {frmfatorprod},
  urelvf in 'urelvf.pas' {frmrelvf},
  umrvf in 'umrvf.pas' {frmmrvf},
  urelvfd in 'urelvfd.pas' {frmrelvfd},
  umrforc in 'umrforc.pas' {frmMRforc},
  urelforc in 'urelforc.pas' {frmrelforc},
  urelforcs in 'urelforcs.pas' {frmrelforcs},
  uetiqforc in 'uetiqforc.pas' {frmetiqforc},
  urelcli in 'urelcli.pas' {frmrelcli},
  urelclis in 'urelclis.pas' {frmrelclis},
  uetiqcli in 'uetiqcli.pas' {frmetiqcli},
  urelICMS in 'urelICMS.pas' {frmrelICMS},
  uMRICMS in 'uMRICMS.pas' {frmMRICMS},
  urelICMSs in 'urelICMSs.pas' {frmrelICMSs},
  uMRcf in 'uMRcf.pas' {frmMRcf},
  urelcfd in 'urelcfd.pas' {frmrelcfd},
  urelcfs in 'urelcfs.pas' {frmrelcfs},
  uMRcfun in 'uMRcfun.pas' {frmMRcfun},
  urelcfun in 'urelcfun.pas' {frmrelcfun},
  urelcfuns in 'urelcfuns.pas' {frmrelcfuns},
  urelcla in 'urelcla.pas' {frmrelcla},
  uRelclas in 'uRelclas.pas' {frmRelclas},
  urelmobra in 'urelmobra.pas' {frmrelmobra},
  uMRmobra in 'uMRmobra.pas' {frmMRmobra},
  urelmobras in 'urelmobras.pas' {frmrelmobras},
  uMRmobrad in 'uMRmobrad.pas' {frmMRmobrad},
  urelmobrad in 'urelmobrad.pas' {frmrelmobrad},
  urelmobrads in 'urelmobrads.pas' {frmrelmobrads},
  urelcofins in 'urelcofins.pas' {frmrelcofins},
  uMRcofins in 'uMRcofins.pas' {frmMRcofins},
  urelvporgrupo in 'urelvporgrupo.pas' {frmrelvporgrupo},
  urelcofinss in 'urelcofinss.pas' {frmrelcofinss},
  urelrep in 'urelrep.pas' {frmrelrep},
  uMRrep in 'uMRrep.pas' {frmMRrep},
  urelreps in 'urelreps.pas' {frmrelreps},
  urelcrep in 'urelcrep.pas' {frmrelcrep},
  uMRcrep in 'uMRcrep.pas' {frmMRcrep},
  urelcreps in 'urelcreps.pas' {frmrelcreps},
  ucaixadet in 'ucaixadet.pas' {frmCaixaDet},
  uMReprod in 'uMReprod.pas' {frmMReprod},
  ureleprod in 'ureleprod.pas' {frmreleprod},
  ureleprods in 'ureleprods.pas' {frmreleprods},
  urelEQP in 'urelEQP.pas' {frmreleqp},
  uMReqp in 'uMReqp.pas' {frmMReqp},
  uMRgru in 'uMRgru.pas' {frmMRgru},
  urelgru in 'urelgru.pas' {frmrelgru},
  uMRipi in 'uMRipi.pas' {frmMRipi},
  urelipi in 'urelipi.pas' {frmrelipi},
  uMRufest in 'uMRufest.pas' {frmMRufest},
  urelufest in 'urelufest.pas' {frmrelufest},
  urelforn in 'urelforn.pas' {frmrelforn},
  uMRlforn in 'uMRlforn.pas' {frmMRlforn},
  uMRmar in 'uMRmar.pas' {frmMRmar},
  urelmar in 'urelmar.pas' {frmrelmar},
  uMRmod in 'uMRmod.pas' {frmMRmod},
  urelmod in 'urelmod.pas' {frmrelmod},
  uMRmodbc in 'uMRmodbc.pas' {frmMRmodbc},
  urelmodbc in 'urelmodbc.pas' {frmrelmodbc},
  urelmodbcst in 'urelmodbcst.pas' {frmrelmodbcst},
  uMRmodbcst in 'uMRmodbcst.pas' {frmMRmodbcst},
  uMRmunic in 'uMRmunic.pas' {frmMRmunic},
  urelmunic in 'urelmunic.pas' {frmrelmunic},
  uMRnatop in 'uMRnatop.pas' {frmMRnatop},
  urelnatop in 'urelnatop.pas' {frmrelnatop},
  uMRnatopnf in 'uMRnatopnf.pas' {frmMRnatopnf},
  urelnatopnf in 'urelnatopnf.pas' {frmrelnatopnf},
  urelnf in 'urelnf.pas' {frmrelnf},
  uMRnf in 'uMRnf.pas' {frmMRnf},
  urelnfs in 'urelnfs.pas' {frmrelnfs},
  urelnfe in 'urelnfe.pas' {frmrelnfe},
  urelnfes in 'urelnfes.pas' {frmrelnfes},
  uMRnfe in 'uMRnfe.pas' {frmMRnfe},
  ureloimp in 'ureloimp.pas' {frmreloimp},
  uMRoimp in 'uMRoimp.pas' {frmMRoimp},
  urelpais in 'urelpais.pas' {frmrelpais},
  uMRpais in 'uMRpais.pas' {frmMRpais},
  uMRpis in 'uMRpis.pas' {frmMRpis},
  urelpis in 'urelpis.pas' {frmrelpis},
  uMRsita in 'uMRsita.pas' {frmMRsita},
  urelsita in 'urelsita.pas' {frmrelsita},
  uMRsitb in 'uMRsitb.pas' {frmMRsitb},
  urelsitb in 'urelsitb.pas' {frmrelsitb},
  urelSprod in 'urelSprod.pas' {frmrelSprod},
  uMRSprod in 'uMRSprod.pas' {frmMRSprod},
  uMRtcc in 'uMRtcc.pas' {frmMRtcc},
  ureltcc in 'ureltcc.pas' {frmreltcc},
  uMRtipo_prod in 'uMRtipo_prod.pas' {frmMRtipo_prod},
  uMRtipopgtov in 'uMRtipopgtov.pas' {frmMRtipopgtov},
  uMRtipotab in 'uMRtipotab.pas' {frmMRtipotab},
  uMRtpcli in 'uMRtpcli.pas' {frmMRtpcli},
  uMRtrans in 'uMRtrans.pas' {frmMRtrans},
  ureltipo_prod in 'ureltipo_prod.pas' {frmreltipo_prod},
  ureltipopgtov in 'ureltipopgtov.pas' {frmreltipopgtov},
  ureltipotab in 'ureltipotab.pas' {frmreltipotab},
  ureltpcli in 'ureltpcli.pas' {frmreltpcli},
  ureltrans in 'ureltrans.pas' {frmreltrans},
  uMRund in 'uMRund.pas' {frmMRund},
  urelund in 'urelund.pas' {frmrelund},
  ureltranss in 'ureltranss.pas' {frmreltranss},
  uMRvii in 'uMRvii.pas' {frmMRvii},
  urelvii in 'urelvii.pas' {frmrelvii},
  uMRir_ii in 'uMRir_ii.pas' {frmMRir_ii},
  urelir_ii in 'urelir_ii.pas' {frmrelir_ii},
  urelvdd in 'urelvdd.pas' {frmrelvdd},
  urellistprdif in 'urellistprdif.pas' {frmrellistprdif},
  uetiqjato in 'uetiqjato.pas' {frmetiqjato},
  ugeraqtdeetiq in 'ugeraqtdeetiq.pas' {frmgeraqtdeetiq},
  uescetiqjato in 'uescetiqjato.pas' {frmescetiqjato},
  uetiqjato60 in 'uetiqjato60.pas' {frmetiqjato60},
  uPesqSProdb in 'uPesqSProdb.pas' {frmPesqSProdb},
  uMRSprodb in 'uMRSprodb.pas' {frmMRSprodb},
  urelSprodb in 'urelSprodb.pas' {frmrelSprodb},
  upesqprodpfor in 'upesqprodpfor.pas' {frmpesqprodpfor},
  uMRvprodforn in 'uMRvprodforn.pas' {frmMRvprodforn},
  urelprodforn in 'urelprodforn.pas' {frmrelprodforn},
  uampliafoto in 'uampliafoto.pas' {frmampliafoto},
  uimpampliafoto in 'uimpampliafoto.pas' {frmimpampliafoto},
  uimpfolha2 in 'uimpfolha2.pas' {FrmImpfolha2},
  ucancelacaixaind in 'ucancelacaixaind.pas' {frmcancelacaixaind},
  upesqtipopgtov in 'upesqtipopgtov.pas' {frmPesqtipopgtov},
  uFecPed in 'uFecPed.pas' {frmfecped},
  upesqpag in 'upesqpag.pas' {frmPesqPag},
  upesqmar in 'upesqmar.pas' {frmPesqmar},
  uImpOS in 'uimpos.pas' {FrmImpOs},
  uimpproducao2 in 'uimpproducao2.pas' {Form1},
  uimpproducao3 in 'uimpproducao3.pas' {Form2},
  uimpproducao in 'uimpproducao.pas' {FrmImpProducao},
  baixarncm in 'baixarncm.pas' {frmbaixarncm},
  funcoes_ibpt in 'funcoes_ibpt.pas',
  upcodibge in 'upcodibge.pas' {frmpcodibge};

{$R *.res}

begin
  Application.Initialize;
  frmSplash :=tfrmSplash.Create(application);
  frmSplash.Show;
  frmSplash.Update;

  Application.Title := '- Systcom - Sistema de Informação';
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Atualizar;
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.
