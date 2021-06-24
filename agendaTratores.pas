unit agendaTratores;

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
  dxSkinXmas2008Blue, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Buttons, StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtons, cxGroupBox, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  ImgList;

type
  TfmAgendaTratores = class(TForm)
    gbPeriodo: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnPeriodo: TcxButton;
    editDataIni: TcxDateEdit;
    editDataFim: TcxDateEdit;
    editId_Cadastro: TEdit;
    btnPesquisarCadastro: TSpeedButton;
    editNomeCadastro: TEdit;
    Label3: TLabel;
    btnSair: TBitBtn;
    btnPesquisar: TBitBtn;
    btnReserva: TBitBtn;
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
    pmData: TPopupMenu;
    Hoje1: TMenuItem;
    deAmanh1: TMenuItem;
    deontem1: TMenuItem;
    demsatual1: TMenuItem;
    domspassado1: TMenuItem;
    athoje1: TMenuItem;
    ontem1: TMenuItem;
    tudo1: TMenuItem;
    popConsulta: TPopupMenu;
    ConsultarReserva1: TMenuItem;
    CancelarViagem: TMenuItem;
    quAgendaTratoresCUSTOTOTALHORA: TFMTBCDField;
    quAgendaTratoresCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    quAgendaTratoresCUSTOTOTALGERAL: TFMTBCDField;
    cdsAgendaTratoresCUSTOTOTALHORA: TFMTBCDField;
    cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    cdsAgendaTratoresCUSTOTOTALGERAL: TFMTBCDField;
    AjustarValorCombustivel1: TMenuItem;
    quAgendaTratoresFLAG_CUSTOALTERADO: TIntegerField;
    cdsAgendaTratoresFLAG_CUSTOALTERADO: TIntegerField;
    dbGrid: TDBGrid;
    img: TImageList;
    cdsAgendaTratoreschk: TIntegerField;
    Calcularcombustvel1: TMenuItem;
    quVeiculos: TSQLQuery;
    quVeiculosAI: TIntegerField;
    quVeiculosID_COMBUSTIVEL: TIntegerField;
    quVeiculosAUTONOMIA: TFMTBCDField;
    quVeiculosID_VEICULO: TStringField;
    quVeiculosID_TIPOVEICULO: TIntegerField;
    quVeiculosNOME: TStringField;
    quVeiculosLOCAL: TStringField;
    quVeiculosCOR: TStringField;
    pvVeiculos: TDataSetProvider;
    cdsVeiculos: TClientDataSet;
    cdsVeiculosAI: TIntegerField;
    cdsVeiculosID_COMBUSTIVEL: TIntegerField;
    cdsVeiculosAUTONOMIA: TFMTBCDField;
    cdsVeiculosID_VEICULO: TStringField;
    cdsVeiculosID_TIPOVEICULO: TIntegerField;
    cdsVeiculosNOME: TStringField;
    cdsVeiculosLOCAL: TStringField;
    cdsVeiculosCOR: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure Hoje1Click(Sender: TObject);
    procedure deAmanh1Click(Sender: TObject);
    procedure deontem1Click(Sender: TObject);
    procedure demsatual1Click(Sender: TObject);
    procedure domspassado1Click(Sender: TObject);
    procedure athoje1Click(Sender: TObject);
    procedure ontem1Click(Sender: TObject);
    procedure tudo1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnReservaClick(Sender: TObject);
    procedure cdsAgendaTratoresCalcFields(DataSet: TDataSet);
    procedure btnPesquisarCadastroClick(Sender: TObject);
    procedure ConsultarReserva1Click(Sender: TObject);
    procedure CancelarViagemClick(Sender: TObject);
    procedure AjustarValorCombustivel1Click(Sender: TObject);
    procedure dbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGridDblClick(Sender: TObject);
    procedure Calcularcombustvel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbGridTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    chave : Integer;
    procedure PreencherData(AOpc: Integer);
    function filtroAgenda: string;
    function VarificarViagensMarcadas: Boolean;
    function CalcularCombustivelTratores(ACusto: Extended;
      AHoraTotal: Double): Boolean;
    function CalcularTotalHora: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAgendaTratores: TfmAgendaTratores;
  procedure CallAgendaTratores;

