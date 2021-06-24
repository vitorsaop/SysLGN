unit mainPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, dxStatusBar,
  dxRibbonStatusBar, cxClasses, dxRibbon, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, ExtCtrls, jpeg, UCBase, UCSettings;

type
  TfmMainPrincipal = class(TForm)
    rb: TdxRibbon;
    BarradeStatus: TdxRibbonStatusBar;
    bm: TdxBarManager;
    rtCadastros: TdxRibbonTab;
    rtProcessos: TdxRibbonTab;
    rtConfiguracoes: TdxRibbonTab;
    bmCadastros: TdxBar;
    barVeiculos: TdxBar;
    btnVeiculos: TdxBarLargeButton;
    btnCadastroGeral: TdxBarLargeButton;
    actManager: TActionManager;
    actCadastros: TAction;
    actVeiculos: TAction;
    actLanctoOficios: TAction;
    actUsoVeiculos: TAction;
    actTrocarUser: TAction;
    actPerfil: TAction;
    actAlterarSenha: TAction;
    barUsuarios: TdxBar;
    btnTrocarUser: TdxBarButton;
    btnTrocarSenha: TdxBarButton;
    btnAlterarPerfil: TdxBarButton;
    bmGeral: TdxBar;
    btnConfiguracoes: TdxBarLargeButton;
    actConfiguracoes: TAction;
    actFuncoes: TAction;
    actClasses: TAction;
    actAgenciaFin: TAction;
    actAtividade: TAction;
    dxBarSubItem1: TdxBarSubItem;
    btnAgenciaFin: TdxBarButton;
    btnAtividade: TdxBarButton;
    btnFuncoes: TdxBarButton;
    btnClasses: TdxBarButton;
    rtRelatorios: TdxRibbonTab;
    bmRelatorioCadastros: TdxBar;
    bmOficios: TdxBar;
    btnLanctoOficios: TdxBarLargeButton;
    bmUsoVeiculos: TdxBar;
    btnUsoVeiculos: TdxBarLargeButton;
    btnRelatorioFuncionarios: TdxBarButton;
    btnRelatorioAlunos: TdxBarButton;
    actRelatorioFuncionarios: TAction;
    actRelatorioAlunos: TAction;
    img: TImage;
    UCControls1: TUCControls;
    UserControl1: TUserControl;
    actRelatorioFuncionarioAusencias: TAction;
    barRelatorioFuncionarioAusencias: TdxBarButton;
    actTipoViagem: TAction;
    btnTipoViagem: TdxBarButton;
    bmRelatorioProcessos: TdxBar;
    barRelatorioViagens: TdxBarButton;
    actRelatorioUsoVeiculos: TAction;
    barRelatorioOficios: TdxBarButton;
    actTipoVeiculos: TAction;
    actImplementos: TAction;
    btnImplementos: TdxBarButton;
    btnTipoVeiculos: TdxBarButton;
    btnUsoTratores: TdxBarLargeButton;
    actUsoTratores: TAction;
    actRelatorioDespesasTratores: TAction;
    dxBarButton1: TdxBarButton;
    actCombustivel: TAction;
    btnCombustivel: TdxBarButton;
    btnUsoCombustivel: TdxBarLargeButton;
    actUsoCombustivel: TAction;
    actRelatorioDespesas: TAction;
    actLanctoAusencias: TAction;
    btnLanctoAusencias: TdxBarButton;
    procedure actCadastrosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actTrocarUserExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actConfiguracoesExecute(Sender: TObject);
    procedure actFuncoesExecute(Sender: TObject);
    procedure actClassesExecute(Sender: TObject);
    procedure actLanctoOficiosExecute(Sender: TObject);
    procedure actUsoVeiculosExecute(Sender: TObject);
    procedure actAtividadeExecute(Sender: TObject);
    procedure actAgenciaFinExecute(Sender: TObject);
    procedure actRelatorioFuncionariosExecute(Sender: TObject);
    procedure actRelatorioAlunosExecute(Sender: TObject);
    procedure actVeiculosExecute(Sender: TObject);
    procedure actRelatorioFuncionarioAusenciasExecute(Sender: TObject);
    procedure actTipoViagemExecute(Sender: TObject);
    procedure actRelatorioUsoVeiculosExecute(Sender: TObject);
    procedure actImplementosExecute(Sender: TObject);
    procedure actTipoVeiculosExecute(Sender: TObject);
    procedure actUsoTratoresExecute(Sender: TObject);
    procedure actRelatorioDespesasTratoresExecute(Sender: TObject);
    procedure actCombustivelExecute(Sender: TObject);
    procedure actUsoCombustivelExecute(Sender: TObject);
    procedure actRelatorioDespesasExecute(Sender: TObject);
    procedure actLanctoAusenciasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainPrincipal: TfmMainPrincipal;
  procedure CallMainPrincipal;

