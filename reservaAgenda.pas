unit reservaAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons, DBCtrls,
  Mask, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, ActnList, cxCheckBox, cxSpinEdit, cxTimeEdit, dxSkinscxPCPainter,
  cxPC, Grids, DBGrids, ExtCtrls;

type
  TfmReservaAgenda = class(TForm)
    quAgenda: TSQLQuery;
    pvAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    dsAgenda: TDataSource;
    quAgendaAI: TIntegerField;
    quAgendaID_VEICULO: TIntegerField;
    quAgendaID_MOTORISTA: TIntegerField;
    quAgendaNOME_MOTORISTA: TStringField;
    quAgendaOBS: TStringField;
    quAgendaDATAAGENDAINI: TDateField;
    quAgendaDATAAGENDAFIM: TDateField;
    quAgendaDATAINC: TDateField;
    quAgendaHORAINC: TTimeField;
    cdsAgendaAI: TIntegerField;
    cdsAgendaID_VEICULO: TIntegerField;
    cdsAgendaID_MOTORISTA: TIntegerField;
    cdsAgendaOBS: TStringField;
    cdsAgendaDATAAGENDAINI: TDateField;
    cdsAgendaDATAAGENDAFIM: TDateField;
    quCad_Geral: TSQLQuery;
    quCad_GeralAI: TIntegerField;
    quCad_GeralNOME: TStringField;
    pvCad_Geral: TDataSetProvider;
    cdsCad_Geral: TClientDataSet;
    cdsCad_GeralAI: TIntegerField;
    cdsCad_GeralNOME: TStringField;
    dsCad_Geral: TDataSource;
    dsCad_Veiculos: TDataSource;
    cdsCad_Veiculos: TClientDataSet;
    cdsCad_VeiculosAI: TIntegerField;
    cdsCad_VeiculosNOME: TStringField;
    pvCad_Veiculos: TDataSetProvider;
    quCad_Veiculos: TSQLQuery;
    quCad_VeiculosAI: TIntegerField;
    quCad_VeiculosNOME: TStringField;
    btnNovo: TBitBtn;
    Label2: TLabel;
    editDataIni: TcxDBDateEdit;
    editDataFim: TcxDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    btnGravar: TBitBtn;
    btnPesquisarMotorista: TBitBtn;
    btnPesquisarVeiculo: TBitBtn;
    act: TActionList;
    actNovo: TAction;
    actGravar: TAction;
    actPesquisarVeiculos: TAction;
    actPesqusarMotoristas: TAction;
    actSair: TAction;
    btnSair: TBitBtn;
    quAgendaNOME_VEICULO: TStringField;
    quAgendaFLAG_VEICULOPROPRIO: TIntegerField;
    cdsAgendaFLAG_VEICULOPROPRIO: TIntegerField;
    cdsAgendaNOME_VEICULO: TStringField;
    lbVeiculo: TLabel;
    ckVeiculoOutros: TDBCheckBox;
    editNomeVeiculo: TEdit;
    cdsAgendaNOME_MOTORISTA: TStringField;
    editNomeMotorista: TEdit;
    quAgendaID_DOCENTE: TIntegerField;
    quAgendaHORAAGENDAINI: TTimeField;
    quAgendaHORAAGENDAFIM: TTimeField;
    quAgendaKMSAIDA: TFloatField;
    quAgendaKMRETORNO: TFloatField;
    quAgendaKMSALDO: TFloatField;
    cdsAgendaID_DOCENTE: TIntegerField;
    cdsAgendaHORAAGENDAINI: TTimeField;
    cdsAgendaHORAAGENDAFIM: TTimeField;
    cdsAgendaKMSAIDA: TFloatField;
    cdsAgendaKMRETORNO: TFloatField;
    cdsAgendaKMSALDO: TFloatField;
    Label1: TLabel;
    editKMSaida: TDBEdit;
    Label6: TLabel;
    editKMRetorno: TDBEdit;
    btnPesquisarDocente: TBitBtn;
    editNomeDocente: TEdit;
    quDocente: TSQLQuery;
    quDocenteAI: TIntegerField;
    quDocenteID_CADGERAL: TStringField;
    quDocenteNOME: TStringField;
    pvDocente: TDataSetProvider;
    cdsDocente: TClientDataSet;
    cdsDocenteAI: TIntegerField;
    cdsDocenteID_CADGERAL: TStringField;
    cdsDocenteNOME: TStringField;
    dsDocente: TDataSource;
    actPesqusiarDocente: TAction;
    Label7: TLabel;
    editCustoKM: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    quTipoViagem: TSQLQuery;
    quTipoViagemAI: TIntegerField;
    quTipoViagemID_TIPOVIAGEM: TStringField;
    quTipoViagemNOME: TStringField;
    quTipoViagemCUSTOKM: TFMTBCDField;
    cdsTipoViagem: TClientDataSet;
    cdsTipoViagemAI: TIntegerField;
    cdsTipoViagemID_TIPOVIAGEM: TStringField;
    cdsTipoViagemNOME: TStringField;
    cdsTipoViagemCUSTOKM: TFMTBCDField;
    pvTipoViagem: TDataSetProvider;
    dsTipoViagem: TDataSource;
    quAgendaID_TIPOVIAGEM: TIntegerField;
    cdsAgendaID_TIPOVIAGEM: TIntegerField;
    cbTipo: TDBLookupComboBox;
    Label11: TLabel;
    quAgendaCUSTOKM: TFMTBCDField;
    cdsAgendaCUSTOKM: TFMTBCDField;
    btnEditar: TBitBtn;
    actEditar: TAction;
    editHoraIni: TDBEdit;
    editHoraFim: TDBEdit;
    quCad_VeiculosID_VEICULO: TStringField;
    quCad_VeiculosID_TIPOVEICULO: TIntegerField;
    cdsCad_VeiculosID_VEICULO: TStringField;
    cdsCad_VeiculosID_TIPOVEICULO: TIntegerField;
    quAgendaFLAG_CANCELAR: TIntegerField;
    quAgendaID_COMBUSTIVEL: TIntegerField;
    quAgendaCUSTOLITRO: TFMTBCDField;
    cdsAgendaDATAINC: TDateField;
    cdsAgendaHORAINC: TTimeField;
    cdsAgendaFLAG_CANCELAR: TIntegerField;
    cdsAgendaID_COMBUSTIVEL: TIntegerField;
    cdsAgendaCUSTOLITRO: TFMTBCDField;
    quCad_VeiculosID_COMBUSTIVEL: TIntegerField;
    quCad_VeiculosAUTONOMIA: TFMTBCDField;
    cdsCad_VeiculosID_COMBUSTIVEL: TIntegerField;
    cdsCad_VeiculosAUTONOMIA: TFMTBCDField;
    quCombustivel: TSQLQuery;
    quCombustivelAI: TIntegerField;
    quCombustivelID_COMBUSTIVEL: TStringField;
    quCombustivelCOMBUSTIVEL: TStringField;
    pvCombustivel: TDataSetProvider;
    cdsCombustivel: TClientDataSet;
    dsCombustivel: TDataSource;
    cdsCombustivelAI: TIntegerField;
    cdsCombustivelID_COMBUSTIVEL: TStringField;
    cdsCombustivelCOMBUSTIVEL: TStringField;
    quCombustivel_Valores: TSQLQuery;
    quCombustivel_ValoresAI: TIntegerField;
    quCombustivel_ValoresID_COMBUSTIVEL: TIntegerField;
    quCombustivel_ValoresCUSTO: TFMTBCDField;
    quCombustivel_ValoresDATACUSTO: TDateField;
    quCombustivel_ValoresSTATUS: TIntegerField;
    pvCombustivel_Valores: TDataSetProvider;
    cdsCombustivel_Valores: TClientDataSet;
    cdsCombustivel_ValoresAI: TIntegerField;
    cdsCombustivel_ValoresID_COMBUSTIVEL: TIntegerField;
    cdsCombustivel_ValoresCUSTO: TFMTBCDField;
    cdsCombustivel_ValoresDATACUSTO: TDateField;
    cdsCombustivel_ValoresSTATUS: TIntegerField;
    dsCombustivel_Valores: TDataSource;
    pc: TcxPageControl;
    tsObs: TcxTabSheet;
    mmOBS: TDBMemo;
    cdsCad_VeiculoscalcCombustivel: TStringField;
    cdsCad_VeiculoscalcValorCombustivel: TFloatField;
    Label3: TLabel;
    editCombustivel: TDBEdit;
    Label12: TLabel;
    editValorLitro: TDBEdit;
    quAgendaCUSTOTOTALKM: TFMTBCDField;
    quAgendaCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    quAgendaCUSTOTOTALGERAL: TFMTBCDField;
    cdsAgendaCUSTOTOTALKM: TFMTBCDField;
    cdsAgendaCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    cdsAgendaCUSTOTOTALGERAL: TFMTBCDField;
    quAgendaFLAG_CUSTOALTERADO: TIntegerField;
    cdsAgendaFLAG_CUSTOALTERADO: TIntegerField;
    procedure actNovoExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actPesquisarVeiculosExecute(Sender: TObject);
    procedure actPesqusarMotoristasExecute(Sender: TObject);
    procedure dsAgendaDataChange(Sender: TObject; Field: TField);
    procedure actSairExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ckVeiculoOutrosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPesqusiarDocenteExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure cdsCad_VeiculosCalcFields(DataSet: TDataSet);
  private
    Ok : Boolean;
    function ValidarInformacoes: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReservaAgenda: TfmReservaAgenda;
  function CallReservaAgenda() : Boolean; overload;
  procedure CallReservaAgenda(AId_Agenda : Integer); overload;
implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  utlFuncoes,
  pesquisarCadGeral,
  pesquisarVeiculos,
  pesquisarImplementos,
  bslMSG,
  bslXProcs;

function CallReservaAgenda() : Boolean; overload;
begin
  try
    Application.CreateForm(TfmReservaAgenda,fmReservaAgenda);
    fmReservaAgenda.btnNovo.Enabled := True;
    fmReservaAgenda.ShowModal;
    Result := fmReservaAgenda.Ok;
  finally
    FreeAndNil(fmReservaAgenda);
  end;
end;

procedure CallReservaAgenda(AId_Agenda : Integer); overload;
begin
  try
    Application.CreateForm(TfmReservaAgenda,fmReservaAgenda);
    fmReservaAgenda.cdsCad_Geral.Active            := False;
    fmReservaAgenda.cdsCad_Veiculos.Active         := False;
    fmReservaAgenda.cdsDocente.Active              := False;
    fmReservaAgenda.cdsTipoViagem.Active           := False;
    fmReservaAgenda.cdsCombustivel_Valores.Active  := False;
    fmReservaAgenda.cdsCombustivel.Active          := False;

    fmReservaAgenda.cdsCad_Geral.Active            := True;
    fmReservaAgenda.cdsDocente.Active              := True;
    fmReservaAgenda.cdsTipoViagem.Active           := True;
    fmReservaAgenda.cdsCombustivel.Active          := True;
    fmReservaAgenda.cdsCombustivel_Valores.Active  := True;

    fmReservaAgenda.cdsAgenda.Filtered      := False;
    fmReservaAgenda.cdsAgenda.Filter        := '(AI = '+IntToStr(AId_Agenda)+')';
    fmReservaAgenda.cdsAgenda.Filtered      := True;
    fmReservaAgenda.cdsAgenda.Active        := True;

