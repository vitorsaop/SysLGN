unit cadGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastro, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, ActnList, DBCtrls, StdCtrls, Grids,
  DBGrids, Mask, cxPC, Buttons, ExtCtrls, FMTBcd, Provider, DB, SqlExpr,
  DBClient, cxContainer, cxEdit, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, DBAdvSmoothDatePicker, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, JvExMask, JvToolEdit, JvDBControls,
  sMaskEdit, sCustomComboEdit, sTooledit, sDBDateEdit, acAlphaHints,
  sSkinProvider, sSkinManager, JvComponentBase, JvBalloonHint, JvExControls,
  JvEnterTab, ImgList, dxSkinsForm, Menus, cxNavigator, cxDBNavigator, cxButtons,
  ACBrBase, ACBrValidador, DBAdvNavigator, dxBarDBNav, UCBase;

type
  TfmCadGeral = class(TfmBaseCadastro)
    quCadGeral: TSQLQuery;
    quEnderecos: TSQLQuery;
    quTelefones: TSQLQuery;
    quEmails: TSQLQuery;
    quAusencias: TSQLQuery;
    pvCadGeral: TDataSetProvider;
    pvEnderecos: TDataSetProvider;
    pvTelefones: TDataSetProvider;
    pvEmails: TDataSetProvider;
    pvAusencias: TDataSetProvider;
    cdsCadGeral: TClientDataSet;
    cdsEnderecos: TClientDataSet;
    cdsTelefones: TClientDataSet;
    cdsEmails: TClientDataSet;
    cdsAusencias: TClientDataSet;
    dsCadGeral: TDataSource;
    dsEnderecos: TDataSource;
    dsTelefones: TDataSource;
    dsEmails: TDataSource;
    quTelefonesAI: TIntegerField;
    quTelefonesTELEFONE: TStringField;
    quTelefonesRAMAL: TStringField;
    quTelefonesDATAINC: TDateField;
    quTelefonesHORAINC: TTimeField;
    quEmailsAI: TIntegerField;
    quEmailsEMAIL: TStringField;
    quEmailsDATAINC: TDateField;
    quEmailsHORAINC: TTimeField;
    cdsCadGeralAI: TIntegerField;
    cdsCadGeralNOME: TStringField;
    cdsCadGeralRG: TStringField;
    cdsCadGeralCPF: TStringField;
    cdsCadGeralID_USP: TStringField;
    cdsCadGeralOBS: TStringField;
    cdsCadGeralID_FUNCAO: TIntegerField;
    cdsCadGeralID_CLASSE: TIntegerField;
    cdsCadGeralFLAGDOCENTE: TIntegerField;
    cdsCadGeralSTATUS: TIntegerField;
    cdsCadGeralDATAINC: TDateField;
    cdsCadGeralHORAINC: TTimeField;
    cdsTelefonesAI: TIntegerField;
    cdsTelefonesTELEFONE: TStringField;
    cdsTelefonesRAMAL: TStringField;
    cdsTelefonesDATAINC: TDateField;
    cdsTelefonesHORAINC: TTimeField;
    cdsEmailsAI: TIntegerField;
    cdsEmailsEMAIL: TStringField;
    cdsEmailsDATAINC: TDateField;
    cdsEmailsHORAINC: TTimeField;
    cdsAusenciasAI: TIntegerField;
    cdsAusenciasDATAINI: TDateField;
    cdsAusenciasDATAFIM: TDateField;
    cdsAusenciasDATAINC: TDateField;
    cdsAusenciasHORAINC: TTimeField;
    editId_Cad: TDBEdit;
    editNome: TDBEdit;
    editRG: TDBEdit;
    editCPF: TDBEdit;
    editNumUSP: TDBEdit;
    ckStatus: TDBCheckBox;
    tsAusencias: TcxTabSheet;
    Label15: TLabel;
    dbGridAusencias: TDBGrid;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    btnIncluirAusencias: TBitBtn;
    btnGravarAusencias: TBitBtn;
    memoObsAusencias: TDBMemo;
    tsAdicionais: TcxTabSheet;
    memoOBS: TDBMemo;
    dsAusencias: TDataSource;
    editDataIni: TcxDBDateEdit;
    editDataFim: TcxDBDateEdit;
    cdsAusenciasTIPO: TStringField;
    cbTipoAusencia: TDBComboBox;
    JvBalloonHint1: TJvBalloonHint;
    JvEnterAsTab1: TJvEnterAsTab;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    cdsCadGeralID_CADGERAL: TStringField;
    cdsCadGeralFLAGFUNCIONARIO: TIntegerField;
    cdsCadGeralFLAGOUTROS: TIntegerField;
    ckDocente: TDBCheckBox;
    ckOutros: TDBCheckBox;
    cdsCadGeralUSUARIO: TStringField;
    ckAluno: TDBCheckBox;
    quAtividades_Alunos: TSQLQuery;
    pvAtividades_Alunos: TDataSetProvider;
    cdsAtividades_Alunos: TClientDataSet;
    dsAtividade_Alunos: TDataSource;
    quAgencia: TSQLQuery;
    pvAgencia: TDataSetProvider;
    cdsAgencia: TClientDataSet;
    dsAgencia: TDataSource;
    quAtividade: TSQLQuery;
    pvAtividade: TDataSetProvider;
    cdsAtividade: TClientDataSet;
    dsAtividade: TDataSource;
    tsAtividade: TcxTabSheet;
    Label20: TLabel;
    DBLookupAgenciaFin: TDBLookupComboBox;
    Label21: TLabel;
    DBLookupAtividade: TDBLookupComboBox;
    DBCheckBox2: TDBCheckBox;
    dbGridAtividades: TDBGrid;
    btnIncluirAtividades: TBitBtn;
    btnGravarAtividades: TBitBtn;
    quAusenciasAI: TIntegerField;
    quAusenciasID_CADGERAL: TIntegerField;
    quAusenciasTIPO: TStringField;
    quAusenciasDATAINI: TDateField;
    quAusenciasDATAFIM: TDateField;
    quAusenciasDATAINC: TDateField;
    quAusenciasHORAINC: TTimeField;
    quAusenciasUSUARIO: TStringField;
    cdsAusenciasID_CADGERAL: TIntegerField;
    cdsAusenciasUSUARIO: TStringField;
    quCadGeralAI: TIntegerField;
    quCadGeralID_CADGERAL: TStringField;
    quCadGeralNOME: TStringField;
    quCadGeralRG: TStringField;
    quCadGeralCPF: TStringField;
    quCadGeralID_USP: TStringField;
    quCadGeralOBS: TStringField;
    quCadGeralID_FUNCAO: TIntegerField;
    quCadGeralID_CLASSE: TIntegerField;
    quCadGeralFLAGDOCENTE: TIntegerField;
    quCadGeralFLAGFUNCIONARIO: TIntegerField;
    quCadGeralFLAGALUNO: TIntegerField;
    quCadGeralFLAGOUTROS: TIntegerField;
    quCadGeralSTATUS: TIntegerField;
    quCadGeralUSUARIO: TStringField;
    quCadGeralDATAINC: TDateField;
    quCadGeralHORAINC: TTimeField;
    cdsCadGeralFLAGALUNO: TIntegerField;
    quEnderecosAI: TIntegerField;
    quEnderecosID_CADGERAL: TIntegerField;
    quEnderecosID_CIDADE: TIntegerField;
    quEnderecosENDERECO: TStringField;
    quEnderecosNUMERO: TStringField;
    quEnderecosCOMPLEMENTO: TStringField;
    quEnderecosUSUARIO: TStringField;
    quEnderecosCEP: TStringField;
    quEnderecosDATAINC: TDateField;
    quEnderecosHORAINC: TTimeField;
    quTelefonesID_CADGERAL: TIntegerField;
    quTelefonesUSUARIO: TStringField;
    quEmailsID_CADGERAL: TIntegerField;
    quEmailsUSUARIO: TStringField;
    quAtividades_AlunosAI: TIntegerField;
    quAtividades_AlunosID_CADGERAL: TIntegerField;
    quAtividades_AlunosID_ATIVIDADE: TIntegerField;
    quAtividades_AlunosID_AGENCIAFIN: TIntegerField;
    quAtividades_AlunosSTATUS: TIntegerField;
    quAtividades_AlunosDATAATIVINI: TDateField;
    quAtividades_AlunosDATAATIVFIM: TDateField;
    quAtividades_AlunosDATAAGEINI: TDateField;
    quAtividades_AlunosDATAAGEFIM: TDateField;
    quAtividades_AlunosDATAINC: TDateField;
    quAtividades_AlunosHORAINC: TTimeField;
    quAtividades_AlunosUSUARIO: TStringField;
    quAgenciaAI: TIntegerField;
    quAgenciaID_AGENCIAFIN: TStringField;
    quAgenciaNOME: TStringField;
    quAgenciaDATAINC: TDateField;
    quAgenciaHORAINC: TTimeField;
    quAgenciaUSUARIO: TStringField;
    quAtividadeAI: TIntegerField;
    quAtividadeID_ATIVIDADE: TStringField;
    quAtividadeNOME: TStringField;
    quAtividadeUSUARIO: TStringField;
    quAtividadeDATAINC: TDateField;
    quAtividadeHORAINC: TTimeField;
    cdsTelefonesID_CADGERAL: TIntegerField;
    cdsTelefonesUSUARIO: TStringField;
    cdsEmailsID_CADGERAL: TIntegerField;
    cdsEmailsUSUARIO: TStringField;
    cdsAtividadeAI: TIntegerField;
    cdsAtividadeID_ATIVIDADE: TStringField;
    cdsAtividadeNOME: TStringField;
    cdsAtividadeUSUARIO: TStringField;
    cdsAtividadeDATAINC: TDateField;
    cdsAtividadeHORAINC: TTimeField;
    cdsAgenciaAI: TIntegerField;
    cdsAgenciaID_AGENCIAFIN: TStringField;
    cdsAgenciaNOME: TStringField;
    cdsAgenciaDATAINC: TDateField;
    cdsAgenciaHORAINC: TTimeField;
    cdsAgenciaUSUARIO: TStringField;
    cdsAtividades_AlunosAI: TIntegerField;
    cdsAtividades_AlunosID_CADGERAL: TIntegerField;
    cdsAtividades_AlunosID_ATIVIDADE: TIntegerField;
    cdsAtividades_AlunosID_AGENCIAFIN: TIntegerField;
    cdsAtividades_AlunosSTATUS: TIntegerField;
    cdsAtividades_AlunosDATAATIVINI: TDateField;
    cdsAtividades_AlunosDATAATIVFIM: TDateField;
    cdsAtividades_AlunosDATAAGEINI: TDateField;
    cdsAtividades_AlunosDATAAGEFIM: TDateField;
    cdsAtividades_AlunosDATAINC: TDateField;
    cdsAtividades_AlunosHORAINC: TTimeField;
    cdsAtividades_AlunosUSUARIO: TStringField;
    cdsAtividades_AlunosLKNOMEATIVIDADE: TStringField;
    cdsAtividades_AlunosLKNOMEAGENCIA: TStringField;
    img: TImageList;
    cdsEnderecosAI: TIntegerField;
    cdsEnderecosID_CADGERAL: TIntegerField;
    cdsEnderecosID_CIDADE: TIntegerField;
    cdsEnderecosENDERECO: TStringField;
    cdsEnderecosNUMERO: TStringField;
    cdsEnderecosCOMPLEMENTO: TStringField;
    cdsEnderecosUSUARIO: TStringField;
    cdsEnderecosCEP: TStringField;
    cdsEnderecosDATAINC: TDateField;
    cdsEnderecosHORAINC: TTimeField;
    ACBrValidador1: TACBrValidador;
    quTelefonesTIPO: TStringField;
    cdsTelefonesTIPO: TStringField;
    quCidades: TSQLQuery;
    quCidadesAI: TIntegerField;
    quCidadesID_UF: TIntegerField;
    quCidadesUF: TStringField;
    quCidadesCIDADE: TStringField;
    pvCidades: TDataSetProvider;
    cdsCidades: TClientDataSet;
    cdsCidadesAI: TIntegerField;
    cdsCidadesID_UF: TIntegerField;
    cdsCidadesUF: TStringField;
    cdsCidadesCIDADE: TStringField;
    dsCidades: TDataSource;
    cdsEnderecosCalcNomeCidade: TStringField;
    cdsEnderecosCalcUF: TStringField;
    cdsEnderecosNOMECIDADE: TStringField;
    editID_Docente: TDBEdit;
    docente: TLabel;
    btnPesquisarDocente: TBitBtn;
    editNomeDocente: TDBEdit;
    quAtividades_AlunosID_DOCENTE: TIntegerField;
    cdsAtividades_AlunosID_DOCENTE: TIntegerField;
    quDocentes: TSQLQuery;
    pvDocentes: TDataSetProvider;
    cdsDocentes: TClientDataSet;
    quDocentesAI: TIntegerField;
    quDocentesNOME: TStringField;
    cdsDocentesAI: TIntegerField;
    cdsDocentesNOME: TStringField;
    dsDocentes: TDataSource;
    cdsAtividades_AlunosLKNOMEDOCENTE: TStringField;
    quEnderecosBAIRRO: TStringField;
    cdsEnderecosBAIRRO: TStringField;
    Label10: TLabel;
    btnEditarAusencias: TBitBtn;
    btnExcluirAusencias: TBitBtn;
    btnEditarAtividades: TBitBtn;
    btnExcluirAtividades: TBitBtn;
    quAtividadeTIPO: TStringField;
    cdsAtividadeTIPO: TStringField;
    quTelefonesOBS: TStringField;
    cdsTelefonesOBS: TStringField;
    quAusenciasOBS: TStringField;
    cdsAusenciasOBS: TStringField;
    memoObsTelefone: TDBMemo;
    Label22: TLabel;
    quOficios: TSQLQuery;
    pvOficios: TDataSetProvider;
    cdsOficios: TClientDataSet;
    quOficiosAI: TIntegerField;
    quOficiosID_LGN: TStringField;
    quOficiosID_DESTINATARIO: TIntegerField;
    quOficiosASSUNTO: TStringField;
    quOficiosID_SOLICITANTE: TIntegerField;
    quOficiosOBS: TStringField;
    quOficiosDATAOFICIO: TDateField;
    quOficiosDATAINC: TDateField;
    quOficiosHORAINC: TTimeField;
    quOficiosUSUARIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure cdsEnderecosNewRecord(DataSet: TDataSet);
    procedure cdsTelefonesNewRecord(DataSet: TDataSet);
    procedure cdsEmailsNewRecord(DataSet: TDataSet);
    procedure cdsAusenciasNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCadGeralDataChange(Sender: TObject; Field: TField);
    procedure btnIncluirAusenciasClick(Sender: TObject);
    procedure btnGravarAusenciasClick(Sender: TObject);
    procedure btnExcluirAusenciasClick(Sender: TObject);
    procedure cdsCadGeralAfterScroll(DataSet: TDataSet);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dbGridAtividadesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnGravarAtividadesClick(Sender: TObject);
    procedure btnIncluirAtividadesClick(Sender: TObject);
    procedure btnExcluirAtividadesClick(Sender: TObject);
    procedure cdsAtividades_AlunosNewRecord(DataSet: TDataSet);
    procedure dsAusenciasDataChange(Sender: TObject; Field: TField);
    procedure dsAtividade_AlunosDataChange(Sender: TObject; Field: TField);
    procedure ckAlunoClick(Sender: TObject);
    procedure ckDocenteClick(Sender: TObject);
    procedure cdsCadGeralAfterOpen(DataSet: TDataSet);
    procedure cdsCadGeralCPFValidate(Sender: TField);
    procedure btnIncluirEnderecoClick(Sender: TObject);
    procedure btnIncluirTelefoneClick(Sender: TObject);
    procedure btnIncluirEmailClick(Sender: TObject);
    procedure ckOutrosClick(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure btnGravarEmailClick(Sender: TObject);
    procedure cdsTelefonesAfterOpen(DataSet: TDataSet);
    procedure btnGravarTelefoneClick(Sender: TObject);
    procedure btnGravarEnderecoClick(Sender: TObject);
    procedure btnPesquisarCidadeClick(Sender: TObject);
    procedure btnPesquisarDocenteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditarAusenciasClick(Sender: TObject);
    procedure btnEditarAtividadesClick(Sender: TObject);
    procedure dbnavClick(Sender: TObject; Button: TAdvNavigateBtn);
    procedure dbGridAtividadesDblClick(Sender: TObject);
  private
    ok : Boolean;
    procedure ControlarAbas;
    function ValidarCampos(ACds: TClientDataSet): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadGeral: TfmCadGeral;
  procedure CallCadGeral;

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

procedure CallCadGeral;
begin
  try
    fmCadGeral := TfmCadGeral.Create(nil);
    fmCadGeral.ShowModal;
  finally
    FreeAndNil(fmCadGeral);
  end;
end;

procedure TfmCadGeral.ControlarAbas;
begin
  if (ckDocente.Checked) then
  begin
    ckAluno.Checked        := False;
    tsAusencias.TabVisible := True;
    if (cdsCadGeral.State in [dsEdit, dsInsert]) then
    begin
      cdsCadGeralFLAGFUNCIONARIO.AsInteger  := 0;
      cdsCadGeralFLAGOUTROS.AsInteger       := 0;
      cdsCadGeralFLAGALUNO.AsInteger        := 0;
    end;
  end;

  if (ckAluno.Checked) then
  begin
    ckDocente.Checked                     := False;
    tsAusencias.TabVisible                := False;
    tsAtividade.TabVisible                := True;
    if (cdsCadGeral.State in [dsEdit, dsInsert]) then
    begin
      cdsCadGeralFLAGFUNCIONARIO.AsInteger  := 0;
      cdsCadGeralFLAGDOCENTE.AsInteger      := 0;
      cdsCadGeralFLAGOUTROS.AsInteger       := 0;
    end;
  end
  else
  begin
    tsAtividade.TabVisible                := False;
    tsAusencias.TabVisible                := True;
  end;

  if (ckOutros.Checked) then
  begin
    ckDocente.Checked      := False;
    ckAluno.Checked        := False;
    tsAusencias.TabVisible := False;
    tsAtividade.TabVisible := False;
    if (cdsCadGeral.State in [dsEdit, dsInsert]) then
    begin
      cdsCadGeralFLAGFUNCIONARIO.AsInteger  := 0;
      cdsCadGeralFLAGDOCENTE.AsInteger      := 0;
      cdsCadGeralFLAGALUNO.AsInteger        := 0;
    end;
  end;

  if (not ckDocente.Checked) and (not ckAluno.Checked) and (not ckOutros.Checked) then
  begin
    tsAusencias.TabVisible := True;
    tsAtividade.TabVisible := False;
    if (cdsCadGeral.State in [dsEdit, dsInsert]) then
    begin
      cdsCadGeralFLAGFUNCIONARIO.AsInteger  := 1;
      cdsCadGeralFLAGDOCENTE.AsInteger      := 0;
      cdsCadGeralFLAGALUNO.AsInteger        := 0;
      cdsCadGeralFLAGOUTROS.AsInteger       := 0;
    end;
  end;

end;

function TfmCadGeral.ValidarCampos(ACds : TClientDataSet) : Boolean;
var
  i :Integer;
  Campos :TStrings;
begin

  try
    Result := True;
    Campos := TStringList.Create;
    for i:=0 to ACds.Fields.Count-1 do
    begin
      if (ACds.Fields[i].Tag=1) then
        if (ACds.Fields[i].AsString=EmptyStr) then
          Campos.Add('- ' + ACds.Fields[i].DisplayName);

      if (Campos.Text <> EmptyStr) then
      begin
        Campos.Insert(0, 'Preencha os campos obrigatórios:');
        Campos.Insert(1, EmptyStr);
        Warning(Campos.Text);
        Campos.Clear;
        Result := False;
      end;
    end;
  finally
    Campos.Free;
  end;
end;

procedure TfmCadGeral.actCancelarExecute(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      cdsAusencias.Cancel;
      cdsAtividades_Alunos.Cancel;
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
//  ControlarAbas;
end;

procedure TfmCadGeral.actEditarExecute(Sender: TObject);
begin
  inherited;
//  ControlarAbas;
end;

procedure TfmCadGeral.actExcluirExecute(Sender: TObject);
begin
  try
    iniciarTransacao;
    quOficios.Active    := False;
    cdsOficios.Active   := False;
      quOficios.ParamByName('pBuscar').AsInteger := cdsCadGeralAI.AsInteger;
    cdsOficios.Active   :=  True;  
    if not cdsOficios.IsEmpty then
    begin
      Warning('Existem oficios vinculados a este registro. ');
      Exit;
    end;
  finally
    terminartransacao;
  end;
  inherited;
//  ControlarAbas;
end;

procedure TfmCadGeral.actGravarExecute(Sender: TObject);
begin
  if not ValidarCampos(cdsCadGeral) then
    Exit;

  if (cdsEnderecos.State in [dsEdit, dsInsert]) then
  begin
    Warning('O registro de endereço não foi gravado.');
    tsEnderecos.SetFocus;
    Exit;
  end;

  if (cdsTelefones.State in [dsEdit, dsInsert]) then
  begin
    Warning('O registro de telefone não foi gravado.');
    tsTelefone.SetFocus;
    Exit;
  end;

  if (cdsEmails.State in [dsEdit, dsInsert]) then
  begin
    Warning('O registro de email não foi gravado.');
    tsEmails.SetFocus;
    Exit;
  end;

  if (cdsAusencias.State in [dsEdit, dsInsert]) then
  begin
    Warning('O registro de ausência não foi gravado.');
    tsAusencias.SetFocus;
    Exit;
  end;

  if (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) then
  begin
    Warning('O registro de atividades não foi gravado.');
    tsAtividade.SetFocus;
    Exit;
  end;
  inherited;
end;

procedure TfmCadGeral.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctCadGeral;
  inherited;
  if editNome.CanFocus then
    editNome.SetFocus;
end;

procedure TfmCadGeral.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarCadGeral;
  if chave > 0 then
  begin
    cdsCadGeral.IndexFieldNames := 'Ai';
    cdsCadGeral.FindKey([chave]);
    cdsCadGeral.IndexFieldNames := '';
  end;
  ControlarAbas;
end;

procedure TfmCadGeral.btnEditarAtividadesClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      if cdsAtividades_Alunos.IsEmpty then
        Exit;

      if Question('Deseja alterar o registro de atividades?') then
        cdsAtividades_Alunos.Edit;

    except on E:Exception do
      begin
        Warning('Erro ao editar atividades. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmCadGeral.btnEditarAusenciasClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      if cdsAusencias.IsEmpty then
        Exit;

      if Question('Deseja alterar o registro de ausências?') then
        cdsAusencias.Edit;

    except on E:Exception do
      begin
        Warning('Erro ao editar ausências. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmCadGeral.btnExcluirAtividadesClick(Sender: TObject);
begin
  inherited;
  if cdsAtividades_Alunos.IsEmpty then
    Exit;
  try
    iniciarTransacao;
    if Question('Deseja excluir o atividade?') then
    begin
      try
        cdsAtividades_Alunos.Delete;
        cdsAtividades_Alunos.ApplyUpdates(0);
        cdsAtividades_Alunos.Refresh;
      except on E:Exception do
        begin
          Warning('Erro ao excluir atividade. '+E.Message);
          rollback;
        end;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmCadGeral.btnExcluirAusenciasClick(Sender: TObject);
begin
  if cdsAusencias.IsEmpty then
    Exit;

  try
    iniciarTransacao;
    if Question('Deseja excluir o Ausencias?') then
    begin
      try
        cdsAusencias.Delete;
        cdsAusencias.ApplyUpdates(0);
        cdsAusencias.Refresh;
      except on E:Exception do
        begin
          Warning('Erro ao excluir ausências. '+E.Message);
          rollback;
        end;
      end;
    end;
  finally
    terminartransacao;
  end;

end;

procedure TfmCadGeral.btnGravarAtividadesClick(Sender: TObject);
var
  bm : TBookMark;
begin
  inherited;
  if not (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) then
    Exit;

  if not ValidarCampos(cdsAtividades_Alunos) then
    Exit;

  try
    iniciarTransacao;

    try
      bm := cdsAtividades_Alunos.GetBookmark;
      cdsAtividades_Alunos.DisableControls;
      cdsAtividades_Alunos.First;
      while not cdsAtividades_Alunos.Eof do
      begin
        if cdsAtividades_AlunosSTATUS.AsInteger = 1 then
        begin
          cdsAtividades_Alunos.Edit;
          cdsAtividades_AlunosSTATUS.AsInteger := 0;
        end;
         cdsAtividades_Alunos.Next;
      end;

      cdsAtividades_Alunos.GotoBookmark(bm);
      cdsAtividades_Alunos.Edit;

      if ckStatus.Checked then
        cdsAtividades_AlunosSTATUS.AsInteger := 1;

      cdsAtividades_Alunos.Post;
      cdsAtividades_Alunos.ApplyUpdates(0);
      cdsAtividades_Alunos.Refresh;
      ok  := False;
    except on E:Exception do
      begin
        Warning('Erro ao gravar atividade dos alunos. '+E.Message);
        rollback;
      end;
    end;
  finally
    cdsAtividades_Alunos.FreeBookmark(bm);
    cdsAtividades_Alunos.EnableControls;
    terminartransacao;
  end;
end;

procedure TfmCadGeral.btnGravarAusenciasClick(Sender: TObject);
begin
  if not (cdsAusencias.State in [dsEdit, dsInsert]) then
    Exit;

  if not ValidarCampos(cdsAusencias) then
    Exit;
  try
    iniciarTransacao;
    try
      cdsAusencias.Post;
      cdsAusencias.ApplyUpdates(0);
      cdsAusencias.Refresh;
    except on E:Exception do
      begin
        Warning('Erro ao gravar ausências. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao
  end;
end;

procedure TfmCadGeral.btnGravarEmailClick(Sender: TObject);
begin
  if not ValidarCampos(cdsEmails) then
    Abort;
  inherited;
end;

procedure TfmCadGeral.btnGravarEnderecoClick(Sender: TObject);
begin
  if not ValidarCampos(cdsEnderecos) then
    Exit;
  inherited;
end;

procedure TfmCadGeral.btnGravarTelefoneClick(Sender: TObject);
begin
  if not ValidarCampos(cdsTelefones) then
    Exit;

  inherited;
end;

procedure TfmCadGeral.btnIncluirAtividadesClick(Sender: TObject);
begin
  inherited;
  if not cdsAtividades_Alunos.Active then
    Exit;
  try
    iniciarTransacao;
    try
      cdsAtividades_Alunos.Open;
      cdsAtividades_Alunos.Insert;
      cdsAtividades_AlunosSTATUS.AsInteger := 1;
      ok  := True;
    except on E:Exception do
      begin
        Warning('Erro ao incluir Atividade.');
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmCadGeral.btnIncluirAusenciasClick(Sender: TObject);
begin
  if not cdsAusencias.Active then
    Exit;

  try
    iniciarTransacao;
    try
      cdsAusencias.Open;
      cdsAusencias.Insert;

      cbTipoAusencia.Enabled := True;
      if cbTipoAusencia.CanFocus then
        cbTipoAusencia.SetFocus;
    except on E:Exception do
      begin
        Warning('Erro ao gravar incluir ausências. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmCadGeral.btnIncluirEmailClick(Sender: TObject);
begin
  inherited;
  if editEmail.CanFocus then
    editEmail.SetFocus;
end;

procedure TfmCadGeral.btnIncluirEnderecoClick(Sender: TObject);
begin
  inherited;
  if editEndereco.CanFocus then
    editEndereco.SetFocus;
end;

procedure TfmCadGeral.btnIncluirTelefoneClick(Sender: TObject);
begin
  inherited;
  if editTelefone.CanFocus then
    editTelefone.SetFocus;
end;

procedure TfmCadGeral.btnPesquisarCidadeClick(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarCidades;
  if chave > 0 then
  begin
    if cdsEnderecos.State in ([dsEdit, dsInsert]) then
      cdsEnderecosID_CIDADE.AsInteger := chave;
  end;
end;

procedure TfmCadGeral.btnPesquisarDocenteClick(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarCadGeral(False,True,False,False);
  if chave > 0 then
  begin
    cdsAtividades_AlunosID_DOCENTE.AsInteger := chave;
  end;
end;

procedure TfmCadGeral.cdsAtividades_AlunosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_CADGERAL').AsInteger  := cdsCadGeralAI.AsInteger;
  inherited;
end;

procedure TfmCadGeral.cdsAusenciasNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_CADGERAL').AsInteger  := cdsCadGeralAI.AsInteger;
  inherited;
end;

procedure TfmCadGeral.cdsEmailsNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_CADGERAL').AsInteger  := cdsCadGeralAI.AsInteger;
  inherited;
end;

procedure TfmCadGeral.cdsEnderecosNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_CADGERAL').AsInteger  := cdsCadGeralAI.AsInteger;
  inherited;
end;

procedure TfmCadGeral.cdsCadGeralAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CPF').EditMask := '999.999.999-99;1;_';
end;

procedure TfmCadGeral.cdsCadGeralAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsEnderecos.Active then
    cdsEnderecos.Refresh;

  if cdsTelefones.Active then
    cdsTelefones.Refresh;

  if cdsEmails.Active then
    cdsEmails.Refresh;

  if cdsAusencias.Active then
    cdsAusencias.Refresh;

  if cdsAtividades_Alunos.Active then
    cdsAtividades_Alunos.Refresh;

  ControlarAbas;

end;

procedure TfmCadGeral.cdsCadGeralCPFValidate(Sender: TField);
begin
  inherited;
  ACBrValidador1.Documento := cdsCadGeral.FieldByName('CPF').AsString;
  if not ACBrValidador1.Validar then
  begin
    editCPF.Clear;
    editCPF.SetFocus;
  end;
end;

procedure TfmCadGeral.cdsTelefonesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TELEFONE').EditMask := '(99)9999-9999;1;_';
end;

procedure TfmCadGeral.cdsTelefonesNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_CADGERAL').AsInteger  := cdsCadGeralAI.AsInteger;
end;

procedure TfmCadGeral.ckAlunoClick(Sender: TObject);
begin
  inherited;
  ControlarAbas;
end;

procedure TfmCadGeral.ckDocenteClick(Sender: TObject);
begin
  inherited;
  ControlarAbas;
end;

procedure TfmCadGeral.ckOutrosClick(Sender: TObject);
begin
  inherited;
  ControlarAbas;
end;

procedure TfmCadGeral.dbGridAtividadesDblClick(Sender: TObject);
begin
  inherited;

  if ok then
  begin
    Warning('É necessário gravar as atividades '+#13+
            'antes de incluir as datas (ínicio e fim).');
    Exit;
  end;


  with Sender as TDBGrid do
  begin
    if (not cdsAtividades_Alunos.IsEmpty) and (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) then
    begin
      if (cdsAtividades_AlunosSTATUS.AsInteger = 1) then
      begin
        CallAjustarData(cdsAtividades_AlunosAI.AsInteger);
        cdsAtividades_Alunos.Close;
        cdsAtividades_Alunos.Open;
      end
      else
        Warning('Não é possível ajustar datas, '+#13+
                'de atividades que não estejam com status ativo.');
    end;
  end;
end;

procedure TfmCadGeral.dbGridAtividadesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  with sender as TDBGrid do
  begin
    if (Column.Field=cdsAtividades_AlunosSTATUS) then
    begin
      Canvas.FillRect(Rect);
      img.Draw(Canvas,Rect.Left+4,Rect.Top+1,0);
      if (cdsAtividades_AlunosSTATUS.AsInteger=1) then
        img.Draw(Canvas,Rect.Left+4,Rect.Top+1,1)
    end;
  end;
end;

procedure TfmCadGeral.dbnavClick(Sender: TObject; Button: TAdvNavigateBtn);
begin
  inherited;
  ControlarAbas;
end;

procedure TfmCadGeral.dsAtividade_AlunosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  btnPesquisarDocente.Enabled     := (cdsAtividades_Alunos.State in [dsInsert, dsEdit]);
  btnIncluirAusencias.Enabled     := (cdsCadGeral.State in [dsInsert, dsEdit]) and (not (cdsAusencias.State in [dsInsert, dsEdit]));
  btnEditarAtividades.Enabled     := not (cdsAtividades_Alunos.State in [dsInsert, dsEdit]) and (not cdsAtividades_Alunos.IsEmpty) and (cdsCadGeral.State in [dsEdit, dsInsert]);
  btnGravarAtividades.Enabled     := (cdsAtividades_Alunos.State in [dsInsert, dsEdit]);
  btnExcluirAusencias.Enabled     := (cdsCadGeral.State in [dsInsert, dsEdit]) and (not cdsAusencias.IsEmpty);
end;

procedure TfmCadGeral.dsAusenciasDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  btnGravarAusencias.Enabled      := (cdsAusencias.State in [dsInsert, dsEdit]);
  btnEditarAusencias.Enabled      := not (cdsAusencias.State in [dsInsert, dsEdit]) and (not cdsAusencias.IsEmpty) and (cdsCadGeral.State in [dsEdit, dsInsert]);
end;

procedure TfmCadGeral.dsCadGeralDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  //ausências..
  btnIncluirAusencias.Enabled     := (cdsCadGeral.State in [dsInsert, dsEdit]);
  btnExcluirAusencias.Enabled     := (cdsCadGeral.State in [dsInsert, dsEdit]) and (not cdsAusencias.IsEmpty);
  btnGravarAusencias.Enabled      := (cdsAusencias.State in [dsInsert, dsEdit]);
  btnEditarAusencias.Enabled      := (not (cdsAusencias.State in [dsInsert, dsEdit])) and (not cdsAusencias.IsEmpty)  and (cdsCadGeral.State in [dsEdit, dsInsert]);
  //ausências..

  //atividades..
  btnIncluirAtividades.Enabled    := (cdsCadGeral.State in [dsInsert, dsEdit]);
  btnExcluirAtividades.Enabled    := (cdsCadGeral.State in [dsInsert, dsEdit]) and (not cdsAtividades_Alunos.IsEmpty);
  btnGravarAtividades.Enabled     := (cdsAtividades_Alunos.State in [dsInsert, dsEdit]);
  btnEditarAtividades.Enabled     := (not (cdsAtividades_Alunos.State in [dsInsert, dsEdit])) and (not cdsAtividades_Alunos.IsEmpty)  and (cdsCadGeral.State in [dsEdit, dsInsert]);
  //atividades..

end;

procedure TfmCadGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsAusencias.Active          := False;
  cdsAtividades_Alunos.Active  := False;
  cdsAtividade.Active          := False;
  cdsAgencia.Active            := False;
  cdsCidades.Active            := False;
  cdsDocentes.Active           := False;
end;

procedure TfmCadGeral.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  msg : string;
begin
  msg := '';
  if cdsCadGeral.State in ([dsInsert, dsEdit]) then
    msg := msg + 'cadastro não gravado '+#13;

  if cdsEnderecos.State in ([dsInsert, dsEdit]) then
    msg := msg + 'endereço não gravado '+#13;

  if cdsTelefones.State in ([dsInsert, dsEdit]) then
    msg := msg + 'telefone não gravado '+#13;

  if cdsEmails.State in ([dsInsert, dsEdit]) then
    msg := msg + 'e-mail não gravado '+#13;

  if ((cdsCadGeralFLAGFUNCIONARIO.AsInteger = 1) or (cdsCadGeralFLAGDOCENTE.AsInteger = 1))
    and (cdsAusencias.State in ([dsEdit, dsInsert])) then
    msg := msg + 'ausências não gravado.'+#13;

  if (cdsCadGeralFLAGALUNO.AsInteger = 1) and (cdsAtividades_Alunos.State in [dsInsert, dsEdit]) then
    msg := msg + 'atividades dos alunos não gravado '+#13;

  if strTrim(msg) > '' then
  begin
    Warning(msg);
    CanClose   := False;
  end;

  inherited;
end;

procedure TfmCadGeral.FormCreate(Sender: TObject);
begin
  inherited;
  DataSet           := cdsCadGeral;
  DataSetEndereco   := cdsEnderecos;
  DataSetTelefone   := cdsTelefones;
  DataSetEmail      := cdsEmails;
end;

procedure TfmCadGeral.FormShow(Sender: TObject);
begin
  inherited;
  cdsAgencia.Active            := True;
  cdsAtividade.Active          := True;
  cdsCidades.Active            := True;
  cdsDocentes.Active           := True;
  cdsAusencias.Active          := True;
  cdsAtividades_Alunos.Active  := True;
  ControlarAbas;
  if btnNovo.CanFocus then
    btnNovo.SetFocus;
end;

end.
