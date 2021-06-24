unit agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxScheduler3Painter, Menus, cxStyles, cxEdit,
  cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView, StdCtrls,
  Buttons, cxSchedulerDBStorage, DB, FMTBcd, DBClient, Provider, SqlExpr,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxContainer, cxGroupBox, ExtCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxButtons, cxCheckBox, ImgList, Grids,
  DBGrids, Mask, DBCtrls;

type
  TfmAgenda = class(TForm)
    dsAgenda: TDataSource;
    quAgenda: TSQLQuery;
    pvAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    gbPeriodo: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnPeriodo: TcxButton;
    btnReserva: TBitBtn;
    btnPesquisar: TBitBtn;
    popConsulta: TPopupMenu;
    ConsultarReserva1: TMenuItem;
    quAgendaAI: TIntegerField;
    quAgendaID_VEICULO: TIntegerField;
    quAgendaNOME_VEICULO: TStringField;
    quAgendaFLAG_VEICULOPROPRIO: TIntegerField;
    quAgendaID_MOTORISTA: TIntegerField;
    quAgendaNOME_MOTORISTA: TStringField;
    quAgendaOBS: TStringField;
    quAgendaDATAAGENDAINI: TDateField;
    quAgendaDATAAGENDAFIM: TDateField;
    quAgendaDATAINC: TDateField;
    quAgendaHORAINC: TTimeField;
    cdsAgendaID_VEICULO: TIntegerField;
    cdsAgendaNOME_VEICULO: TStringField;
    cdsAgendaFLAG_VEICULOPROPRIO: TIntegerField;
    cdsAgendaID_MOTORISTA: TIntegerField;
    cdsAgendaNOME_MOTORISTA: TStringField;
    cdsAgendaOBS: TStringField;
    cdsAgendaDATAAGENDAINI: TDateField;
    cdsAgendaDATAAGENDAFIM: TDateField;
    cdsAgendaDATAINC: TDateField;
    cdsAgendaHORAINC: TTimeField;
    pmData: TPopupMenu;
    Hoje1: TMenuItem;
    deAmanh1: TMenuItem;
    deontem1: TMenuItem;
    demsatual1: TMenuItem;
    domspassado1: TMenuItem;
    athoje1: TMenuItem;
    ontem1: TMenuItem;
    tudo1: TMenuItem;
    ImageList1: TImageList;
    editDataIni: TcxDateEdit;
    editDataFim: TcxDateEdit;
    quAgendaFLAG_CANCELAR: TIntegerField;
    cdsAgendaFLAG_CANCELAR: TIntegerField;
    CancelarViagem: TMenuItem;
    btnSair: TBitBtn;
    quAgendaHORAAGENDAINI: TTimeField;
    quAgendaHORAAGENDAFIM: TTimeField;
    quAgendaKMSAIDA: TFloatField;
    quAgendaKMRETORNO: TFloatField;
    quAgendaKMSALDO: TFloatField;
    cdsAgendaHORAAGENDAINI: TTimeField;
    cdsAgendaHORAAGENDAFIM: TTimeField;
    cdsAgendaKMSAIDA: TFloatField;
    cdsAgendaKMRETORNO: TFloatField;
    cdsAgendaKMSALDO: TFloatField;
    quAgendaID_TIPOVIAGEM: TIntegerField;
    cdsAgendaID_TIPOVIAGEM: TIntegerField;
    cdsAgendaAI: TIntegerField;
    editId_Cadastro: TEdit;
    btnPesquisarCadastro: TSpeedButton;
    editNomeCadastro: TEdit;
    Label3: TLabel;
    quAgendaID_DOCENTE: TIntegerField;
    cdsAgendaID_DOCENTE: TIntegerField;
    quAgendaCUSTOTOTALKM: TFMTBCDField;
    quAgendaCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    quAgendaCUSTOTOTALGERAL: TFMTBCDField;
    cdsAgendaCUSTOTOTALKM: TFMTBCDField;
    cdsAgendaCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    cdsAgendaCUSTOTOTALGERAL: TFMTBCDField;
    Ajustarvalorcomb1: TMenuItem;
    quAgendaFLAG_CUSTOALTERADO: TIntegerField;
    cdsAgendaFLAG_CUSTOALTERADO: TIntegerField;
    img: TImageList;
    dbGrid: TDBGrid;
    cdsAgendachk: TIntegerField;
    CalcCombustivel1: TMenuItem;
    quVeiculos: TSQLQuery;
    pvVeiculos: TDataSetProvider;
    cdsVeiculos: TClientDataSet;
    quVeiculosAI: TIntegerField;
    quVeiculosID_COMBUSTIVEL: TIntegerField;
    quVeiculosAUTONOMIA: TFMTBCDField;
    quVeiculosID_VEICULO: TStringField;
    quVeiculosID_TIPOVEICULO: TIntegerField;
    quVeiculosNOME: TStringField;
    quVeiculosLOCAL: TStringField;
    quVeiculosCOR: TStringField;
    cdsVeiculosAI: TIntegerField;
    cdsVeiculosID_COMBUSTIVEL: TIntegerField;
    cdsVeiculosAUTONOMIA: TFMTBCDField;
    cdsVeiculosID_VEICULO: TStringField;
    cdsVeiculosID_TIPOVEICULO: TIntegerField;
    cdsVeiculosNOME: TStringField;
    cdsVeiculosLOCAL: TStringField;
    cdsVeiculosCOR: TStringField;
    procedure btnReservaClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure ConsultarReserva1Click(Sender: TObject);
    procedure btnPeriodoClick(Sender: TObject);
    procedure Hoje1Click(Sender: TObject);
    procedure deAmanh1Click(Sender: TObject);
    procedure deontem1Click(Sender: TObject);
    procedure demsatual1Click(Sender: TObject);
    procedure domspassado1Click(Sender: TObject);
    procedure athoje1Click(Sender: TObject);
    procedure ontem1Click(Sender: TObject);
    procedure tudo1Click(Sender: TObject);
    procedure CancelarViagemClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbGridAgendaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnPesquisarCadastroClick(Sender: TObject);
    procedure Ajustarvalorcomb1Click(Sender: TObject);
    procedure dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridDblClick(Sender: TObject);
    procedure CalcCombustivel1Click(Sender: TObject);
    procedure dbGridTitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    chave : Integer;
    procedure PreencherData(AOpc: Integer);
    function filtroAgenda: string;
    function VarificarViagensMarcadas: Boolean;
    function CalcularCombustivelVeiculos(ACusto: Extended; AKmTotal : Double): Boolean;
    function CalcularTotalKm: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAgenda: TfmAgenda;
  procedure CallAgenda;

