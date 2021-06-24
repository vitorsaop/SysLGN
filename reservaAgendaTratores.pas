unit reservaAgendaTratores;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, Mask, DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, StdCtrls, Buttons, FMTBcd,
  DB, DBClient, Provider, SqlExpr, Grids, DBGrids, ovcbase, ovcef, ovcpb, ovcnf,
  cxMemo;

type
  TfmReservaAgendaTrator = class(TForm)
    lbVeiculo: TLabel;
    btnNovo: TBitBtn;
    Label1: TLabel;
    editDataIni: TcxDBDateEdit;
    Label2: TLabel;
    editDataFim: TcxDBDateEdit;
    Label3: TLabel;
    editHoraIni: TDBEdit;
    Label4: TLabel;
    editHoraFim: TDBEdit;
    Label5: TLabel;
    editNomeDocente: TEdit;
    btnPesquisarDocente: TBitBtn;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    btnEditar: TBitBtn;
    pc: TcxPageControl;
    tsImplementos: TcxTabSheet;
    Label6: TLabel;
    quTipoVeiculos: TSQLQuery;
    quTipoVeiculosAI: TIntegerField;
    quTipoVeiculosID_TIPOVEICULO: TStringField;
    quTipoVeiculosTIPO: TStringField;
    quTipoVeiculosCUSTO: TFMTBCDField;
    pvTipoVeiculos: TDataSetProvider;
    cdsTipoVeiculos: TClientDataSet;
    cdsTipoVeiculosAI: TIntegerField;
    cdsTipoVeiculosID_TIPOVEICULO: TStringField;
    cdsTipoVeiculosTIPO: TStringField;
    cdsTipoVeiculosCUSTO: TFMTBCDField;
    dsTipoVeiculos: TDataSource;
    quImplementos: TSQLQuery;
    quImplementosAI: TIntegerField;
    quImplementosID_IMPLEMENTO: TStringField;
    quImplementosIMPLEMENTO: TStringField;
    quImplementosCUSTO: TFMTBCDField;
    pvImplementos: TDataSetProvider;
    cdsImplementos: TClientDataSet;
    cdsImplementosAI: TIntegerField;
    cdsImplementosID_IMPLEMENTO: TStringField;
    cdsImplementosIMPLEMENTO: TStringField;
    cdsImplementosCUSTO: TFMTBCDField;
    dsImplementos: TDataSource;
    quVeiculos_Implementos: TSQLQuery;
    quVeiculos_ImplementosAI: TIntegerField;
    quVeiculos_ImplementosID_IMPLEMENTO: TIntegerField;
    pvVeiculos_Implementos: TDataSetProvider;
    cdsVeiculos_Implementos: TClientDataSet;
    cdsVeiculos_ImplementosAI: TIntegerField;
    cdsVeiculos_ImplementosID_IMPLEMENTO: TIntegerField;
    cdsVeiculos_ImplementoscalcNomeImplemento: TStringField;
    cdsVeiculos_ImplementosID_AGENDA: TIntegerField;
    cdsVeiculos_ImplementoscalcValorImplemento: TFloatField;
    dsVeiculos_Implementos: TDataSource;
    quVeiculos: TSQLQuery;
    quVeiculosAI: TIntegerField;
    quVeiculosNOME: TStringField;
    quVeiculosID_VEICULO: TStringField;
    quVeiculosID_TIPOVEICULO: TIntegerField;
    pvVeiculos: TDataSetProvider;
    cdsVeiculos: TClientDataSet;
    cdsVeiculosAI: TIntegerField;
    cdsVeiculosNOME: TStringField;
    cdsVeiculosID_VEICULO: TStringField;
    cdsVeiculosID_TIPOVEICULO: TIntegerField;
    dsVeiculos: TDataSource;
    btnPesquisarTratorista: TBitBtn;
    btnPesquisarTrator: TBitBtn;
    dbGrid: TDBGrid;
    editNomeTrator: TDBEdit;
    editNomeTratorista: TDBEdit;
    quAgendaTratores: TSQLQuery;
    pvAgendaTratores: TDataSetProvider;
    cdsAgendaTratores: TClientDataSet;
    dsAgendaTratores: TDataSource;
    quAgendaTratoresAI: TIntegerField;
    quAgendaTratoresID_DOCENTE: TIntegerField;
    quAgendaTratoresID_TRATORISTA: TIntegerField;
    quAgendaTratoresNOME_TRATORISTA: TStringField;
    quAgendaTratoresID_VEICULO: TIntegerField;
    quAgendaTratoresNOME_VEICULO: TStringField;
    quAgendaTratoresDATAAGENDAINI: TDateField;
    quAgendaTratoresDATAAGENDAFIM: TDateField;
    quAgendaTratoresHORASAIDA: TFloatField;
    quAgendaTratoresHORACHEGADA: TFloatField;
    quAgendaTratoresHORATOTAL: TFloatField;
    quAgendaTratoresFLAG_CANCELAR: TIntegerField;
    cdsAgendaTratoresAI: TIntegerField;
    cdsAgendaTratoresID_DOCENTE: TIntegerField;
    cdsAgendaTratoresID_TRATORISTA: TIntegerField;
    cdsAgendaTratoresNOME_TRATORISTA: TStringField;
    cdsAgendaTratoresID_VEICULO: TIntegerField;
    cdsAgendaTratoresNOME_VEICULO: TStringField;
    cdsAgendaTratoresDATAAGENDAINI: TDateField;
    cdsAgendaTratoresDATAAGENDAFIM: TDateField;
    cdsAgendaTratoresHORASAIDA: TFloatField;
    cdsAgendaTratoresHORACHEGADA: TFloatField;
    cdsAgendaTratoresHORATOTAL: TFloatField;
    cdsAgendaTratoresFLAG_CANCELAR: TIntegerField;
    cdsAgendaTratorescalcNomeDocente: TStringField;
    quVeiculos_ImplementosID_AGENDA: TIntegerField;
    btnIncluirImplemento: TBitBtn;
    btnExcluirImplemento: TBitBtn;
    editNomeImplemento: TEdit;
    Label7: TLabel;
    btnPesquisarImplemento: TBitBtn;
    editQtde: TOvcNumericField;
    quCadGeral: TSQLQuery;
    quCadGeralAI: TIntegerField;
    quCadGeralNOME: TStringField;
    pvCadGeral: TDataSetProvider;
    cdsCadGeral: TClientDataSet;
    cdsCadGeralAI: TIntegerField;
    cdsCadGeralNOME: TStringField;
    dsCadGeral: TDataSource;
    Label8: TLabel;
    quAgendaTratoresCUSTOHORA: TFMTBCDField;
    quAgendaTratoresCUSTOTOTALHORA: TFMTBCDField;
    quAgendaTratoresCUSTOLITRO: TFMTBCDField;
    quAgendaTratoresCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    quAgendaTratoresCUSTOTOTALGERAL: TFMTBCDField;
    cdsAgendaTratoresCUSTOHORA: TFMTBCDField;
    cdsAgendaTratoresCUSTOTOTALHORA: TFMTBCDField;
    cdsAgendaTratoresCUSTOLITRO: TFMTBCDField;
    cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    cdsAgendaTratoresCUSTOTOTALGERAL: TFMTBCDField;
    quCombustivel: TSQLQuery;
    quCombustivelAI: TIntegerField;
    quCombustivelID_COMBUSTIVEL: TStringField;
    quCombustivelCOMBUSTIVEL: TStringField;
    pvCombustivel: TDataSetProvider;
    cdsCombustivel: TClientDataSet;
    cdsCombustivelAI: TIntegerField;
    cdsCombustivelID_COMBUSTIVEL: TStringField;
    cdsCombustivelCOMBUSTIVEL: TStringField;
    dsCombustivel: TDataSource;
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
    quVeiculosID_COMBUSTIVEL: TIntegerField;
    quVeiculosAUTONOMIA: TFMTBCDField;
    cdsVeiculosID_COMBUSTIVEL: TIntegerField;
    cdsVeiculosAUTONOMIA: TFMTBCDField;
    cdsVeiculoscalcCombustivel: TStringField;
    cdsVeiculoscalcValorCombustivel: TFloatField;
    quAgendaTratoresID_COMBUSTIVEL: TIntegerField;
    cdsAgendaTratoresID_COMBUSTIVEL: TIntegerField;
    tsObs: TcxTabSheet;
    dbOBS: TcxDBMemo;
    quAgendaTratoresOBS: TStringField;
    cdsAgendaTratoresOBS: TStringField;
    quAgendaTratoresFLAG_CUSTOALTERADO: TIntegerField;
    cdsAgendaTratoresFLAG_CUSTOALTERADO: TIntegerField;
    cdsVeiculoscalcCustoTrator: TFloatField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirImplementoClick(Sender: TObject);
    procedure cdsVeiculos_ImplementosNewRecord(DataSet: TDataSet);
    procedure btnPesquisarTratorClick(Sender: TObject);
    procedure btnPesquisarTratoristaClick(Sender: TObject);
    procedure btnPesquisarDocenteClick(Sender: TObject);
    procedure btnPesquisarImplementoClick(Sender: TObject);
    procedure cdsVeiculos_ImplementosCalcFields(DataSet: TDataSet);
    procedure dsAgendaTratoresDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirImplementoClick(Sender: TObject);
    procedure cdsAgendaTratoresAfterScroll(DataSet: TDataSet);
    procedure cdsVeiculosCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Ok : Boolean;
    chaveImplemento : Integer;
    custoImplemento : double;
    custoTrator     : double;    
    function ValidarInformacoes: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReservaAgendaTrator: TfmReservaAgendaTrator;
  function CallReservaAgendaTrator : Boolean; overload;
  function CallReservaAgendaTrator(AId_Agenda : Integer) : Boolean ; overload;