//    fmReservaAgenda.cdsCad_Veiculos.Filtered := False;
//    fmReservaAgenda.cdsCad_Veiculos.Filter   := '(AI = '+IntToStr(fmReservaAgenda.cdsAgendaID_VEICULO.AsInteger)+')';
//    fmReservaAgenda.cdsCad_Veiculos.Filtered := True;
//    fmReservaAgenda.cdsCad_Veiculos.Active   := True;

    fmReservaAgenda.cdsCad_Veiculos.Active  := True;
    fmReservaAgenda.cdsCad_Veiculos.FindKey([fmReservaAgenda.cdsAgendaID_VEICULO.AsInteger]);

    fmReservaAgenda.editNomeVeiculo.Text    := fmReservaAgenda.cdsAgendaNOME_VEICULO.AsString;
    fmReservaAgenda.editNomeMotorista.Text  := fmReservaAgenda.cdsAgendaNOME_MOTORISTA.AsString;
    fmReservaAgenda.editNomeDocente.Text    := GetValorString('cad_geral','nome','ai',IntToStr(fmReservaAgenda.cdsAgendaID_DOCENTE.AsInteger));
    fmReservaAgenda.btnNovo.Visible         := False;
    fmReservaAgenda.btnEditar.Visible       := True;

    fmReservaAgenda.ShowModal;
  finally
    FreeAndNil(fmReservaAgenda);
  end;
end;

function TfmReservaAgenda.ValidarInformacoes : Boolean;
var
  msg : string;
begin
  msg := '';
  Result := True;
  if Trim(editNomeDocente.Text) = '' then
    msg := 'Necessário informar o docente responsável.'+#13;

  if Trim(editNomeVeiculo.Text) = '' then
    msg := msg + 'Necessário informar o veículo.'+#13;
    
  if Trim(editNomeMotorista.Text) = '' then
    msg := msg + 'Necessário informar o motorista.'+#13;    

  if (Trim(cbTipo.Text) = '') or (Trim(editCustoKM.Text) = '') then
    msg := msg + 'Necessário informar o tipo de viagem e o seu custo.'+#13;

  if (Trim(editKMSaida.Text) = '') or (Trim(editKMRetorno.Text) = '') then
    msg := msg + 'Necessário informar Km de saída / retorno.';

  if (cdsAgendaKMRETORNO.AsFloat < cdsAgendaKMSAIDA.AsFloat) then
    msg := msg + 'Km de retorno não pode ser menor do que a Km de saída.'+#13;

  if (cdsAgendaKMSAIDA.AsFloat > cdsAgendaKMRETORNO.AsFloat) then
    msg := msg + 'Km de saída não pode ser maior do que a Km de retorno.'+#13;

  if Trim(msg) > '' then
  begin
    Information(msg);
    Result := False;
  end;