implementation

{$R *.dfm}

uses
  bslMSG,
  bslXProcs,
  reservaAgenda,
  pesquisarCadGeral,
  ajustarValorCombustivel,
  calcularCombustivelVeiculo,
  utlFuncoes,
  dataLGN;

procedure CallAgenda;
begin
  try
    fmAgenda := TfmAgenda.Create(nil);
    fmAgenda.ShowModal;
  finally
    FreeAndNil(fmAgenda);
  end;
end;

procedure TfmAgenda.PreencherData(AOpc: Integer);
var
  opc  : Integer;
  hoje : TDate;
begin
  opc := AOpc;
  hoje := Now;

  case opc of
    1 : // hoje
        begin
          editDataIni.Text := FormatDateTime('dd/mm/yyyy', hoje);
          editDataFim.Text := FormatDateTime('dd/mm/yyyy', editDataIni.Date);
        end;
    2 : // ontem
        begin
          editDataIni.Text := FormatDateTime('dd/mm/yyyy', hoje-1);
          editDataFim.Text := FormatDateTime('dd/mm/yyyy', editDataIni.Date);
        end;
    3 : // mês atual
        begin
          editDataIni.Text := FormatDateTime('dd/mm/yyyy', dateBeginOfMonth(hoje));
          editDataFim.Text := FormatDateTime('dd/mm/yyyy', dateEndOfMonth(hoje));
        end;
    4 : // mês passado
        begin
          editDataFim.Text := FormatDateTime('dd/mm/yyyy', dateBeginOfMonth(hoje)-1);
          editDataIni.Text := FormatDateTime('dd/mm/yyyy', dateBeginOfMonth(editDataFim.Date));
        end;
    5 : // até hoje
        begin
          editDataIni.Text := '';
          editDataFim.Text := FormatDateTime('dd/mm/yyyy', hoje);
        end;
    6 : // até ontem
        begin
          editDataIni.Text := '';
          editDataFim.Text := FormatDateTime('dd/mm/yyyy', hoje-1);
        end;
    7 : // tudo
        begin
          editDataIni.Text := '';
          editDataFim.Text := '';
        end;
    8 : // ontem
        begin
          editDataIni.Text := FormatDateTime('dd/mm/yyyy', hoje+1);
          editDataFim.Text := FormatDateTime('dd/mm/yyyy', hoje+1);
        end;

  end;