implementation

{$R *.dfm}

uses
  bslMSG,
  bslXProcs,
  pesquisarCadGeral,
  pesquisarVeiculos,
  pesquisarImplementos,
  utlFuncoes,
  dataLGN;

function CallReservaAgendaTrator : Boolean; overload;
begin
  try
    fmReservaAgendaTrator  := TfmReservaAgendaTrator.Create(nil);
    fmReservaAgendaTrator.btnNovo.Enabled := True;
    fmReservaAgendaTrator.ShowModal;
    Result                 := fmReservaAgendaTrator.Ok;
  finally
    FreeAndNil(fmReservaAgendaTrator);
  end;
end;

function CallReservaAgendaTrator(AId_Agenda : Integer) : Boolean ; overload;
begin
  try
    Application.CreateForm(TfmReservaAgendaTrator, fmReservaAgendaTrator );
    fmReservaAgendaTrator.cdsVeiculos_Implementos.Active  := False;
    fmReservaAgendaTrator.cdsAgendaTratores.Active        := False;
    fmReservaAgendaTrator.cdsCadGeral.Active              := False;
    fmReservaAgendaTrator.cdsVeiculos.Active              := False;
    fmReservaAgendaTrator.cdsImplementos.Active           := False;
    fmReservaAgendaTrator.cdsTipoVeiculos.Active          := False;
    fmReservaAgendaTrator.cdsCombustivel.Active           := False;
    fmReservaAgendaTrator.cdsCombustivel_Valores.Active   := False;