implementation

{$R *.dfm}

uses
  bslMSG,
  bslXProcs,
  reservaAgendaTratores,
  pesquisarCadGeral,
  ajustarValorCombustivel,
  utlFuncoes,
  dataLGN;

procedure CallAgendaTratores;
begin
  try
    fmAgendaTratores := TfmAgendaTratores.Create(nil);
    fmAgendaTratores.ShowModal;
  finally
    FreeAndNil(fmAgendaTratores);
  end;
end;

function TfmAgendaTratores.VarificarViagensMarcadas : Boolean;
begin
  if not cdsAgendaTratores.Active then
    Exit;

  if cdsAgendaTratores.IsEmpty then
    Exit;

  Result := False;
  try
    cdsAgendaTratores.DisableControls;
    cdsAgendaTratores.First;
    while (not cdsAgendaTratores.Eof) do
    begin
      if cdsAgendaTratoreschk.AsInteger = 1 then
      begin
        Result := True;
        Break;
      end;
      cdsAgendaTratores.Next;
    end;
  finally
    cdsAgendaTratores.EnableControls;
  end;
end;

function TfmAgendaTratores.CalcularCombustivelTratores(ACusto : Extended; AHoraTotal : Double) : Boolean;
begin
  Result := False;
  try
    cdsAgendaTratores.DisableControls;
    cdsAgendaTratores.First;
    while (not cdsAgendaTratores.Eof) do
    begin
      if cdsAgendaTratoreschk.AsInteger = 1 then
      begin
        cdsAgendaTratores.Edit;
          cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat :=((((cdsAgendaTratoresHoraTotal.AsFloat / AHoraTotal) * 100) * ACusto) /100);
          cdsAgendaTratoresCUSTOTOTALGERAL.AsFloat       := cdsAgendaTratoresCUSTOTOTALHORA.AsFloat + cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat;
          cdsAgendaTratoresFLAG_CUSTOALTERADO.AsInteger  := 1;
        cdsAgendaTratores.Post;
      end;
      cdsAgendaTratores.Next;
    end;
    cdsAgendaTratores.ApplyUpdates(0);
    cdsAgendaTratores.Refresh;
  finally
    cdsAgendaTratores.EnableControls;
  end;
end;

procedure TfmAgendaTratores.Calcularcombustvel1Click(Sender: TObject);
var
  custoTotal : Extended;
  horaTotal    : Double;
begin
  if not VarificarViagensMarcadas then
  begin
    Warning('Necessário selecionar as viagens.');
    Exit;
  end;

  custoTotal := 0;
  horaTotal  := CalcularTotalHora;

  try
    custoTotal := StrToFloat(InputBox('Combustível','Digite o custo total do combustível.','0,00'));
  except
    begin
      Warning('Valor Invalido.');
      Exit;
    end;
  end;
  CalcularCombustivelTratores(custoTotal, horaTotal);
end;

function TfmAgendaTratores.CalcularTotalHora: Double;
var
  horaTotal : Double;
begin
  horaTotal := 0;
  try
    cdsAgendaTratores.DisableControls;
    cdsAgendaTratores.First;
    while (not cdsAgendaTratores.Eof) do
    begin
      if cdsAgendaTratoreschk.AsInteger = 1 then
        horaTotal := horaTotal + cdsAgendaTratoresHORATOTAL.AsFloat;
      cdsAgendaTratores.Next;
    end;
  finally
    Result := horaTotal;
    cdsAgendaTratores.EnableControls;
  end;
end;