end;

function TfmAgenda.VarificarViagensMarcadas : Boolean;
begin
  Result := False;
  if not cdsAgenda.Active then
    Exit;

  if cdsAgenda.IsEmpty then
    Exit;
  try
    cdsAgenda.DisableControls;
    cdsAgenda.First;
    while (not cdsAgenda.Eof) do
    begin
      if cdsAgendachk.AsInteger = 1 then
      begin
        Result := True;
        Break;
      end;
      cdsAgenda.Next;
    end;
  finally
    cdsAgenda.EnableControls;
  end;
end;

function TfmAgenda.CalcularTotalKm : Double;
var
  kmTotal : Double;
begin
  kmTotal := 0;
  try
    cdsAgenda.DisableControls;
    cdsAgenda.First;
    while (not cdsAgenda.Eof) do
    begin
      if cdsAgendachk.AsInteger = 1 then
        kmTotal := kmTotal + cdsAgendaKMSALDO.AsFloat;
      cdsAgenda.Next;
    end;
  finally
    Result := kmTotal;
    cdsAgenda.EnableControls;
  end;
end;

function TfmAgenda.CalcularCombustivelVeiculos(ACusto : Extended; AKmTotal : Double) : Boolean;
begin
  Result := False;
  try
    cdsAgenda.DisableControls;
    cdsAgenda.First;
    while (not cdsAgenda.Eof) do
    begin
      if cdsAgendachk.AsInteger = 1 then
      begin
        cdsAgenda.Edit;
          cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat :=((((cdsAgendaKMSALDO.AsFloat / AKmTotal) * 100) * ACusto) /100);
          cdsAgendaCUSTOTOTALGERAL.AsFloat       := cdsAgendaCUSTOTOTALKM.AsFloat + cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat;
          cdsAgendaFLAG_CUSTOALTERADO.AsInteger  := 1;
        cdsAgenda.Post;
      end;
      cdsAgenda.Next;
    end;
    cdsAgenda.ApplyUpdates(0);
    cdsAgenda.Refresh;
  finally
    cdsAgenda.EnableControls;
  end;
end;

procedure TfmAgenda.tudo1Click(Sender: TObject);
begin
  PreencherData(7);
end;

procedure TfmAgenda.Ajustarvalorcomb1Click(Sender: TObject);
var
  vlrCombustivel : Extended;
begin
  if (not cdsAgenda.Active) or (cdsAgenda.IsEmpty) then
    Exit;
  try
    iniciarTransacao;
    try
      vlrCombustivel := CallAjustarValorCombustivel(cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat);
      if vlrCombustivel <= 0 then
        raise Exception.Create('Valor inválido, será mantido o valor atual de combustível.')
      else
      begin
        cdsAgenda.Edit;
        cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat := vlrCombustivel;
        cdsAgendaCUSTOTOTALGERAL.AsFloat       := cdsAgendaCUSTOTOTALCOMBUSTIVEL.AsFloat +
                                                  cdsAgendaCUSTOTOTALKM.AsFloat;
        cdsAgendaFLAG_CUSTOALTERADO.AsInteger  := 1;
        cdsAgenda.Post;
        cdsAgenda.ApplyUpdates(0);
        cdsAgenda.Refresh;
      end;
    except on E:Exception do
      begin
        //rollback;
        Warning(E.Message);
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmAgenda.athoje1Click(Sender: TObject);
begin
  PreencherData(5);
