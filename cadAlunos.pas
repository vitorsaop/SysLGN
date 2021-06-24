unit cadAlunos;

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
  DBGrids, Mask, cxPC, Buttons, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, acAlphaHints, JvComponentBase, JvBalloonHint, JvExControls,
  JvEnterTab, dblookup, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ImgList, ACBrBase, ACBrValidador,
  cxGroupBox;

type
  TfmCadAlunos = class(TfmBaseCadastro)
    ckStatus: TDBCheckBox;
    quAlunos: TSQLQuery;
    quEnderecos: TSQLQuery;
    quTelefones: TSQLQuery;
    quEmails: TSQLQuery;
    pvAlunos: TDataSetProvider;
    pvEnderecos: TDataSetProvider;
    pvTelefones: TDataSetProvider;
    pvEmails: TDataSetProvider;
    cdsAlunos: TClientDataSet;
    cdsEnderecos: TClientDataSet;
    cdsTelefones: TClientDataSet;
    cdsEmails: TClientDataSet;
    dsAlunos: TDataSource;
    dsEnderecos: TDataSource;
    dsTelefones: TDataSource;
    dsEmails: TDataSource;
    quAlunosAI: TIntegerField;
    quAlunosID_ALUNO: TStringField;
    quAlunosNOME: TStringField;
    quAlunosCPF: TStringField;
    quAlunosRG: TStringField;
    quAlunosID_USP: TStringField;
    quAlunosSTATUS: TIntegerField;
    quAlunosOBS: TStringField;
    quAlunosDATAINC: TDateField;
    quAlunosHORAINC: TTimeField;
    quEnderecosAI: TIntegerField;
    quEnderecosID_FUNCIONARIO: TIntegerField;
    quEnderecosID_CIDADE: TIntegerField;
    quEnderecosID_ALUNO: TIntegerField;
    quEnderecosENDERECO: TStringField;
    quEnderecosNUMERO: TStringField;
    quEnderecosCOMPLEMENTO: TStringField;
    quEnderecosCEP: TStringField;
    quEnderecosDATAINC: TDateField;
    quEnderecosHORAINC: TTimeField;
    quTelefonesAI: TIntegerField;
    quTelefonesID_FUNCIONARIO: TIntegerField;
    quTelefonesID_ALUNO: TIntegerField;
    quTelefonesTELEFONE: TStringField;
    quTelefonesRAMAL: TStringField;
    quTelefonesTIPO: TIntegerField;
    quTelefonesDATAINC: TDateField;
    quTelefonesHORAINC: TTimeField;
    quEmailsAI: TIntegerField;
    quEmailsID_FUNCIONARIO: TIntegerField;
    quEmailsID_ALUNO: TIntegerField;
    quEmailsEMAIL: TStringField;
    quEmailsDATAINC: TDateField;
    quEmailsHORAINC: TTimeField;
    cdsAlunosAI: TIntegerField;
    cdsAlunosID_ALUNO: TStringField;
    cdsAlunosNOME: TStringField;
    cdsAlunosCPF: TStringField;
    cdsAlunosRG: TStringField;
    cdsAlunosID_USP: TStringField;
    cdsAlunosSTATUS: TIntegerField;
    cdsAlunosOBS: TStringField;
    cdsAlunosDATAINC: TDateField;
    cdsAlunosHORAINC: TTimeField;
    cdsEnderecosAI: TIntegerField;
    cdsEnderecosID_FUNCIONARIO: TIntegerField;
    cdsEnderecosID_CIDADE: TIntegerField;
    cdsEnderecosID_ALUNO: TIntegerField;
    cdsEnderecosENDERECO: TStringField;
    cdsEnderecosNUMERO: TStringField;
    cdsEnderecosCOMPLEMENTO: TStringField;
    cdsEnderecosCEP: TStringField;
    cdsEnderecosDATAINC: TDateField;
    cdsEnderecosHORAINC: TTimeField;
    cdsTelefonesAI: TIntegerField;
    cdsTelefonesID_FUNCIONARIO: TIntegerField;
    cdsTelefonesID_ALUNO: TIntegerField;
    cdsTelefonesTELEFONE: TStringField;
    cdsTelefonesRAMAL: TStringField;
    cdsTelefonesTIPO: TIntegerField;
    cdsTelefonesDATAINC: TDateField;
    cdsTelefonesHORAINC: TTimeField;
    cdsTelefonescalcNomeTipo: TStringField;
    cdsEmailsAI: TIntegerField;
    cdsEmailsID_FUNCIONARIO: TIntegerField;
    cdsEmailsID_ALUNO: TIntegerField;
    cdsEmailsEMAIL: TStringField;
    cdsEmailsDATAINC: TDateField;
    cdsEmailsHORAINC: TTimeField;
    editId_Aluno: TDBEdit;
    editNome: TDBEdit;
    editCPF: TDBEdit;
    editRG: TDBEdit;
    editNumUsp: TDBEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    JvBalloonHint1: TJvBalloonHint;
    JvEnterAsTab1: TJvEnterAsTab;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    tsAtividades: TcxTabSheet;
    quAtividades_Alunos: TSQLQuery;
    pvAtividades_Alunos: TDataSetProvider;
    quAtividades_AlunosAI: TIntegerField;
    quAtividades_AlunosID_ALUNO: TIntegerField;
    quAtividades_AlunosID_ATIVIDADE: TIntegerField;
    quAtividades_AlunosID_AGENCIAFIN: TIntegerField;
    quAtividades_AlunosSTATUS: TIntegerField;
    quAtividades_AlunosDATAINC: TDateField;
    quAtividades_AlunosHORAINC: TTimeField;
    cdsAtividades_Alunos: TClientDataSet;
    cdsAtividades_AlunosAI: TIntegerField;
    cdsAtividades_AlunosID_ALUNO: TIntegerField;
    cdsAtividades_AlunosID_ATIVIDADE: TIntegerField;
    cdsAtividades_AlunosID_AGENCIAFIN: TIntegerField;
    cdsAtividades_AlunosSTATUS: TIntegerField;
    cdsAtividades_AlunosDATAINC: TDateField;
    cdsAtividades_AlunosHORAINC: TTimeField;
    dsAtividade_Alunos: TDataSource;
    dbGridAtividades: TDBGrid;
    quAgencia: TSQLQuery;
    quAgenciaAI: TIntegerField;
    quAgenciaID_AGENCIAFIN: TStringField;
    quAgenciaNOME: TStringField;
    quAgenciaDATAINC: TDateField;
    quAgenciaHORAINC: TTimeField;
    pvAgencia: TDataSetProvider;
    cdsAgencia: TClientDataSet;
    cdsAgenciaAI: TIntegerField;
    cdsAgenciaID_AGENCIAFIN: TStringField;
    cdsAgenciaNOME: TStringField;
    cdsAgenciaDATAINC: TDateField;
    cdsAgenciaHORAINC: TTimeField;
    dsAgencia: TDataSource;
    quAtividade: TSQLQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    quAtividadesNOME: TStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    quAtividadesFLAGESTAGIO: TIntegerField;
    quAtividadesFLAGDOC: TIntegerField;
    quAtividadesFLAGPRATICA: TIntegerField;
    pvAtividade: TDataSetProvider;
    cdsAtividade: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    cdsAtividadesNOME: TStringField;
    DateField2: TDateField;
    TimeField2: TTimeField;
    cdsAtividadesFLAGESTAGIO: TIntegerField;
    cdsAtividadesFLAGDOC: TIntegerField;
    cdsAtividadesFLAGPRATICA: TIntegerField;
    dsAtividade: TDataSource;
    DBLookupAgenciaFin: TDBLookupComboBox;
    btnIncluirAtividades: TBitBtn;
    btnGravarAtividades: TBitBtn;
    btnExcluirAtividades: TBitBtn;
    Label17: TLabel;
    cdsAtividades_AlunosNomeAgencia: TStringField;
    DBLookupAtividade: TDBLookupComboBox;
    Label18: TLabel;
    DBCheckBox1: TDBCheckBox;
    cdsAtividades_AlunosNomeAtividade: TStringField;
    img: TImageList;
    ACBrValidador1: TACBrValidador;
    editdataAtividadeIni: TcxDateEdit;
    editdataAtividadeFim: TcxDateEdit;
    editDataAgenciaIni: TcxDateEdit;
    editDataAgenciaFim: TcxDateEdit;
    quAtividades_AlunosDATAATIVINI: TDateField;
    quAtividades_AlunosDATAATIVFIM: TDateField;
    quAtividades_AlunosDATAAGEINI: TDateField;
    quAtividades_AlunosDATAAGEFIM: TDateField;
    cdsAtividades_AlunosDATAATIVINI: TDateField;
    cdsAtividades_AlunosDATAATIVFIM: TDateField;
    cdsAtividades_AlunosDATAAGEINI: TDateField;
    cdsAtividades_AlunosDATAAGEFIM: TDateField;
    quAlunosUSUARIO: TStringField;
    cdsAlunosUSUARIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsEnderecosNewRecord(DataSet: TDataSet);
    procedure cdsTelefonesNewRecord(DataSet: TDataSet);
    procedure cdsEmailsNewRecord(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cdsAlunosAfterScroll(DataSet: TDataSet);
    procedure cdsAtividades_AlunosNewRecord(DataSet: TDataSet);
    procedure btnIncluirEmailClick(Sender: TObject);
    procedure dbGridAtividadesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnIncluirAtividadesClick(Sender: TObject);
    procedure btnGravarAtividadesClick(Sender: TObject);
    procedure btnExcluirAtividadesClick(Sender: TObject);
    procedure dsAlunosDataChange(Sender: TObject; Field: TField);
    procedure dsAtividade_AlunosDataChange(Sender: TObject; Field: TField);
    procedure editCPFExit(Sender: TObject);
    procedure editNomeExit(Sender: TObject);
    procedure editdataAtividadeIniExit(Sender: TObject);
    procedure editdataAtividadeFimExit(Sender: TObject);
    procedure editDataAgenciaIniExit(Sender: TObject);
    procedure editDataAgenciaFimExit(Sender: TObject);
    procedure editdataAtividadeIniEnter(Sender: TObject);
    procedure editdataAtividadeFimEnter(Sender: TObject);
    procedure editDataAgenciaIniEnter(Sender: TObject);
    procedure editDataAgenciaFimEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadAlunos: TfmCadAlunos;
  procedure CallCadAlunos;

implementation

{$R *.dfm}

uses
  dataImg,
  dataLGN,
  bslxProcs,
  cadAtividades,
  cadAgenciaFinanciadora,
  pesquisarAlunos,
  utlConstantes;

procedure CallCadAlunos;
begin
  try
    fmCadAlunos := TfmCadAlunos.Create(nil);
    fmCadAlunos.ShowModal;
  finally
    FreeAndNil(fmCadAlunos);
  end;
end;

procedure TfmCadAlunos.actNovoExecute(Sender: TObject);
begin
  ACampo  := ctAlunos;
  inherited;
  if editNome.CanFocus then
    editNome.SetFocus;
end;

procedure TfmCadAlunos.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarAlunos;
  if chave > 0 then
  begin
    cdsAlunos.IndexFieldNames  := 'Ai';
    cdsAlunos.FindKey([chave]);
    cdsAlunos.IndexFieldNames  := '';
  end;
end;

procedure TfmCadAlunos.btnExcluirAtividadesClick(Sender: TObject);
begin
  inherited;
  if cdsAtividades_Alunos.IsEmpty then
    Exit;

  if Question('Deseja excluir o atividade?') then
  begin
    cdsAtividades_Alunos.Delete;
    cdsAtividades_Alunos.ApplyUpdates(0);
  end;
end;

procedure TfmCadAlunos.btnGravarAtividadesClick(Sender: TObject);
var
  bm : TBookMark;
begin
  inherited;
  if not (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) then
    Exit;

  try
    try
      iniciarTransacao;
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

procedure TfmCadAlunos.btnIncluirAtividadesClick(Sender: TObject);
begin
  inherited;
  if not cdsAtividades_Alunos.Active then
    Exit;

  cdsAtividades_Alunos.Open;
  cdsAtividades_Alunos.Insert;
end;

procedure TfmCadAlunos.btnIncluirEmailClick(Sender: TObject);
begin
  inherited;
  if not cdsAtividades_Alunos.Active then
    Exit;

  cdsAtividades_Alunos.Open;
  cdsAtividades_Alunos.Insert;
end;

procedure TfmCadAlunos.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Adicionar tela de pesquisa de alunos');
end;

procedure TfmCadAlunos.cdsAlunosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsEnderecos.Active then
    cdsEnderecos.Refresh;

  if cdsTelefones.Active then
    cdsTelefones.Refresh;

  if cdsEmails.Active then
    cdsEmails.Refresh;

  if cdsAtividades_Alunos.Active then
    cdsAtividades_Alunos.Refresh;
end;

procedure TfmCadAlunos.cdsAtividades_AlunosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_ALUNO').AsInteger := cdsAlunosAI.AsInteger;
end;

procedure TfmCadAlunos.cdsEmailsNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_ALUNO').AsInteger := cdsAlunosAI.AsInteger;
end;

procedure TfmCadAlunos.cdsEnderecosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_ALUNO').AsInteger := cdsAlunosAI.AsInteger;
end;

procedure TfmCadAlunos.cdsTelefonesNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_ALUNO').AsInteger := cdsAlunosAI.AsInteger;
end;

procedure TfmCadAlunos.editdataAtividadeFimEnter(Sender: TObject);
begin
  inherited;
  if not (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) and
    (cdsAlunos.State in [dsEdit, dsInsert])then
  cdsAtividades_Alunos.Edit;
end;

procedure TfmCadAlunos.editdataAtividadeFimExit(Sender: TObject);
begin
  inherited;
  if (dbGridAtividades.DataSource.State in [dsEdit, dsInsert]) then
  begin
    cdsAtividades_AlunosDATAATIVFIM.Value := editdataAtividadeFim.Date;
    cdsAtividades_Alunos.Post;
    cdsAtividades_Alunos.ApplyUpdates(0);
  end;
end;

procedure TfmCadAlunos.editdataAtividadeIniEnter(Sender: TObject);
begin
  inherited;
  if not (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) and
    (cdsAlunos.State in [dsEdit, dsInsert])then
  cdsAtividades_Alunos.Edit;
end;

procedure TfmCadAlunos.editdataAtividadeIniExit(Sender: TObject);
begin
  inherited;
  if (dbGridAtividades.DataSource.State in [dsEdit, dsInsert]) then
  begin
    cdsAtividades_AlunosDATAATIVINI.Value := editdataAtividadeIni.Date;
    cdsAtividades_Alunos.Post;
    cdsAtividades_Alunos.ApplyUpdates(0);
  end;
end;

procedure TfmCadAlunos.dbGridAtividadesDrawColumnCell(Sender: TObject;
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

  (*Data Inicial Atividade*)
  editdataAtividadeIni.Visible := dbGridAtividades.SelectedField = cdsAtividades_AlunosDATAATIVINI;
  if editdataAtividadeIni.Visible then
  begin
    if gdFocused in State then
     begin
       editdataAtividadeIni.Date := cdsAtividades_AlunosDATAATIVINI.AsDateTime;
       editdataAtividadeIni.SetBounds(
       dbGridAtividades.Left + Rect.Left,dbGridAtividades.Top + Rect.Top,
       Rect.Right-Rect.Left,
       Rect.Bottom-Rect.Top);
     end;
  end;

  (*Data Final Atividade*)
  editdataAtividadeFim.Visible := dbGridAtividades.SelectedField = cdsAtividades_AlunosDATAATIVFIM;
  if editdataAtividadeFim.Visible then
  begin
    if gdFocused in State then
     begin
       editdataAtividadeFim.Date := cdsAtividades_AlunosDATAATIVFIM.AsDateTime;
       editdataAtividadeFim.SetBounds(
       dbGridAtividades.Left + Rect.Left,dbGridAtividades.Top + Rect.Top,
       Rect.Right-Rect.Left,
       Rect.Bottom-Rect.Top);
     end;
  end;

  (*Data Inicial Agencia Fin*)
  editDataAgenciaIni.Visible := dbGridAtividades.SelectedField = cdsAtividades_AlunosDATAAGEINI;
  if editDataAgenciaIni.Visible then
  begin
    if gdFocused in State then
     begin
       editDataAgenciaIni.Date := cdsAtividades_AlunosDATAAGEINI.AsDateTime;
       editDataAgenciaIni.SetBounds(
       dbGridAtividades.Left + Rect.Left,dbGridAtividades.Top + Rect.Top,
       Rect.Right-Rect.Left,
       Rect.Bottom-Rect.Top);
     end;
  end;

  (*Data Final Agencia Fin*)
  editDataAgenciaFim.Visible := dbGridAtividades.SelectedField = cdsAtividades_AlunosDATAAGEFIM;
  if editDataAgenciaFim.Visible then
  begin
    if gdFocused in State then
     begin
       editDataAgenciaFim.Date := cdsAtividades_AlunosDATAAGEFIM.AsDateTime;
       editDataAgenciaFim.SetBounds(
       dbGridAtividades.Left + Rect.Left,dbGridAtividades.Top + Rect.Top,
       Rect.Right-Rect.Left,
       Rect.Bottom-Rect.Top);
     end;
  end;

end;

procedure TfmCadAlunos.dsAlunosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  btnIncluirAtividades.Enabled         := (DataSet.State in [dsInsert, dsEdit]);
  btnExcluirAtividades.Enabled         := (DataSet.State in [dsInsert, dsEdit]);
end;

procedure TfmCadAlunos.dsAtividade_AlunosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  btnGravarAtividades.Enabled   := (cdsAtividades_Alunos.State in [dsInsert, dsEdit]);
end;

procedure TfmCadAlunos.editCPFExit(Sender: TObject);
begin
  inherited;
  ShowMessage('cpf');
end;

procedure TfmCadAlunos.editDataAgenciaFimEnter(Sender: TObject);
begin
  inherited;
  if not (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) and
    (cdsAlunos.State in [dsEdit, dsInsert])then
    cdsAtividades_Alunos.Edit;
end;

procedure TfmCadAlunos.editDataAgenciaFimExit(Sender: TObject);
begin
  inherited;
  if (dbGridAtividades.DataSource.State in [dsEdit, dsInsert]) then
  begin
    cdsAtividades_AlunosDATAAGEFIM.Value := editDataAgenciaFim.Date;
    cdsAtividades_Alunos.Post;
    cdsAtividades_Alunos.ApplyUpdates(0);
  end;
end;

procedure TfmCadAlunos.editDataAgenciaIniEnter(Sender: TObject);
begin
  inherited;
  if not (cdsAtividades_Alunos.State in [dsEdit, dsInsert]) and
    (cdsAlunos.State in [dsEdit, dsInsert])then
  cdsAtividades_Alunos.Edit;
end;

procedure TfmCadAlunos.editDataAgenciaIniExit(Sender: TObject);
begin
  inherited;
  if (dbGridAtividades.DataSource.State in [dsEdit, dsInsert]) then
  begin
    cdsAtividades_AlunosDATAAGEINI.Value := editDataAgenciaIni.Date;
    cdsAtividades_Alunos.Post;
    cdsAtividades_Alunos.ApplyUpdates(0);
  end;
end;

procedure TfmCadAlunos.editNomeExit(Sender: TObject);
begin
  inherited;
  ShowMessage('nome');
end;

procedure TfmCadAlunos.FormCreate(Sender: TObject);
begin
  inherited;
  DataSet          := cdsAlunos;
  DataSetEndereco  := cdsEnderecos;
  DataSetTelefone  := cdsTelefones;
  DataSetEmail     := cdsEmails;
end;

procedure TfmCadAlunos.FormShow(Sender: TObject);
begin
  inherited;
  Width := 620;
  btnPesquisar.Left  := btnPesquisar.Left + 5;
  btnEditar.Left     := btnEditar.Left    + 5;
  btnExcluir.Left    := btnExcluir.Left   + 5;
  btnCancelar.Left   := btnCancelar.Left  + 5;
  btnGravar.Left     := btnGravar.Left    + 5;
  btnSair.Left       := btnSair.Left      + 5;
  cdsAtividade.Active          := True;
  cdsAgencia.Active            := True;
  cdsAtividades_Alunos.Active  := True;
end;

procedure TfmCadAlunos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  CallCadAtividades;
end;

procedure TfmCadAlunos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  CallCadAgenciaFin;
end;

end.