implementation

uses
  bslMSG,
  bslXProcs,
  utlClasses,
  utlFuncoes,
  dataLGN,
  dataIMG,
  cadGeral,
  cadFuncoes,
  cadClasses,
  cadAgenciaFin,
  cadAtividades,
  cadVeiculos,
  cadImplementos,
  cadTipoViagem,
  cadTipoVeiculos,
  cadCombustivel,
  lanctoAusencias,
  oficios,
  agenda,
  agendaTratores,
  combustivelAvulso,
  relatorioFuncionarios,
  relatorioAlunos,
  relatorioFuncionariosDocentesAusencias,
  relatorioViagens,
  relatorioViagensTratores,
  relatorioDespesas,
  configuracoes;


{$R *.dfm}

procedure CallMainPrincipal;
begin
  try
    Application.CreateForm(TfmMainPrincipal,fmMainPrincipal);
    fmMainPrincipal.ShowModal;
  finally
    FreeAndNil(fmMainPrincipal);
  end;
end;

procedure TfmMainPrincipal.actClassesExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou cadastro de classes.');
  CallCadClasses;
end;

procedure TfmMainPrincipal.actCombustivelExecute(Sender: TObject);
begin
  CallCadCombustivel;
end;

procedure TfmMainPrincipal.actConfiguracoesExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou configurações do sistema.');
  CallConfiguracoes;
end;

procedure TfmMainPrincipal.actAgenciaFinExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou cadastro de agência financeira. ');
  CallCadAgenciaFin;
end;

procedure TfmMainPrincipal.actUsoCombustivelExecute(Sender: TObject);
begin
  CallCombustivelAvulso;
end;

procedure TfmMainPrincipal.actUsoTratoresExecute(Sender: TObject);
begin
  CallAgendaTratores;
end;

procedure TfmMainPrincipal.actUsoVeiculosExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou registro de uso de veículos ');
  CallAgenda;
end;

procedure TfmMainPrincipal.actAtividadeExecute(Sender: TObject);
begin
  CallCadAtividades;
end;

procedure TfmMainPrincipal.actCadastrosExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou cadastro geral. ');
  CallCadGeral;
end;

procedure TfmMainPrincipal.actFuncoesExecute(Sender: TObject);
begin
  CallCadFuncoes;
end;

procedure TfmMainPrincipal.actImplementosExecute(Sender: TObject);
begin
  CallCadImplementos;
end;

procedure TfmMainPrincipal.actLanctoAusenciasExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou lancto. de férias.');
  CallLanctoAusencias(UserControl1, UCControls1);
end;

procedure TfmMainPrincipal.actLanctoOficiosExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou lancto. oficios ');
  CallOficios(UserControl1, UCControls1);
end;

procedure TfmMainPrincipal.actRelatorioAlunosExecute(Sender: TObject);
begin
  CallRelatorioAlunos;
end;

procedure TfmMainPrincipal.actRelatorioFuncionarioAusenciasExecute(
  Sender: TObject);
begin
  CallrelatorioFuncionariosDocentesAusencias;
end;

procedure TfmMainPrincipal.actRelatorioFuncionariosExecute(Sender: TObject);
begin
  CallRelatorioFuncionarios;
end;

procedure TfmMainPrincipal.actRelatorioUsoVeiculosExecute(Sender: TObject);
begin
  CallRelatorioViagens;
end;

procedure TfmMainPrincipal.actRelatorioDespesasExecute(Sender: TObject);
begin
  CallRelatorioDespesas;
end;

procedure TfmMainPrincipal.actRelatorioDespesasTratoresExecute(Sender: TObject);
begin
  CallRelatorioViagensTratores;
end;

procedure TfmMainPrincipal.actTipoVeiculosExecute(Sender: TObject);
begin
  CallCadTipoVeiculos;
end;

procedure TfmMainPrincipal.actTipoViagemExecute(Sender: TObject);
begin
  CallTipoViagem;
end;

procedure TfmMainPrincipal.actTrocarUserExecute(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfmMainPrincipal.actVeiculosExecute(Sender: TObject);
begin
  UserControl1.Log('Acessou cadastro de veículos ');
  CallCadastroVeiculos;
end;

procedure TfmMainPrincipal.FormCreate(Sender: TObject);
begin
  UserControl1.Execute;
end;

procedure TfmMainPrincipal.FormShow(Sender: TObject);
begin
  BarradeStatus.Panels[0].Text  := 'Usuário: '+ UserControl1.CurrentUser.UserName;
  BarradeStatus.Panels[1].Text  := 'E-mail:  '+ UserControl1.CurrentUser.Email;
end;

end.



