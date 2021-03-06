unit baseCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, DBCtrls, StdCtrls, Buttons, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, Grids, DBGrids, Mask, cxPC, DB, DBClient, dxSkinsForm,
  sSkinManager, DBAdvNavigator, dxBarDBNav, cxNavigator, cxDBNavigator;

type
  TfmBaseCadastro = class(TfmBaseCadastroSimples)
    pc: TcxPageControl;
    tsEnderecos: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    editEndereco: TDBEdit;
    editNumero: TDBEdit;
    editCEP: TDBEdit;
    editComplemento: TDBEdit;
    editID_Cidade: TDBEdit;
    btnPesquisarCidade: TBitBtn;
    btnIncluirEndereco: TBitBtn;
    btnGravarEndereco: TBitBtn;
    tsTelefone: TcxTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbGridTelefones: TDBGrid;
    editTelefone: TDBEdit;
    editRamal: TDBEdit;
    btnIncluirTelefone: TBitBtn;
    btnGravarTelefone: TBitBtn;
    tsEmails: TcxTabSheet;
    Label9: TLabel;
    dbGridEmail: TDBGrid;
    editEmail: TDBEdit;
    btnIncluirEmail: TBitBtn;
    btnGravarEmail: TBitBtn;
    dbGridEnderecos: TDBGrid;
    cbTipoFone: TDBComboBox;
    editNomeCidade: TDBEdit;
    editBairro: TDBEdit;
    lbBairro: TLabel;
    btnEditarEndereco: TBitBtn;
    btnExcluirEndereco: TBitBtn;
    btnEditarTelefone: TBitBtn;
    btnExcluirTelefone: TBitBtn;
    btnEditarEmail: TBitBtn;
    btnExcluirEmail: TBitBtn;
    procedure btnIncluirEnderecoClick(Sender: TObject);
    procedure btnGravarEnderecoClick(Sender: TObject);
    procedure btnExcluirEnderecoClick(Sender: TObject);
    procedure btnIncluirTelefoneClick(Sender: TObject);
    procedure btnGravarTelefoneClick(Sender: TObject);
    procedure btnExcluirTelefoneClick(Sender: TObject);
    procedure btnIncluirEmailClick(Sender: TObject);
    procedure btnGravarEmailClick(Sender: TObject);
    procedure btnExcluirEmailClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure btnEditarEnderecoClick(Sender: TObject);
    procedure btnEditarTelefoneClick(Sender: TObject);
    procedure btnEditarEmailClick(Sender: TObject);
  private
    { Private declarations }
    FDataSetEndereco : TClientDataSet;
    FDataSetTelefone : TClientDataSet;
    FDataSetEmail    : TClientDataSet;
    procedure HabilitaControles;
  public
    { Public declarations }
    property DataSetEndereco : TClientDataSet read FDataSetEndereco write FDataSetEndereco;
    property DataSetTelefone : TClientDataSet read FDataSetTelefone write FDataSetTelefone;
    property DataSetEmail    : TClientDataSet read FDataSetEmail    write FDataSetEmail;
  end;

var
  fmBaseCadastro: TfmBaseCadastro;

implementation

{$R *.dfm}

uses
  bslMsg,
  bslXProcs,
  utlClasses,
  dataLGN;

procedure TfmBaseCadastro.HabilitaControles;
begin
  btnIncluirEndereco.Enabled      := not (DataSetEndereco.State in [dsEdit, dsInsert]) and (DataSet.State in [dsInsert, dsEdit]);
  btnGravarEndereco.Enabled       := (DataSetEndereco.State in [dsInsert, dsEdit]);
  btnExcluirEndereco.Enabled      := (DataSet.State         in [dsInsert, dsEdit]);
  btnPesquisarCidade.Enabled      := (DataSetEndereco.State in [dsInsert, dsEdit]);
  btnEditarEndereco.Enabled       := (not (DataSetEndereco.State in [dsInsert, dsEdit])) and (not DataSetEndereco.IsEmpty) and (DataSet.State in [dsEdit, dsInsert]);

  btnIncluirTelefone.Enabled      := not (DataSetTelefone.State in [dsEdit, dsInsert]) and (DataSet.State in [dsInsert, dsEdit]);
  btnGravarTelefone.Enabled       := (DataSetTelefone.State in [dsInsert, dsEdit]);
  btnExcluirTelefone.Enabled      := (DataSet.State         in [dsInsert, dsEdit]);
  btnEditarTelefone.Enabled       := (not (DataSetTelefone.State in [dsInsert, dsEdit])) and (not DataSetTelefone.IsEmpty)  and (DataSet.State in [dsEdit, dsInsert]);

  btnIncluirEmail.Enabled         := not (DataSetEmail.State in [dsEdit, dsInsert]) and (DataSet.State in [dsInsert, dsEdit]);
  btnGravarEmail.Enabled          := (DataSetEmail.State    in [dsInsert, dsEdit]);
  btnExcluirEmail.Enabled         := (DataSet.State         in [dsInsert, dsEdit]);
  btnEditarEmail.Enabled          := (not (DataSetEmail.State in [dsInsert, dsEdit])) and (not DataSetEmail.IsEmpty)        and (DataSet.State in [dsEdit, dsInsert]);
end;

