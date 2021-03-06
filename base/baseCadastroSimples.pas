unit baseCadastroSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ActnList, StdCtrls, Buttons, ExtCtrls, DB, DBClient,
  sSkinManager, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm, cxGraphics,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxNavigator,
  cxDBNavigator, DBAdvNavigator, dxBarDBNav;

type
  TfmBaseCadastroSimples = class(TForm)
    pn: TPanel;
    btnPesquisar: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    act: TActionList;
    actNovo: TAction;
    actPesquisar: TAction;
    actEditar: TAction;
    actCancelar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actSair: TAction;
    btnNovo: TBitBtn;
    dbNav: TcxDBNavigator;
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dbnav_Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure dbnavClick(Sender: TObject; Button: TAdvNavigateBtn);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FDataSet  : TClientDataSet;
    procedure HabilitaControles;
    procedure HabilitaControlesVisuais(Status: Boolean);
    procedure ChangeEnter(Sender: TObject);
    procedure ChangeExit(Sender: TObject);
    { Private declarations }
  public
     property DataSet         : TClientDataSet read FDataSet         write FDataSet;
    { Public declarations }
  protected
    ACampo  : String;
    { Protected declararions}
  end;

var
  fmBaseCadastroSimples: TfmBaseCadastroSimples;

implementation

{$R *.dfm}

uses
  bslMsg,
  bslXProcs,
  utlClasses,
  dataIMG,
  dataLGN;