//
    fmReservaAgendaTrator.cdsVeiculos_Implementos.Active  := True;
    fmReservaAgendaTrator.cdsCadGeral.Active              := True;
    fmReservaAgendaTrator.cdsImplementos.Active           := True;
    fmReservaAgendaTrator.cdsTipoVeiculos.Active          := True;
    fmReservaAgendaTrator.cdsCombustivel.Active           := True;
    fmReservaAgendaTrator.cdsCombustivel_Valores.Active   := True;
//
    fmReservaAgendaTrator.cdsAgendaTratores.Filtered      := False;
    fmReservaAgendaTrator.cdsAgendaTratores.Filter        := '(AI = '+IntToStr(AId_Agenda)+')';
    fmReservaAgendaTrator.cdsAgendaTratores.Filtered      := True;
    fmReservaAgendaTrator.cdsAgendaTratores.Active        := True;
//

    fmReservaAgendaTrator.cdsVeiculos_Implementos.Active    := False;
    fmReservaAgendaTrator.cdsVeiculos_Implementos.Filtered  := False;
    fmReservaAgendaTrator.cdsVeiculos_Implementos.Filter    := '(ID_AGENDA = '+IntToStr(AId_Agenda)+')';
    fmReservaAgendaTrator.cdsVeiculos_Implementos.Filtered  := True;
    fmReservaAgendaTrator.cdsVeiculos_Implementos.Active    := True;

    fmReservaAgendaTrator.cdsVeiculos.Active              := True;
    fmReservaAgendaTrator.editNomeTrator.Text             := fmReservaAgendaTrator.cdsAgendaTratoresNOME_VEICULO.AsString;
    fmReservaAgendaTrator.editNomeTratorista.Text         := fmReservaAgendaTrator.cdsAgendaTratoresNOME_TRATORISTA.AsString;
    fmReservaAgendaTrator.editNomeDocente.Text            := GetValorString('cad_geral','nome','ai',IntToStr(fmReservaAgendaTrator.cdsAgendaTratoresID_DOCENTE.AsInteger));
    fmReservaAgendaTrator.btnNovo.Visible                 := False;
    fmReservaAgendaTrator.btnEditar.Visible               := True;
