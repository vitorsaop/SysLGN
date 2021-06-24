program SysLGN;

uses
  Forms,
  dataLGN in 'dataLGN.pas' {dmLGN: TDataModule},
  utlClasses in 'utlClasses.pas',
  utlConstantes in 'utlConstantes.pas',
  configuracoes in 'configuracoes.pas' {fmConfiguracoes},
  utlFuncoes in 'utlFuncoes.pas',
  mainPrincipal in 'mainPrincipal.pas' {fmMainPrincipal},
  dataImg in 'dataImg.pas' {dmImg: TDataModule},
  basePesquisa in 'base\basePesquisa.pas' {fmBasePesquisa},
  baseCadastroSimples in 'base\baseCadastroSimples.pas' {fmBaseCadastroSimples},
  baseCadastro in 'base\baseCadastro.pas' {fmBaseCadastro},
  cadFuncoes in 'cadFuncoes.pas' {fmCadFuncoes},
  cadClasses in 'cadClasses.pas' {fmCadClasses},
  pesquisarCadGeral in 'pesquisarCadGeral.pas' {fmPesquisarCadGeral},
  cadGeral in 'cadGeral.pas' {fmCadGeral},
  oficios in 'oficios.pas' {fmLanctoOficios},
  digitalizar in 'digitalizar.pas' {fmDigitalizar},
  pesquisarOficios in 'pesquisarOficios.pas' {fmPesquisarOficios},
  selecionarEmails in 'selecionarEmails.pas' {fmSelecionarEmails},
  splash in 'splash.pas' {fmSplash},
  agenda in 'agenda.pas' {fmAgenda},
  pesquisarCidades in 'pesquisarCidades.pas' {fmPesquisarCidades},
  cadAtividades in 'cadAtividades.pas' {fmCadAtividades},
  pesquisarAtividades in 'pesquisarAtividades.pas' {fmPesquisarAtividades},
  cadAgenciaFin in 'cadAgenciaFin.pas' {fmCadAgenciaFin},
  pesquisarAgenciaFin in 'pesquisarAgenciaFin.pas' {fmPesquisarAgenciaFin},
  ajustarData in 'ajustarData.pas' {fmAjustarData},
  relatorioFuncionarios in 'relatorioFuncionarios.pas' {fmRelatorioFuncionarios},
  relatorioAlunos in 'relatorioAlunos.pas' {fmRelatorioAlunos},
  reservaAgenda in 'reservaAgenda.pas' {fmReservaAgenda},
  cadVeiculos in 'cadVeiculos.pas' {fmCadVeiculos},
  pesquisarVeiculos in 'pesquisarVeiculos.pas' {fmPesquisarVeiculos},
  relatorioFuncionariosDocentesAusencias in 'relatorioFuncionariosDocentesAusencias.pas' {fmRelatorioFuncionariosDocentesAusencias},
  cadTipoViagem in 'cadTipoViagem.pas' {fmCadTipoViagem},
  pesquisarTipoViagem in 'pesquisarTipoViagem.pas' {fmPesquisarTipoViagem},
  cadImplementos in 'cadImplementos.pas' {fmCadImplementos},
  pesquisarImplementos in 'pesquisarImplementos.pas' {fmPesquisarImplementos},
  cadTipoVeiculos in 'cadTipoVeiculos.pas' {fmCadTipoVeiculos},
  pesquisarTipoVeiculos in 'pesquisarTipoVeiculos.pas' {fmPesquisarTipoVeiculos},
  agendaTratores in 'agendaTratores.pas' {fmAgendaTratores},
  reservaAgendaTratores in 'reservaAgendaTratores.pas' {fmReservaAgendaTrator},
  relatorioViagensTratores in 'relatorioViagensTratores.pas' {fmRelatorioViagensTratores},
  cadCombustivel in 'cadCombustivel.pas' {fmCadCombustivel},
  pesquisarCombustivel in 'pesquisarCombustivel.pas' {fmPesquisarCombustivel},
  combustivelAvulso in 'combustivelAvulso.pas' {fmCombustivelAvulso},
  relatorioDespesas in 'relatorioDespesas.pas' {fmRelatorioDespesas},
  ajustarValorCombustivel in 'ajustarValorCombustivel.pas' {fmAjustarValorCombustivel},
  lanctoAusencias in 'lanctoAusencias.pas' {fmLanctoAusencias},
  relatorioViagens in 'relatorioViagens.pas' {fmRelatorioViagens};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title             := 'Sistema Dep. de Genética.';
  CallSplash;
  Application.CreateForm(TdmImg, dmImg);
  Application.CreateForm(TdmLGN, dmLGN);
  Application.Run;
end.