end;

procedure TfmReservaAgenda.actEditarExecute(Sender: TObject);
begin
  if Question('Deseja alterar os dados da viagem ?') then
  begin
    try
      iniciarTransacao;
      try
        cdsAgenda.Edit;
      except on E:Exception do
        begin
          Warning('Erro ao editar registro. '+E.Message);
          rollback;
        end;
      end;
    finally
      terminartransacao;
    end;
  end;
end;

procedure TfmReservaAgenda.actGravarExecute(Sender: TObject);
begin
  if not (ValidarInformacoes) then
    Exit;
  
  try
    iniciarTransacao;
    try
      cdsAgendaNOME_VEICULO.AsString     := editNomeVeiculo.Text;
      cdsAgendaNOME_MOTORISTA.AsString   := editNomeMotorista.Text;
      cdsAgendaID_TIPOVIAGEM.AsInteger   := cdsTipoViagemAI.AsInteger;
      cdsAgendaCUSTOKM.AsFloat           := cdsTipoViagemCUSTOKM.AsFloat;

      cdsAgendaKMSALDO.AsFloat := (cdsAgendaKMRETORNO.AsFloat - cdsAgendaKMSAIDA.AsFloat);

      //adicionar custo de combustivel..
      if (cdsAgendaFLAG_CUSTOALTERADO.AsInteger = 1) then
      begin
        if (Question('Custo de combustível já alterado anteriormente,'+#13+'deseja que o sistema recalcule?')) then
        begin
          cdsAgendaID_COMBUSTIVEL.AsInteger       := cdsCombustivelAI.AsInteger;
          cdsAgendaCUSTOLITRO.AsFloat             := cdsCad_VeiculoscalcValorCombustivel.AsFloat;
          cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat  := ((cdsAgendaKMSALDO.AsFloat / cdsCad_VeiculosAUTONOMIA.AsFloat) * cdsCad_VeiculoscalcValorCombustivel.AsFloat);
          cdsAgendaFLAG_CUSTOALTERADO.AsInteger   := 0;
        end;
      end
      else
      begin
        cdsAgendaID_COMBUSTIVEL.AsInteger       := cdsCombustivelAI.AsInteger;
        cdsAgendaCUSTOLITRO.AsFloat             := cdsCad_VeiculoscalcValorCombustivel.AsFloat;
        cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat  := ((cdsAgendaKMSALDO.AsFloat / cdsCad_VeiculosAUTONOMIA.AsFloat) * cdsCad_VeiculoscalcValorCombustivel.AsFloat);
      end;
      //adicionar custo de combustivel

      if (cdsAgendaKMSALDO.AsFloat > 0) and (cdsAgendaCUSTOKM.AsFloat > 0) then
        cdsAgendaCUSTOTOTALKM.AsFloat  := (cdsAgendaKMSALDO.AsFloat * cdsAgendaCUSTOKM.AsFloat);

      cdsAgendaCUSTOTOTALGERAL.AsFloat := cdsAgendaCUSTOTOTALKM.AsFloat + cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat;

      cdsAgenda.Post;
      cdsAgenda.ApplyUpdates(0);
      Ok := True;
      Close;
    except on E:Exception do
      begin
        Warning('Erro ao gravar reserva. '+E.Message);
        rollback;      
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmReservaAgenda.actNovoExecute(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      cdsCad_Veiculos.Active         := False;
      cdsCad_Geral.Active            := False;
      cdsAgenda.Active               := False;
      cdsTipoViagem.Active           := False;
      cdsCombustivel_Valores.Active  := False;
      cdsCombustivel.Active          := False;

      cdsCad_Veiculos.Active         := True;
      cdsCad_Geral.Active            := True;
      cdsDocente.Active              := True;
      cdsTipoViagem.Active           := True;
      cdsCombustivel.Active          := True;
      cdsCombustivel_Valores.Active  := True;
      cdsAgenda.Active               := True;

      cdsAgenda.Insert;
      editDataIni.Date  := Date;
      editDataFim.Date  := Date;
    except on E:Exception do
      begin
        Warning('Erro ao insert. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmReservaAgenda.actPesquisarVeiculosExecute(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarVeiculos;
  if chave > 0 then
  begin
    cdsCad_Veiculos.IndexFieldNames := 'Ai';
    if cdsCad_Veiculos.FindKey([chave]) then
    begin
      cdsAgendaID_VEICULO.AsInteger := chave;
      editNomeVeiculo.Text          := cdsCad_VeiculosNOME.AsString;
    end;
  end;
end;

procedure TfmReservaAgenda.actPesqusarMotoristasExecute(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarCadGeral(True,False,False,False);
  if chave > 0 then
  begin
    if cdsCad_Geral.FindKey([chave]) then
    begin
      cdsAgendaID_MOTORISTA.AsInteger   := chave;
      editNomeMotorista.Text            := cdsCad_GeralNOME.AsString;
    end;
  end;
end;

procedure TfmReservaAgenda.actPesqusiarDocenteExecute(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarCadGeral(False,True,True,True);
  if chave > 0 then
  begin
    if cdsDocente.FindKey([chave]) then
    begin
      cdsAgendaID_DOCENTE.AsInteger := chave;
      editNomeDocente.Text          := cdsDocenteNOME.AsString;
    end;
  end;

end;

procedure TfmReservaAgenda.actSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfmReservaAgenda.cdsCad_VeiculosCalcFields(DataSet: TDataSet);
begin
  if (cdsCombustivel.Active) and (cdsCombustivel_Valores.Active) then
  begin
    if cdsCombustivel.FindKey([cdsCad_VeiculosID_COMBUSTIVEL.AsInteger]) then
    begin
      cdsCad_VeiculoscalcCombustivel.AsString      := cdsCombustivelCOMBUSTIVEL.AsString;
      cdsCad_VeiculoscalcValorCombustivel.AsFloat  := cdsCombustivel_ValoresCUSTO.AsFloat;
    end;
  end;
end;

procedure TfmReservaAgenda.ckVeiculoOutrosClick(Sender: TObject);
begin
  if ckVeiculoOUtros.Checked then
  begin
    cdsAgendaID_VEICULO.AsInteger  := 0;
    editNomeVeiculo.Clear;
    btnPesquisarVeiculo.Enabled    := False;
    lbVeiculo.Caption              := ckVeiculoOutros.Caption;
  end
  else
  begin
    btnPesquisarVeiculo.Enabled  := True;
    lbVeiculo.Caption            := 'veículo departamento:';
  end;
end;

procedure TfmReservaAgenda.dsAgendaDataChange(Sender: TObject; Field: TField);
begin
  btnNovo.Enabled                 := not (cdsAgenda.State in [dsInsert, dsEdit]);
  btnEditar.Enabled               := not (cdsAgenda.State in [dsInsert, dsEdit]);
  btnGravar.Enabled               := (cdsAgenda.State     in [dsInsert, dsEdit]);
  cbTipo.Enabled                  := (cdsAgenda.State     in [dsInsert, dsEdit]);
  btnPesquisarMotorista.Enabled   := (cdsAgenda.State     in [dsInsert, dsEdit]);
  btnPesquisarVeiculo.Enabled     := (cdsAgenda.State     in [dsInsert, dsEdit]);
  btnPesquisarDocente.Enabled     := (cdsAgenda.State     in [dsInsert, dsEdit]);
  editNomeVeiculo.Enabled         := (cdsAgenda.State     in [dsInsert, dsEdit]);
  editNomeMotorista.Enabled       := (cdsAgenda.State     in [dsInsert, dsEdit]);
  editNomeDocente.Enabled         := (cdsAgenda.State     in [dsInsert, dsEdit]);
end;

procedure TfmReservaAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsAgenda.Active                := False;
  cdsCad_Geral.Active             := False;
  cdsDocente.Active               := False;
  cdsCad_Veiculos.Active          := False;
  cdsCombustivel_Valores.Active   := False;
  cdsCombustivel.Active           := False;
end;

procedure TfmReservaAgenda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (cdsAgenda.State in [dsEdit, dsInsert]) then
  begin
    if (Question('Reserva ainda não efetuada,'+#13+'deseja sair?' )) then
    begin
      CanClose := True;
      try
        iniciarTransacao;
        try
          cdsAgenda.Cancel;
        except on E:Exception do
          begin
            Warning('Erro ao cancelar operação. '+E.Message);
            rollback;
          end;
        end;
      finally
        terminartransacao;
      end;
    end
    else
      CanClose := False;
  end
  else
    CanClose := True;
end;

procedure TfmReservaAgenda.FormShow(Sender: TObject);
begin
  Ok := False;
  Width  := 590;
end;

end.