//
    fmReservaAgendaTrator.ShowModal;
  finally
    FreeAndNil(fmReservaAgendaTrator);
  end;
end;

function TfmReservaAgendaTrator.ValidarInformacoes : Boolean;
var
  msg : string;
begin
  msg := '';
  Result := True;
  if Trim(editNomeDocente.Text) = '' then
    msg := 'Necessário informar o docente responsável.'+#13;

  if Trim(editNomeTrator.Text) = '' then
    msg := msg + 'Necessário informar o trator.'+#13;
    
  if Trim(editNomeTratorista.Text) = '' then
    msg := msg + 'Necessário informar o tratorista.'+#13;

  if (Trim(editHoraIni.Text) = '') or (Trim(editHoraFim.Text) = '') then
    msg := msg + 'Necessário informar os horários.';  

  if Trim(msg) > '' then
  begin
    Information(msg);
    Result := False;
  end;
end;

procedure TfmReservaAgendaTrator.btnIncluirImplementoClick(Sender: TObject);
var
  i : Integer;
begin
  if not editQtde.AsInteger > 0 then
  begin
    Warning('Necessário informar a qtde. de implementos. ');
    Exit;
  end;

  if Trim(editNomeImplemento.Text) = '' then
  begin
    Warning('Necessário informar o tipo de implemento. ');
    Exit;
  end;
    
  try
    iniciarTransacao;
    try
      for I := 0 to editQtde.AsInteger -1 do
      begin        
        cdsVeiculos_Implementos.Insert;
        cdsVeiculos_ImplementosID_IMPLEMENTO.AsInteger := chaveImplemento;
        cdsVeiculos_Implementos.Post;
        cdsVeiculos_Implementos.ApplyUpdates(0);
        cdsVeiculos_Implementos.Active                 := False;
        cdsVeiculos_Implementos.Active                 := True;
      end;

      editNomeImplemento.Clear;
      editQtde.AsInteger  := 0;
    except on E:Exception do
      begin
        Warning('erro ao incluir implementos. '+E.Message);
        rollback;
      end;
    end;
    
  finally
    terminartransacao;
  end;