procedure TfmBaseCadastro.actCancelarExecute(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      DataSetEndereco.Cancel;
      DataSetTelefone.Cancel;
      DataSetEmail.Cancel;
    except on E:Exception do
      begin
        Warning('Erro ao cancelar cadastro. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;

  inherited;
  HabilitaControles;
end;

procedure TfmBaseCadastro.actEditarExecute(Sender: TObject);
begin
  inherited;
  HabilitaControles;
end;

procedure TfmBaseCadastro.actExcluirExecute(Sender: TObject);
begin
  inherited;
  HabilitaControles;
end;

procedure TfmBaseCadastro.actGravarExecute(Sender: TObject);
begin
  inherited;
  HabilitaControles;
end;

procedure TfmBaseCadastro.actNovoExecute(Sender: TObject);
begin
  inherited;
  HabilitaControles;
end;

procedure TfmBaseCadastro.btnEditarEmailClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;

    if DataSetEmail.IsEmpty then
      Exit;

    if Question('Deseja editar email?') then
    begin
      try
        if not (DataSetEmail.State in [dsEdit, dsInsert]) then
          DataSetEmail.Edit;

      except on E:Exception do
        begin
          Warning('Erro ao editar email. '+E.Message);
          rollback;
        end;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnEditarEnderecoClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;

    if DataSetEndereco.IsEmpty then
      Exit;

    if Question('Deseja editar endere?o?') then
    begin
      try
        if not (DataSetEndereco.State in [dsEdit, dsInsert]) then
          DataSetEndereco.Edit;

      except on E:Exception do
        begin
          Warning('Erro ao editar endere?os. '+E.Message);
          rollback;
        end;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;

end;

procedure TfmBaseCadastro.btnEditarTelefoneClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;

    if DataSetTelefone.IsEmpty then
      Exit;

    if Question('Deseja editar telefone?') then
    begin
      try
        if not (DataSetTelefone.State in [dsEdit, dsInsert]) then
          DataSetTelefone.Edit;

      except on E:Exception do
        begin
          Warning('Erro ao editar telefone. '+E.Message);
          rollback;
        end;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnExcluirEmailClick(Sender: TObject);
begin
  inherited;
  if DataSetEmail.IsEmpty then
    Exit;
  try
    iniciarTransacao;
    if Question('Deseja excluir e-mail?') then
    begin
      try
        DataSetEmail.Delete;
        DataSetEmail.ApplyUpdates(0);
        DataSetEmail.Refresh;
      except on E:Exception do
        begin
          Warning('Erro ao excluir email : '+E.Message);
          rollback;
        end;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnExcluirEnderecoClick(Sender: TObject);
begin
  inherited;
  if DataSetEndereco.IsEmpty then
    Exit;

  try
    iniciarTransacao;
    try
      if Question('Deseja excluir o endere?o?') then
      begin
        DataSetEndereco.Delete;
        DataSetEndereco.ApplyUpdates(0);
        DataSetEndereco.Refresh;
      end;
      HabilitaControles;
    except on E:Exception do
      begin
        Warning('Erro ao excluir endere?o. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnExcluirTelefoneClick(Sender: TObject);
begin
  inherited;
  if DataSetTelefone.IsEmpty then
    Exit;
  try
    iniciarTransacao;
    try
      if Question('Deseja excluir o num. de telefone?') then
      begin
        DataSetTelefone.Delete;
        DataSetTelefone.ApplyUpdates(0);
        DataSetTelefone.Refresh;
      end;
    except on E:Exception do
      begin
        Warning('Erro ao exclu?r telefone. '+E.Message);
        rollback;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnGravarEmailClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      DataSetEmail.Post;
      DataSetEmail.ApplyUpdates(0);
      DataSetEmail.Refresh;
    except on E:Exception do
      begin
        Warning('Erro ao gravar email. '+E.Message);
        rollback;      
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnGravarEnderecoClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      DataSetEndereco.Post;
      DataSetEndereco.ApplyUpdates(0);
      DataSetEndereco.Refresh;
    except on E:Exception do
      begin
        Warning('Erro ao incluir endere?o. '+E.Message);
        Exit;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnGravarTelefoneClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      DataSetTelefone.Post;
      DataSetTelefone.ApplyUpdates(0);
      DataSetTelefone.Refresh;
    except on E:Exception do
      begin
        Warning('Eroo ao gravar telefone. '+E.Message);
        rollback;
      end;
    end;
    HabilitaControles;
    cbTipoFone.ItemIndex := -1;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnIncluirEmailClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      DataSetEmail.Insert;
    except on E:Exception do
      begin
        Warning('Erro ao incluir e-mail. '+E.Message);
        rollback;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnIncluirEnderecoClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      DataSetEndereco.Insert;
    except on E:Exception do
      begin
        Warning('Erro ao incluir endere?o. '+E.Message);
        rollback;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.btnIncluirTelefoneClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      DataSetTelefone.Insert;
    except on E:Exception do
      begin
        Warning('Erro ao incluir telefone. '+E.Message);
        rollback;
      end;
    end;
    HabilitaControles;
  finally
    terminartransacao;
  end;
end;

procedure TfmBaseCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DataSetEndereco.Active  := False;
  DataSetTelefone.Active  := False;
  DataSetEmail.Active     := False;
end;

procedure TfmBaseCadastro.FormShow(Sender: TObject);
begin
  inherited;
  DataSetEndereco.Active  := True;
  DataSetTelefone.Active  := True;
  DataSetEmail.Active     := True;
end;

end.