end;

procedure TfmAgenda.btnPeriodoClick(Sender: TObject);
begin
  pmData.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

function TfmAgenda.filtroAgenda : string;
var
  qu : string;
begin
  qu := '';
  if ( (editDataIni.Date) > 0 ) and ( (editDataFim.Date) > 0 ) then
    qu := '(DATAAGENDAINI >= '+QuotedStr(editDataIni.Text)+') AND (DATAAGENDAFIM <= '+QuotedStr(editDataFim.Text)+' ) '
  else
  if ( (editDataIni.Date) > 0) then
    qu := '(DATAAGENDAINI >= '+QuotedStr(editDataIni.Text)+')'
  else
  if ( (editDataFim.Date) > 0 ) then
    qu := '(DATAAGENDAFIM <= '+QuotedStr(editDataFim.Text)+')';

  if qu > '' then
  begin
    if chave > 0 then
      qu := qu + ' AND (ID_DOCENTE = '+IntToStr(chave)+' ) '
  end
  else
    if (chave > 0) then
      qu := ' (ID_DOCENTE = '+IntToStr(chave)+' ) ';

  if Trim(qu) > '' then
    Result := LowerCase(qu + ' AND (FLAG_CANCELAR = 0) ')
  else
    result := LowerCase('(FLAG_CANCELAR = 0)')
end;

procedure TfmAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsAgenda.Close;
  cdsVeiculos.Close;
end;

procedure TfmAgenda.FormShow(Sender: TObject);
begin
  PreencherData(3);
end;

