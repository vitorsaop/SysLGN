unit lanctoAusencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, FMTBcd, DB, SqlExpr, StdCtrls, Buttons, DBCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Grids, DBGrids,
  Provider, DBClient, cxNavigator, Mask, UCBase;

type
  TfmLanctoAusencias = class(TForm)
    dbGridAusencias: TDBGrid;
    Label1: TLabel;
    cbTipoAusencia: TDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    editDataIni: TcxDBDateEdit;
    Label4: TLabel;
    editDataFim: TcxDBDateEdit;
    memoObsAusencias: TDBMemo;
    btnIncluirAusencias: TBitBtn;
    btnGravarAusencias: TBitBtn;
    btnEditarAusencias: TBitBtn;
    btnExcluirAusencias: TBitBtn;
    quCadGeral: TSQLQuery;
    quCadGeralAI: TIntegerField;
    quCadGeralID_CADGERAL: TStringField;
    quCadGeralNOME: TStringField;
    quAusencias: TSQLQuery;
    quAusenciasAI: TIntegerField;
    quAusenciasID_CADGERAL: TIntegerField;
    quAusenciasTIPO: TStringField;
    quAusenciasDATAINI: TDateField;
    quAusenciasDATAFIM: TDateField;
    quAusenciasOBS: TStringField;
    quAusenciasDATAINC: TDateField;
    quAusenciasHORAINC: TTimeField;
    quAusenciasUSUARIO: TStringField;
    pvCadGeral: TDataSetProvider;
    pvAusencias: TDataSetProvider;
    cdsCadGeral: TClientDataSet;
    cdsAusencias: TClientDataSet;
    dsCadGeral: TDataSource;
    dsAusencias: TDataSource;
    cdsAusenciasAI: TIntegerField;
    cdsAusenciasID_CADGERAL: TIntegerField;
    cdsAusenciasTIPO: TStringField;
    cdsAusenciasDATAINI: TDateField;
    cdsAusenciasDATAFIM: TDateField;
    cdsAusenciasOBS: TStringField;
    cdsAusenciasDATAINC: TDateField;
    cdsAusenciasHORAINC: TTimeField;
    cdsAusenciasUSUARIO: TStringField;
    cdsCadGeralAI: TIntegerField;
    cdsCadGeralID_CADGERAL: TStringField;
    cdsCadGeralNOME: TStringField;
    Label5: TLabel;
    editId_Cadastro: TDBEdit;
    editNome: TDBEdit;
    btnPesquisarCidade: TBitBtn;
    btnSair: TBitBtn;
    quCadGeralFLAGDOCENTE: TIntegerField;
    quCadGeralFLAGFUNCIONARIO: TIntegerField;
    quCadGeralFLAGALUNO: TIntegerField;
    quCadGeralFLAGOUTROS: TIntegerField;
    cdsCadGeralFLAGDOCENTE: TIntegerField;
    cdsCadGeralFLAGFUNCIONARIO: TIntegerField;
    cdsCadGeralFLAGALUNO: TIntegerField;
    cdsCadGeralFLAGOUTROS: TIntegerField;
    procedure btnGravarAusenciasClick(Sender: TObject);
    procedure btnPesquisarCidadeClick(Sender: TObject);
    procedure btnIncluirAusenciasClick(Sender: TObject);
    procedure btnEditarAusenciasClick(Sender: TObject);
    procedure btnExcluirAusenciasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dsAusenciasDataChange(Sender: TObject; Field: TField);
  private
    UCControls  : TUCControls;
    UserControl : TUserControl;
    function ValidarLancto: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLanctoAusencias: TfmLanctoAusencias;
  procedure CallLanctoAusencias(var AUserControl : TUserControl;
                                var AUCControls : TUCControls);

implementation

{$R *.dfm}

uses
  dataImg,
  dataLGN,
  bslMsg,
  bslXProcs,
  utlConstantes,
  ajustarData,
  pesquisarCadGeral,
  mainPrincipal,
  pesquisarCidades;

procedure CallLanctoAusencias(var AUserControl : TUserControl;
                              var AUCControls : TUCControls);
begin
  fmLanctoAusencias := TfmLanctoAusencias.Create(nil);
  try
    fmLanctoAusencias.UserControl := AUserControl;
    fmLanctoAusencias.UCControls  := AUCControls;
    fmLanctoAusencias.ShowModal;
  finally
    FreeAndNil(fmLanctoAusencias);
  end;
end;

function TfmLanctoAusencias.ValidarLancto : Boolean;
var
  msg : String;