procedure TfmAgendaTratores.dbGridDblClick(Sender: TObject);
begin
  if not cdsAgendaTratores.Active then
    Exit;

  if cdsAgendaTratores.IsEmpty then
    Exit;

  cdsAgendaTratores.Edit;
  if cdsAgendaTratoreschk.AsInteger = 1 then
    cdsAgendaTratoreschk.AsInteger := 0
  else
    cdsAgendaTratoreschk.AsInteger := 1;

  cdsAgendaTratores.Post;
end;

procedure TfmAgendaTratores.dbGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if cdsAgendaTratoresFLAG_CUSTOALTERADO.AsInteger = 1 then
  begin
    dbGrid.Canvas.Font.Style := [fsItalic, fsBold];
    dbGrid.DefaultDrawDataCell(Rect,dbGrid.Columns[DataCol].Field,State);
  end;

  if cdsVeiculos.FindKey([cdsAgendaTratoresID_VEICULO.AsInteger]) then
  begin
    if (Column.Field=cdsAgendaTratoresNOME_VEICULO) then
    begin
      dbGrid.Canvas.Font.Color := StrToInt(cdsVeiculosCOR.AsString);
      dbGrid.DefaultDrawDataCell(Rect,dbGrid.Columns[DataCol].Field,State);
    end;
  end;

  with sender as TDBGrid do
  begin
    if (Column.Field=cdsAgendaTratoreschk) then
    begin
      Canvas.FillRect(Rect);
      img.Draw(Canvas,Rect.Left+4,Rect.Top+1,0);
      if (cdsAgendaTratoreschk.AsInteger=1) then
        img.Draw(Canvas,Rect.Left+4,Rect.Top+1,1)
    end;
  end;
end;

procedure TfmAgendaTratores.dbGridTitleClick(Column: TColumn);
begin
  if (Column.Field = cdsAgendaTratoresDATAAGENDAINI) then
    cdsAgendaTratores.IndexFieldNames := 'DATAAGENDAINI';
  if (Column.Field = cdsAgendaTratoresNOME_VEICULO) then
    cdsAgendaTratores.IndexFieldNames := 'NOME_VEICULO';
end;

procedure TfmAgendaTratores.deAmanh1Click(Sender: TObject);
begin
  PreencherData(8);
end;

procedure TfmAgendaTratores.demsatual1Click(Sender: TObject);
begin
  PreencherData(3);
end;

procedure TfmAgendaTratores.deontem1Click(Sender: TObject);
begin
  PreencherData(2);
end;

procedure TfmAgendaTratores.domspassado1Click(Sender: TObject);
begin
  PreencherData(4);
end;

procedure TfmAgendaTratores.Hoje1Click(Sender: TObject);
begin
  PreencherData(1);
end;

procedure TfmAgendaTratores.ontem1Click(Sender: TObject);
begin
  PreencherData(6);
end;

procedure TfmAgendaTratores.PreencherData(AOpc: Integer);
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

function TfmAgendaTratores.filtroAgenda : string;
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
    Result := LowerCase(qu + ' AND (FLAG_CANCELAR = 0) AND (ID_DOCENTE IS NOT NULL) ')
  else
    result := LowerCase('(FLAG_CANCELAR = 0) AND (ID_DOCENTE IS NOT NULL) ');
end;

procedure TfmAgendaTratores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsVeiculos.Close;
end;

procedure TfmAgendaTratores.FormShow(Sender: TObject);
begin
  PreencherData(3);
  cdsVeiculos.Active := True;
end;

procedure TfmAgendaTratores.tudo1Click(Sender: TObject);
begin
  PreencherData(7);
end;

procedure TfmAgendaTratores.AjustarValorCombustivel1Click(Sender: TObject);
var
  vlrCombustivel : Extended;