procedure TfmAgenda.btnPesquisarCadastroClick(Sender: TObject);
begin
  chave := CallPesquisarCadGeral(True,True,False, True);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmAgenda.btnPesquisarClick(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      cdsVeiculos.Active        := False;
      cdsAgenda.Active          := False;
        cdsAgenda.Filtered      := False;
        cdsAgenda.Filter        := '('+filtroAgenda+')';
        cdsAgenda.Filtered      := True;
      cdsAgenda.Active          := True;
      cdsVeiculos.Active        := True;
    except on E:Exception do
      begin
        Warning('Erro ao pesquisar agenda, '+E.Message);
        rollback;
      end;
    end;
  finally
    editDataIni.Clear;
    editDataFim.Clear;
    terminartransacao;
  end;
end;

procedure TfmAgenda.btnReservaClick(Sender: TObject);
begin
  (*
  if VarificarViagensMarcadas then
  begin
    Warning('Existem viagens selecionadas'+#13+'desmarque antes de efetuar a reserva. ');
    Exit;
  end;
  *)

  if CallReservaAgenda then
  begin
    DesktopAlert('Registro efetuado com sucesso.', daInformacao);
    PreencherData(3);
    cdsVeiculos.Active        := False;
    cdsAgenda.Active          := False;
      cdsAgenda.Filtered      := False;
      cdsAgenda.Filter        := '('+filtroAgenda+')';
      cdsAgenda.Filtered      := True;
    cdsAgenda.Active          := True;
    cdsVeiculos.Active        := True;
  end;
end;

procedure TfmAgenda.btnSairClick(Sender: TObject);
begin
  if Question('Deseja sair da visualização da agenda? ') then
    Close;
end;

procedure TfmAgenda.CalcCombustivel1Click(Sender: TObject);
var
  custoTotal : Extended;
  kmTotal    : Double;
begin
  if not VarificarViagensMarcadas then
  begin
    Warning('Não existem viagens selecionadas.');
    Exit;
  end;

  custoTotal := 0;
  kmTotal    := CalcularTotalKm;

  try
    custoTotal := StrToFloat(InputBox('Combustível','Digite o custo total do combustível.','0,00'));
  except
    begin
      Warning('Valor inválido.');
      Exit;
    end;
  end;
  CalcularCombustivelVeiculos(custoTotal, kmTotal);

end;

procedure TfmAgenda.CancelarViagemClick(Sender: TObject);
var
  msg: string;
begin
  if (not cdsAgenda.Active) or (cdsAgenda.IsEmpty) then
    Exit;

  msg := 'Deseja cancelar a viagem do motorista: '+ cdsAgendaNOME_MOTORISTA.AsString+#13+
         'no período de: '+FormatDateTime('dd/mm/yyyy', cdsAgendaDATAAGENDAINI.AsDateTime)+' até: '+FormatDateTime('dd/mm/yyyy', cdsAgendaDATAAGENDAFIM.AsDateTime)+#13+
         'obs: '+cdsAgendaOBS.AsString;
  if Question(msg) then
  begin
    cdsAgenda.Edit;
      cdsAgendaFLAG_CANCELAR.AsInteger := 1;
    cdsAgenda.Post;
    cdsAgenda.ApplyUpdates(0);
    cdsAgenda.Refresh;
  end;

end;

procedure TfmAgenda.ConsultarReserva1Click(Sender: TObject);
begin
  if (not cdsAgenda.Active) or (cdsAgenda.IsEmpty) then
    Exit;

  CallReservaAgenda(cdsAgendaAI.AsInteger);
  cdsAgenda.Active  := False;
  cdsAgenda.Active  := True;
end;

procedure TfmAgenda.dbGridAgendaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
  begin
    ACanvas.Canvas.Font.Color := clBlack;
  end;

  if AViewInfo.GridRecord.RecordIndex mod 2 = 0 then
    ACanvas.Brush.Color := clWindow
  else
    ACanvas.Brush.Color := $00A4F9BF;
end;

procedure TfmAgenda.dbGridDblClick(Sender: TObject);
begin
  if not cdsAgenda.Active then
    Exit;

  if cdsAgenda.IsEmpty then
    Exit;

  cdsAgenda.Edit;
  if cdsAgendachk.AsInteger = 1 then
    cdsAgendachk.AsInteger := 0
  else
    cdsAgendachk.AsInteger := 1;

  cdsAgenda.Post;
end;

procedure TfmAgenda.dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if cdsAgendaFLAG_CUSTOALTERADO.AsInteger = 1 then
  begin
    dbGrid.Canvas.Font.Style := [fsItalic, fsBold];
    dbGrid.DefaultDrawDataCell(Rect,dbGrid.Columns[DataCol].Field,State);
  end;

  if cdsVeiculos.FindKey([cdsAgendaID_VEICULO.AsInteger]) then
  begin
    if (Column.Field=cdsAgendaNOME_VEICULO) then
    begin
      dbGrid.Canvas.Font.Color := StrToInt(cdsVeiculosCOR.AsString);
      dbGrid.DefaultDrawDataCell(Rect,dbGrid.Columns[DataCol].Field,State);
    end;
  end;

  with sender as TDBGrid do
  begin
    if (Column.Field=cdsAgendachk) then
    begin
      Canvas.FillRect(Rect);
      img.Draw(Canvas,Rect.Left+4,Rect.Top+1,0);
      if (cdsAgendachk.AsInteger=1) then
        img.Draw(Canvas,Rect.Left+4,Rect.Top+1,1)
    end;
  end;
end;

procedure TfmAgenda.dbGridTitleClick(Column: TColumn);
begin
  if not cdsAgenda.Active then
    exit;

  if (Column.Field = cdsAgendaDATAAGENDAINI) then
    cdsAgenda.IndexFieldNames := 'DATAAGENDAINI';
  if (Column.Field = cdsAgendaNOME_VEICULO) then
    cdsAgenda.IndexFieldNames := 'NOME_VEICULO';
end;

procedure TfmAgenda.deAmanh1Click(Sender: TObject);
begin
  PreencherData(8);
end;

procedure TfmAgenda.demsatual1Click(Sender: TObject);
begin
  PreencherData(3);
end;

procedure TfmAgenda.deontem1Click(Sender: TObject);
begin
  PreencherData(2);
end;

procedure TfmAgenda.domspassado1Click(Sender: TObject);
begin
  PreencherData(4);
end;

procedure TfmAgenda.Hoje1Click(Sender: TObject);
begin
  PreencherData(1);
end;

procedure TfmAgenda.ontem1Click(Sender: TObject);
begin
  PreencherData(6);
end;

end.