procedure TfmBaseCadastroSimples.actCancelarExecute(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      DataSet.Cancel;
      HabilitaControles;
      HabilitaControlesVisuais(False);
    except on E:Exception do
      begin
        Warning('Erro cancelar : '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastroSimples.actEditarExecute(Sender: TObject);
begin
  if not Question('Deseja editar o registro?') then
    Exit;
  
  try
    iniciarTransacao;
    try
      DataSet.Edit;
    except on E:Exception do
      begin
        Warning('Erro ao editar : '+E.Message);
        rollback;
      end;
    end;
    HabilitaControles;
    HabilitaControlesVisuais(True);
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastroSimples.actExcluirExecute(Sender: TObject);
begin
  if not Question('Deseja exclu?r o regitro?') then
    Exit;

  try
    iniciarTransacao;
    if (not DataSet.IsEmpty) then
    begin
      try
        DataSet.Delete;
        DataSet.ApplyUpdates(0);
        DataSet.Close;
        DataSet.Open;
      except on E:Exception do
        begin
          Warning('Erro ao excluir: '+E.Message);
          rollback;
        end;
      end;
    end
    else
      Warning('N?o existe registros a serem exclu?dos.');

    HabilitaControles;
    HabilitaControlesVisuais(False);
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastroSimples.actGravarExecute(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      DataSet.Post;
      DataSet.ApplyUpdates(0);
      DataSet.Refresh;
      DesktopAlert('Cadastro efetuado com sucesso.', daInformacao);
    except on E:Exception do
      begin
        rollback;
        Information('Erro ao gravar : '+#13+E.Message);
      end;
    end;
  finally
    terminartransacao;
    HabilitaControles;
    HabilitaControlesVisuais(False);
  end;
end;

procedure TfmBaseCadastroSimples.actNovoExecute(Sender: TObject);
var
  nn : TNextNum;
begin
  try
    try
      iniciarTransacao;
      nn := TNextNum.Create;
      DataSet.Insert;
      nn.Campo                             := ACampo;
      DataSet.FieldByName(ACampo).AsString := nn.GetChave;
      DataSet.Post;
      DataSet.ApplyUpdates(0);
      DataSet.Close;
      DataSet.Open;
      DataSet.Last;
      DataSet.Edit;
      HabilitaControles;
      HabilitaControlesVisuais(True);
    except on E:Exception do
      begin
        Warning('Erro ao incluir : '+E.Message);
        rollback;
      end;
    end;
  finally
    terminarTransacao;
    FreeAndNil(nn);
  end;
end;

procedure TfmBaseCadastroSimples.actPesquisarExecute(Sender: TObject);
begin
  HabilitaControles;
  HabilitaControlesVisuais(False);
end;

procedure TfmBaseCadastroSimples.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmBaseCadastroSimples.dbnavClick(Sender: TObject;
  Button: TAdvNavigateBtn);
begin
  HabilitaControles;
end;

procedure TfmBaseCadastroSimples.dbnav_Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  HabilitaControles;
end;

procedure TfmBaseCadastroSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataSet.Active  := False;
end;

procedure TfmBaseCadastroSimples.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (DataSet.State in [dsInsert, dsEdit]) then
  begin
    CanClose := False;
    Warning('Cadastro est? em modo (edi??o/inser??o)'+#13+'grave ou cancele antes de sair.');
  end
  else
    CanClose := True;
end;

procedure TfmBaseCadastroSimples.FormCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBEdit then
    begin
      TDBEdit(Components[I]).OnEnter := ChangeEnter;
      TDBEdit(Components[I]).OnExit  := ChangeExit;
    end
    else
    if Components[I] is TDBLookupComboBox then
    begin
      TDBLookupComboBox(Components[I]).OnEnter := ChangeEnter;
      TDBLookupComboBox(Components[I]).OnExit  := ChangeExit;
    end
    else
    if Components[I] is TDBComboBox then
    begin
      TDBComboBox(Components[I]).OnEnter := ChangeEnter;
      TDBComboBox(Components[I]).OnExit  := ChangeExit;
    end
    else
    if Components[I] is TDBMemo then
    begin
      TDBMemo(Components[I]).OnEnter := ChangeEnter;
      TDBMemo(Components[I]).OnExit  := ChangeExit;
    end
  end;
end;

procedure TfmBaseCadastroSimples.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2  : begin
               if btnNovo.Enabled then
                 btnNovo.Click;
             end;
    VK_F3  : begin
               if btnPesquisar.Enabled then
                 btnPesquisar.Click;
             end;
    VK_F4  : begin
               if btnEditar.Enabled then
                 btnEditar.Click;
             end;
    VK_F5  : begin
               if btnExcluir.Enabled then
                 btnExcluir.Click;
             end;
    VK_F6  : begin
               if btnExcluir.Enabled then
                 btnExcluir.Click;
             end;
    VK_F10 : begin
               if btnGravar.Enabled then
                btnGravar.Click;
             end;
    VK_F8  : begin
               if btnSair.Enabled then
                btnSair.Click;
             end;
  end;
end;

procedure TfmBaseCadastroSimples.FormShow(Sender: TObject);
begin
  DataSet.Active          := True;
  Width                   := 600;
  Height                  := 440;
  HabilitaControles;
  HabilitaControlesVisuais(False);
end;

procedure TfmBaseCadastroSimples.HabilitaControles;
begin
  btnPesquisar.Enabled        := not (DataSet.State in [dsInsert, dsEdit]);
  btnNovo.Enabled             := not (DataSet.State in [dsInsert, dsEdit]);
  dbNav.Enabled               := not (DataSet.State in [dsInsert, dsEdit]);

  btnExcluir.Enabled          := (DataSet.State     in [dsBrowse]);
  btnGravar.Enabled           := (DataSet.State     in [dsInsert, dsEdit]);
  btnEditar.Enabled           := (DataSet.State     in [dsBrowse]);
  btnCancelar.Enabled         := (DataSet.State     in [dsInsert, dsEdit]);
end;

procedure TfmBaseCadastroSimples.HabilitaControlesVisuais(Status: Boolean);
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBEdit then
      TDBEdit(Components[I]).Enabled := Status
    else
    if Components[I] is TDBLookupComboBox then
      TDBLookupComboBox(Components[I]).Enabled := Status
    else
    if Components[I] is TDBComboBox then
      TDBComboBox(Components[I]).Enabled := Status
    else
    if Components[I] is TDBMemo then
      TDBMemo(Components[I]).Enabled := Status;
  end;
end;

procedure TfmBaseCadastroSimples.ChangeEnter(Sender: TObject);
begin
  if Sender is TDBEdit then
    TDBEdit(Sender).Color := $00E6FED8
  else
  if Sender is TDBLookupComboBox then
    TDBLookupComboBox(Sender).Color := $00E6FED8
  else
  if Sender is TDBComboBox then
    TDBComboBox(Sender).Color := $00E6FED8
  else
  if Sender is TDBMemo then
    TDBMemo(Sender).Color := $00E6FED8
end;

procedure TfmBaseCadastroSimples.ChangeExit(Sender: TObject);
begin
  if Sender is TDBEdit then
    TDBEdit(Sender).Color := clWindow
  else
  if Sender is TDBLookupComboBox then
    TDBLookupComboBox(Sender).Color := clWindow
  else
  if Sender is TDBComboBox then
    TDBComboBox(Sender).Color := clWindow
  else
  if Sender is TDBMemo then
    TDBMemo(Sender).Color := clWindow;
end;

end.
