program PSysCom;

uses
  Forms,
  windows,
  UPesqAluno in 'UPesqAluno.pas' {FrmPesqAluno},
  UMenuPrincipal in 'UMenuPrincipal.pas' {FrmPrincipal},
  UCadAluno in 'UCadAluno.pas' {FrmCadAluno},
  USplah in 'USplah.pas' {FrmSplash},
  USobre in 'USobre.pas' {FrmSobre},
  UDados in 'UDados.pas' {FrmDados: TDataModule},
  UFiltroAluCurso in 'UFiltroAluCurso.pas' {FrmFiltroAluCurso},
  UFiltrarAluno in 'UFiltrarAluno.pas' {FrmFiltroAluno},
  UPeriEspecial in 'UPeriEspecial.pas' {FrmPerEspecial},
  UDP in 'UDP.pas' {FrmDP},
  uGeral in 'Ugeral.pas',
  UProjeto in 'UProjeto.pas' {FrmProjeto},
  UObsPai in 'UObsPai.pas' {FrmObsPai},
  URelAluTurma in 'URelAluTurma.pas' {FrmRelAluTurma},
  UCadSerie in 'UCadSerie.pas' {FrmCadSerie},
  UPesqSerie in 'UPesqSerie.pas' {FrmPesqSerie},
  UPesqMat in 'UPesqMat.pas' {FrmPesqMat},
  UCadMateria in 'UCadMateria.pas' {FrmCadMateria},
  UCadAluTurma in 'UCadAluTurma.pas' {FrmCadAluTurma},
  UObsNotasFaltas in 'UObsNotasFaltas.pas' {FrmObsNotasFaltas},
  UIndices in 'UIndices.pas' {FrmIndices},
  USerieMat in 'USerieMat.pas' {FrmSerieMat},
  UFiltroSerie in 'UFiltroSerie.pas' {FrmFiltroSerie},
  UFiltroMaterias in 'UFiltroMaterias.pas' {FrmFiltroMaterias},
  uconfbcofb in 'uconfbcofb.pas' {frmconfbcofb},
  URelNotas in 'URelNotas.pas' {FrmRelNotas},
  UMensalidade in 'UMensalidade.pas' {FrmMensalidade},
  UPesqUsuEAcesso in 'UPesqUsuEAcesso.pas' {frmpnivelace},
  UObsMae in 'UObsMae.pas' {FrmObsMae},
  URelAlunos in 'URelAlunos.pas' {FrmRelAlunos},
  UAluProjeto in 'UAluProjeto.pas' {FrmAluProjeto},
  URelAlunosAbaixoMedia in 'URelAlunosAbaixoMedia.pas' {FrmRelAlunosAbaixoMedia},
  URelEmails in 'URelEmails.pas' {FrmRelEmails},
  URelMatriculadosAte in 'URelMatriculadosAte.pas' {FrmRelMatriculadosAte},
  URelAluProj in 'URelAluProj.pas' {FrmRelAluProj},
  URelSerieAluProj in 'URelSerieAluProj.pas' {FrmRelSerieAluProj},
  UEscSerieEProj in 'UEscSerieEProj.pas' {FrmEscSerieEProj},
  URelBoletos in 'URelBoletos.pas' {FrmRelBoletos},
  URelMatriculadosMes in 'URelMatriculadosMes.pas' {FrmRelMatriculadosMes},
  URelCancelMatriculaMes in 'URelCancelMatriculaMes.pas' {FrmRelCancelMatriculaMes},
  URelAluDocPendentes in 'URelAluDocPendentes.pas' {FrmRelAluDocPendentes},
  URelAluPerIntegral in 'URelAluPerIntegral.pas' {FrmRelAluPerIntegral},
  URelAluPerEspecial in 'URelAluPerEspecial.pas' {FrmRelAluPerEspecial},
  URelAluAlmocoCol in 'URelAluAlmocoCol.pas' {FrmRelAluAlmocoCol},
  URelPagApostilas in 'URelPagApostilas.pas' {FrmRelPagApostilas},
  URelEntregaApostilas in 'URelEntregaApostilas.pas' {FrmRelEntregaApostilas},
  URelNF in 'URelNF.pas' {FrmRelNF},
  URelReciboMes in 'URelReciboMes.pas' {FrmRelReciboMes},
  UAluPedInf in 'UAluPedInf.pas' {FrmAluPedInf},
  URelEmailsAluPedInf in 'URelEmailsAluPedInf.pas' {FrmRelEmailsAluPedInf},
  URelAluDevemSec in 'URelAluDevemSec.pas' {FrmRelAluDevemSec},
  URelAluDevemAdv in 'URelAluDevemAdv.pas' {FrmRelAluDevemAdv},
  URelPasELemb in 'URelPasELemb.pas' {FrmRelPasELemb},
  UFichaIndAlu in 'UFichaIndAlu.pas' {FrmFichaIndAlu},
  UPesqAlu in 'UPesqAlu.pas' {FrmPesqAlu},
  URelFichaIndAlu in 'URelFichaIndAlu.pas' {FrmRelFichaIndAlu},
  UPesqGradCur in 'UPesqGradCur.pas' {FrmPesqGradCur},
  UPesqCurso in 'UPesqCurso.pas' {FrmPesqCurso},
  URelGradCurEF in 'URelGradCurEF.pas' {FrmRelGradCurEF},
  URelGradCurEI in 'URelGradCurEI.pas' {FrmRelGradCurEI},
  URelGradCurEM in 'URelGradCurEM.pas' {FrmRelGradCurEM},
  UPesqCalendario in 'UPesqCalendario.pas' {FrmPesqCalendario},
  URelCalendario in 'URelCalendario.pas' {FrmRelCalendario},
  UPesqContasRec in 'UPesqContasRec.pas' {FrmPesqContasRec},
  UFiltroContas in 'UFiltroContas.pas' {FrmFiltroContas},
  URelAssejt in 'URelAssejt.pas' {FrmRelAssejt},
  URelHistFund in 'URelHistFund.pas' {FrmRelHistFund},
  UPesqHistorico in 'UPesqHistorico.pas' {FrmPesqHistorico},
  UProcAluno in 'UProcAluno.pas' {FrmProcAluno},
  URelHistInf in 'URelHistInf.pas' {FrmRelHistInf},
  URelHistMedio in 'URelHistMedio.pas' {FrmRelHistMedio},
  UBaixaConta in 'UBaixaConta.pas' {FrmBaixaConta},
  UGeraContas in 'UGeraContas.pas' {FrmGeraContas},
  UDadosCheque in 'UDadosCheque.pas' {FrmDadosCheque},
  UEscFormPgto in 'UEscFormPgto.pas' {FrmEscFormPgto},
  UPesqEvento in 'UPesqEvento.pas' {FrmPesqEvento},
  UProcEvento in 'UProcEvento.pas' {FrmProcEvento},
  UFiltroEvento in 'UFiltroEvento.pas' {FrmFiltroEvento},
  URelAlunosSerie in 'URelAlunosSerie.pas' {FrmRelAlunosSerie},
  UAlunoPiloto in 'UAlunoPiloto.pas' {FrmrelAlunoPiloto},
  URelNotaDet in 'URelNotaDet.pas' {FrmRelNotaDet},
  URelRecibo in 'URelRecibo.pas' {FrmRelRecibo},
  uPesqRecibo in 'uPesqRecibo.pas' {FrmPesqRecibo},
  UMsgRecibo in 'UMsgRecibo.pas' {FrmMsgRecibo},
  URelPgmtos in 'URelPgmtos.pas' {FrmRelPgmtos},
  UFrmPesqContasRecNubia in 'UFrmPesqContasRecNubia.pas' {FrmPesqContasRecNubia},
  UFIltroContasNubia in 'UFIltroContasNubia.pas' {FrmFiltroContasNubia},
  UObsConta in 'UObsConta.pas' {FrmObsContas},
  URelContasDiaria in 'URelContasDiaria.pas' {FrmRelContasDiaria},
  UEscSerie in 'UEscSerie.pas' {FrmEscSerie},
  URelPgmtosAss1A4 in 'URelPgmtosAss1A4.pas' {FrmRelPgmtosAss1A4},
  uRelPgmtosAss5A8 in 'uRelPgmtosAss5A8.pas' {FrmRelPgmtosAss5a8},
  URelContasRecebidas in 'URelContasRecebidas.pas' {FrmRelContasRecebidas},
  URelEventos in 'URelEventos.pas' {FrmRelEventos},
  UEscSerieEEvento in 'UEscSerieEEvento.pas' {FrmEscSerieEEvento},
  usangria in 'usangria.pas' {frmsangria},
  uingestao in 'uingestao.pas' {frmingestao},
  ucaixaap in 'Ucaixaap.pas' {frmcaixaap},
  urelcaixaap in 'urelcaixaap.pas' {frmrelcaixaap},
  upesqsangria in 'upesqsangria.pas' {frmpesqsangria},
  ufiltrosangria in 'ufiltrosangria.pas' {FrmFiltroSangria},
  urelsangria in 'urelsangria.pas' {FrmRelsangria},
  urellistamatricula in 'urellistamatricula.pas' {frmrellistamatricula},
  ufiltrolistamatricula in 'ufiltrolistamatricula.pas' {frmfiltrolistamatricula},
  URelAluPorSerie in 'URelAluPorSerie.pas' {FrmRelAlunosPorSerie},
  URelAluPorSeriePiloto in 'URelAluPorSeriePiloto.pas' {FrmRelAlunosPorSeriePiloto};

{$R *.res}

begin
  Application.Initialize;
  FrmSplash:=TFrmSplash.Create(application);
  FrmSplash.Show;
  FrmSplash.Refresh;
  Application.CreateForm(TFrmDados, FrmDados);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Sleep(1500);
  FrmSplash.Free;
  FrmPrincipal:= TFrmPrincipal.Create(Application);
  Application.Run;
end.