end;

procedure TfmReservaAgendaTrator.btnEditarClick(Sender: TObject);
begin
  if Question('Deseja alterar os dados sobre o uso do trator ?') then
  begin
    cdsAgendaTratores.Edit;
    cdsVeiculos.Locate('AI',cdsAgendaTratoresID_VEICULO.AsInteger,[]);
  end;
end;

procedure TfmReservaAgendaTrator.btnExcluirImplementoClick(Sender: TObject);
begin
  if not Question('Deseja excluir o implemento ?') then
    Exit;

  if cdsVeiculos_Implementos.IsEmpty then
  begin
    Warning('Não existem implementos para serem excluídos.');
    Exit;
  end;

  try
    iniciarTransacao;
    try
      cdsVeiculos_Implementos.Delete;
      cdsVeiculos_Implementos.ApplyUpdates(0);
      cdsVeiculos_Implementos.Active  := False;
      cdsVeiculos_Implementos.Active  := True;
    except on E:Exception do
      begin
        rollback;
        Warning('Erro ao excluir implemento. '+E.Message);
      end;
    end;
  finally
    terminartransacao;
  end;

end;

procedure TfmReservaAgendaTrator.btnGravarClick(Sender: TObject);
  begin
  if not (ValidarInformacoes) then
    Exit;

  if (cdsVeiculos_Implementos.IsEmpty) and
     (not Question('Nenhum implemento adicionado ao trador.'+#13+'Deseja continuar?')) then
    Exit;

  try
    iniciarTransacao;
    try
      cdsAgendaTratoresHORATOTAL.AsFloat := (cdsAgendaTratoresHORACHEGADA.AsFloat - cdsAgendaTratoresHORASAIDA.AsFloat);

      //rotina para calcular totalizadores.
      cdsVeiculos_Implementos.First;
      custoImplemento  := 0;
      cdsVeiculos_Implementos.DisableControls;
      while not cdsVeiculos_Implementos.Eof do
      begin
        Application.ProcessMessages;
        custoImplemento := (custoImplemento + cdsVeiculos_ImplementoscalcValorImplemento.AsFloat);              
        cdsVeiculos_Implementos.Next;
      end;
      cdsVeiculos_Implementos.EnableControls;

      cdsAgendaTratoresCUSTOHORA.AsFloat        := cdsAgendaTratoresHORATOTAL.AsFloat *  cdsVeiculoscalcCustoTrator.AsFloat; //custoTrator;

     if custoImplemento > 0 then
        cdsAgendaTratoresCUSTOTOTALHORA.AsFloat   := cdsAgendaTratoresCUSTOHORA.AsFloat + (cdsAgendaTratoresHORATOTAL.AsFloat * custoImplemento);

      //rotina para calcular totalizadores.

      //despesa de combustivel..
      if (cdsAgendaTratoresFLAG_CUSTOALTERADO.AsInteger = 1) then
      begin
        if (Question('Custo de combustível já alterado anteriormente,'+#13+'deseja que o sistema recalcule?')) then
        begin
          cdsAgendaTratoresID_COMBUSTIVEL.AsInteger       := cdsVeiculosID_COMBUSTIVEL.AsInteger;
          cdsAgendaTratoresCUSTOLITRO.AsFloat             := cdsVeiculoscalcValorCombustivel.AsFloat;
          cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat  := ((cdsAgendaTratoresHORATOTAL.AsFloat / cdsVeiculosAUTONOMIA.AsFloat) * cdsVeiculoscalcValorCombustivel.AsFloat);
          cdsAgendaTratoresFLAG_CUSTOALTERADO.AsInteger   := 0;
        end;
      end
      else
      begin
        cdsAgendaTratoresID_COMBUSTIVEL.AsInteger       := cdsVeiculosID_COMBUSTIVEL.AsInteger;
        cdsAgendaTratoresCUSTOLITRO.AsFloat             := cdsVeiculoscalcValorCombustivel.AsFloat;
        cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat  := ((cdsAgendaTratoresHORATOTAL.AsFloat / cdsVeiculosAUTONOMIA.AsFloat) * cdsVeiculoscalcValorCombustivel.AsFloat);
      end;
      //despesa de combustivel....

      cdsAgendaTratoresCUSTOTOTALGERAL.AsFloat  := cdsAgendaTratoresCUSTOTOTALHORA.AsFloat + cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat;

      cdsAgendaTratores.Post;
      cdsAgendaTratores.ApplyUpdates(0);
      Ok := True;
      Close;     
    except on E:Exception do
      begin
        Warning('Erro ao gravar reserva. '+e.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmReservaAgendaTrator.btnNovoClick(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      cdsAgendaTratores.Active       := True;
      cdsVeiculos.Active             := True; 
      cdsTipoVeiculos.Active         := True;
      cdsImplementos.Active          := True;
      cdsVeiculos_Implementos.Active := True;
      cdsCadGeral.Active             := True;
      cdsCombustivel.Active          := True;
      cdsCombustivel_Valores.Active  := True;

      cdsAgendaTratores.Insert;
      editDataIni.Date := Date;
      editDataFim.Date := Date;
      cdsAgendaTratores.Post;
      cdsAgendaTratores.ApplyUpdates(0);
      cdsAgendaTratores.Active  := False;
      cdsAgendaTratores.Active  := True;
      cdsAgendaTratores.Last;
      cdsAgendaTratores.Edit;
    except on E:Exception do
      begin
        Warning('Erro ao incluir agendamento. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmReservaAgendaTrator.btnPesquisarDocenteClick(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarCadGeral(False,True,True,True);
  if chave > 0 then
  begin
    if cdsCadGeral.FindKey([chave]) then
    begin
      cdsAgendaTratoresID_DOCENTE.AsInteger := chave;
      editNomeDocente.Text                  := cdsCadGeralNOME.AsString;  
    end;
  end;
end;

procedure TfmReservaAgendaTrator.btnPesquisarImplementoClick(Sender: TObject);
begin
  chaveImplemento := CallPesquisarImplementos;
  if chaveImplemento > 0 then
  begin
    if cdsImplementos.FindKey([chaveImplemento]) then
      editNomeImplemento.Text := cdsImplementosIMPLEMENTO.AsString;

    btnIncluirImplemento.SetFocus;
  end;
  
end;

procedure TfmReservaAgendaTrator.btnPesquisarTratorClick(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarVeiculos;
  if chave > 0 then
  begin
    if cdsVeiculos.FindKey([chave]) then
    begin
      cdsAgendaTratoresID_VEICULO.AsInteger  := chave;
      cdsAgendaTratoresNOME_VEICULO.AsString := cdsVeiculosNOME.AsString;

//      custoTrator := 0;
//      if cdsTipoVeiculos.FindKey([cdsVeiculosID_TIPOVEICULO.AsInteger]) then
//        custoTrator := cdsTipoVeiculosCUSTO.AsFloat;
    end;
  end;
end;

procedure TfmReservaAgendaTrator.btnPesquisarTratoristaClick(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarCadGeral(True,False,False,False);
  if chave > 0 then
  begin
    if cdsCadGeral.FindKey([chave]) then
    begin
      cdsAgendaTratoresID_TRATORISTA.AsInteger   := chave;
      cdsAgendaTratoresNOME_TRATORISTA.AsString  := cdsCadGeralNOME.AsString;
    end;
  end;
end;

procedure TfmReservaAgendaTrator.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmReservaAgendaTrator.cdsAgendaTratoresAfterScroll(
  DataSet: TDataSet);
begin
  if cdsVeiculos_Implementos.Active then
    cdsVeiculos_Implementos.Refresh;
end;

procedure TfmReservaAgendaTrator.cdsVeiculosCalcFields(DataSet: TDataSet);
begin
  if (cdsCombustivel.Active) and (cdsCombustivel_Valores.Active) then
  begin
    if cdsCombustivel.FindKey([cdsVeiculosID_COMBUSTIVEL.AsInteger]) then
    begin
      cdsVeiculoscalcCombustivel.AsString      := cdsCombustivelCOMBUSTIVEL.AsString;
      cdsVeiculoscalcValorCombustivel.AsFloat  := cdsCombustivel_ValoresCUSTO.AsFloat;
    end;
  end;

  if (cdsTipoVeiculos.Active) and (cdsVeiculos.Active) then
  begin
//    cdsVeiculos.FindKey([cdsAgendaTratoresID_VEICULO.AsInteger]);
    if cdsTipoVeiculos.FindKey([cdsVeiculosID_TIPOVEICULO.AsInteger]) then
      cdsVeiculoscalcCustoTrator.AsFloat := cdsTipoVeiculosCUSTO.AsFloat;
  end;
end;

procedure TfmReservaAgendaTrator.cdsVeiculos_ImplementosCalcFields(
  DataSet: TDataSet);
begin
  if cdsImplementos.Active then
  begin
    cdsImplementos.IndexFieldNames := 'Ai';
    if cdsImplementos.FindKey([cdsVeiculos_ImplementosID_IMPLEMENTO.AsInteger]) then
    begin
      cdsVeiculos_ImplementoscalcNomeImplemento.AsString := cdsImplementosIMPLEMENTO.AsString;
      cdsVeiculos_ImplementoscalcValorImplemento.AsFloat := cdsImplementosCUSTO.AsFloat;
    end;
  end;
end;

procedure TfmReservaAgendaTrator.cdsVeiculos_ImplementosNewRecord(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_AGENDA').AsInteger := cdsAgendaTratoresAI.AsInteger;
end;

procedure TfmReservaAgendaTrator.dsAgendaTratoresDataChange(Sender: TObject;
  Field: TField);
begin
  btnNovo.Enabled                 := not (cdsAgendaTratores.State in [dsInsert, dsEdit]);
  btnEditar.Enabled               := not (cdsAgendaTratores.State in [dsInsert, dsEdit]);
  btnGravar.Enabled               := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);

  btnPesquisarTratorista.Enabled  := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);
  btnPesquisarTrator.Enabled      := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);
  btnPesquisarDocente.Enabled     := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);
  btnPesquisarImplemento.Enabled  := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);   
  btnIncluirImplemento.Enabled    := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);   
  btnExcluirImplemento.Enabled    := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);   
  
  editNomeTrator.Enabled          := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);
  editNomeTratorista.Enabled      := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);
  editNomeDocente.Enabled         := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);
  editNomeImplemento.Enabled      := (cdsAgendaTratores.State     in [dsInsert, dsEdit]);
end;

procedure TfmReservaAgendaTrator.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsAgendaTratores.Active       := False;
  cdsVeiculos.Active             := False;
  cdsTipoVeiculos.Active         := False;
  cdsImplementos.Active          := False;
  cdsVeiculos_Implementos.Active := False;
  cdsCadGeral.Active             := False;
  cdsCombustivel.Active          := False;
  cdsCombustivel_Valores.Active  := False;
end;

procedure TfmReservaAgendaTrator.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (cdsAgendaTratores.State in [dsEdit, dsInsert]) then
  begin
    if (Question('Reserva ainda não efetuada,'+#13+'deseja sair?' )) then
      CanClose := True
    else
      CanClose := False;  
  end
  else
    CanClose := True;
end;

procedure TfmReservaAgendaTrator.FormShow(Sender: TObject);
begin
  //custoTrator                    := 0;
  editQtde.AsInteger             := 1;
  custoImplemento                := 0;
  chaveImplemento                := 0;
  Width                          := 595;
  Ok                             := False; 
end;

end.