begin
  Result := False;
  msg    := '';

  if Trim(editId_Cadastro.Text) = '' then
    msg := 'Necessário informar o docente ou funcionário.'+#13;

  if (cbTipoAusencia.ItemIndex = -1) then
    msg := 'Necessário informar o tipo de ausência.'+#13;

  if (Trim(editDataIni.Text) = '') or (Trim(editDataFim.Text) = '') then
    msg := 'Necessário informar o período de ausência.'+#13;

  if (Trim(editDataIni.Text) = '') and (editDataFim.Date > 0) then
    msg := 'Necessário informar o data de saída da ausência.'+#13;

  if (editDataIni.Date > 0) and (Trim(editDataFim.Text) = '') then
    msg := 'Necessário informar o data retorno da ausência.'+#13;

  if (editDataIni.Date > editDataFim.Date) then
    msg := 'Data saída não pode ser maior que a data de retorno.'+#13;

  if msg > '' then
  begin
    Information(msg);
    Result := True;
  end;
end;

procedure TfmLanctoAusencias.btnEditarAusenciasClick(Sender: TObject);
begin
  if not Question('Deseja editar ausência?') then
    Exit;

  try
    iniciarTransacao;
    try
      UCControls.UserControl.Log('editou a ausência tipo: '+cdsAusenciasTIPO.AsString+' cadastro: '+editNome.Text);
      cdsAusencias.Edit;
    except on E:Exception do
      begin
        Warning('Erro ao editar lancto. de ausência.');
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmLanctoAusencias.btnExcluirAusenciasClick(Sender: TObject);
begin
  if not Question('Deseja excluír ausência?') then
    Exit;

  try
    iniciarTransacao;
    try
      UCControls.UserControl.Log('excluíu a ausência tipo: '+cdsAusenciasTIPO.AsString+ ' cadastro: '+editNome.Text);
      cdsAusencias.Delete;
      cdsAusencias.ApplyUpdates(0);
    except on E:Exception do
      begin
        Warning('Erro ao excluir lancto. de ausência.');
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmLanctoAusencias.btnGravarAusenciasClick(Sender: TObject);
begin
  if ValidarLancto then
    Exit;

  try
    iniciarTransacao;
    try
      if cdsAusenciasUSUARIO.AsString = '' then
        cdsAusenciasUSUARIO.AsString := UCControls.UserControl.CurrentUser.UserName;

      cdsAusencias.Post;
      cdsAusencias.ApplyUpdates(0);
      UCControls.UserControl.Log('registrou a ausência tipo: '+cdsAusenciasTIPO.AsString+ ' cadastro: '+editNome.Text);
      DesktopAlert('Registro efetuado com sucesso.', daInformacao);
    except on E:Exception do
      begin
        Warning('Erro ao efetuar lancto. de ausência. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmLanctoAusencias.btnIncluirAusenciasClick(Sender: TObject);
begin
  if not Question('Deseja incluir ausência?') then
    Exit;

  try
    iniciarTransacao;
    try
      UCControls.UserControl.Log('inicíou uma inclusão.');
      cdsAusencias.Insert;

      cbTipoAusencia.Enabled := True;
      if cbTipoAusencia.CanFocus then
        cbTipoAusencia.SetFocus;

    except on E:Exception do
      begin
        Warning('Erro ao inserir lancto. de ausência.');
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmLanctoAusencias.btnPesquisarCidadeClick(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarCadGeral();
  if chave > 0 then
  begin
    cdsCadGeral.Open;
    cdsAusencias.Open;
    cdsCadGeral.IndexFieldNames := 'Ai';
    cdsCadGeral.FindKey([chave]);
    if (cdsCadGeralFLAGALUNO.AsInteger = 1) or (cdsCadGeralFLAGOUTROS.AsInteger = 1) then
    begin
      Warning('Cadastro: '+cdsCadGeralNOME.AsString+#13+'Não é um funcionário ou docente.');
      cdsAusencias.Close;
      cdsCadGeral.Close;
    end;
  end;
end;

procedure TfmLanctoAusencias.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmLanctoAusencias.dsAusenciasDataChange(Sender: TObject;
  Field: TField);
begin
  btnIncluirAusencias.Enabled     := not (cdsAusencias.State in [dsInsert, dsEdit]);
  btnExcluirAusencias.Enabled     := (not cdsAusencias.IsEmpty) and (not (cdsAusencias.State in [dsInsert, dsEdit]));
  btnGravarAusencias.Enabled      := (cdsAusencias.State in [dsInsert, dsEdit]);
  btnEditarAusencias.Enabled      := (not (cdsAusencias.State in [dsInsert, dsEdit])) and (not cdsAusencias.IsEmpty);
end;

procedure TfmLanctoAusencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsAusencias.Close;
  cdsCadGeral.Close;
end;

procedure TfmLanctoAusencias.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (cdsAusencias.State in [dsInsert, dsEdit]) then
  begin
    if (Question('registro de ausências não gravado,'+#13+
                '(os dados não serão confirmados),'+#13+
                'deseja realmente sair?')) then
    begin
      UCControls.UserControl.Log('saiu do registro de ausência sem gravar o cadastro: '+editNome.Text);
      CanClose := True
    end
    else
      CanClose := False;
  end
  else
    CanClose := True;
end;

procedure TfmLanctoAusencias.FormShow(Sender: TObject);
begin
  Width := 595;
end;

end.