begin
  if (not cdsAgendaTratores.Active) or (cdsAgendaTratores.IsEmpty) then
    Exit;
  try
    iniciarTransacao;
    try
      vlrCombustivel := CallAjustarValorCombustivel(cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat);
      if vlrCombustivel = 0 then
        raise Exception.Create('Valor inválido, será mantido o valor atual de combustível.')
      else
      begin
        cdsAgendaTratores.Edit;
        cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat := vlrCombustivel;
        cdsAgendaTratoresCUSTOTOTALGERAL.AsFloat       := cdsAgendaTratoresCUSTOTOTALCOMBUSTIVEL.AsFloat +
                                                          cdsAgendaTratoresCUSTOTOTALHORA.AsFloat;
        cdsAgendaTratoresFLAG_CUSTOALTERADO.AsInteger  := 1;
        cdsAgendaTratores.Post;
        cdsAgendaTratores.ApplyUpdates(0);
        cdsAgendaTratores.Refresh;
      end;
    except on E:Exception do
      begin
//        rollback;
        Warning(E.Message);
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmAgendaTratores.athoje1Click(Sender: TObject);
begin
  PreencherData(5);
end;

procedure TfmAgendaTratores.btnPesquisarCadastroClick(Sender: TObject);
begin
  chave := CallPesquisarCadGeral(True,True,False, True);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmAgendaTratores.btnPesquisarClick(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      cdsVeiculos.Active                := False;
      cdsAgendaTratores.Active          := False;
        cdsAgendaTratores.Filtered      := False;
        cdsAgendaTratores.Filter        := '('+filtroAgenda+')';
        cdsAgendaTratores.Filtered      := True;
      cdsAgendaTratores.Active          := True;
      cdsVeiculos.Active                := True;
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

procedure TfmAgendaTratores.btnReservaClick(Sender: TObject);
begin
  Close;
end;

procedure TfmAgendaTratores.btnSairClick(Sender: TObject);
begin
  (*
  if VarificarViagensMarcadas then
  begin
    Warning('Existem viagens selecionadas'+#13+'desmarque antes de efetuar a reserva. ');
    Exit;
  end;
  *)
  if CallReservaAgendaTrator then
  begin
    DesktopAlert('Registro efetuado com sucesso.', daInformacao);
    PreencherData(3);
    cdsAgendaTratores.Active    := False;
    cdsAgendaTratores.Filtered  := False;
      cdsAgendaTratores.Filter        := '('+filtroAgenda+')';
    cdsAgendaTratores.Filtered  := True;
    cdsAgendaTratores.Active    := True;
  end;
end;

procedure TfmAgendaTratores.CancelarViagemClick(Sender: TObject);
var
  msg: string;
begin
  if (not cdsAgendaTratores.Active) or (cdsAgendaTratores.IsEmpty) then
    Exit;

  msg := 'Deseja cancelar a viagem do motorista: '+ cdsAgendaTratoresNOME_TRATORISTA.AsString+#13+
         'no período de: '+FormatDateTime('dd/mm/yyyy', cdsAgendaTratoresDATAAGENDAINI.AsDateTime)+' até: '+FormatDateTime('dd/mm/yyyy', cdsAgendaTratoresDATAAGENDAFIM.AsDateTime); //+#13+
//         'obs: '+cdsAgendaOBS.AsString;
  if Question(msg) then
  begin
    cdsAgendaTratores.Edit;
      cdsAgendaTratoresFLAG_CANCELAR.AsInteger := 1;
    cdsAgendaTratores.Post;
    cdsAgendaTratores.ApplyUpdates(0);
    cdsAgendaTratores.Refresh;
  end;
end;

procedure TfmAgendaTratores.cdsAgendaTratoresCalcFields(DataSet: TDataSet);
begin
  cdsAgendaTratorescalcNomeDocente.AsString := GetValorString('cad_geral','nome', 'ai', IntToStr(cdsAgendaTratoresID_DOCENTE.AsInteger));
end;

procedure TfmAgendaTratores.ConsultarReserva1Click(Sender: TObject);
begin
  if (not cdsAgendaTratores.Active) or (cdsAgendaTratores.IsEmpty) then
    Exit;

  CallReservaAgendaTrator(cdsAgendaTratoresAI.AsInteger);
  cdsAgendaTratores.Active  := False;
  cdsAgendaTratores.Active  := True;
end;

end.
