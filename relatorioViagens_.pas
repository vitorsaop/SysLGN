unit relatorioViagens;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, StdCtrls, Buttons, FMTBcd, DBClient, Provider, DB, SqlExpr,
  frxClass, frxDBSet, frxExportPDF;

const SQLAgenda       = 'SELECT '+
                        'DISTINCT ID_DOCENTE, C.NOME '+
                        'FROM '+
                        'AGENDA A '+
                        'INNER JOIN '+
                        'CAD_GERAL C '+
                        'ON (A.ID_DOCENTE = C.AI) ';

const SQLAgendaDetail = 'SELECT '+
                        'ID_VEICULO, NOME_VEICULO, SUM(KMSALDO) AS KM_USADO, DATAAGENDAINI, '+
                        'DATAAGENDAFIM, SUM(CUSTOTOTALKM) AS CUSTO_TOTAL, ID_DOCENTE, KMSAIDA, KMRETORNO, '+
                        'SUM(CUSTOTOTALCOMBUSTIVEL) AS CUSTO_TOTAL_COMBUSTIVEL, SUM(CUSTOTOTALGERAL) AS CUSTO_TOTAL_GERAL '+
                        'FROM '+
                        'AGENDA ';


const SQLAgendaTotal  = 'SELECT '+
                        'SUM(CUSTOTOTALGERAL) + '+
                        '(SELECT '+
                        '  SUM(CUSTOTOTALGERAL) '+
                        'FROM '+
                        '  COMBUSTIVEL_AVULSO '+
                        'WHERE '+
                        '  ID_CADGERAL = ID_DOCENTE '+
                        'GROUP BY '+
                        '  ID_CADGERAL '+
                        'ORDER BY '+
                        '  ID_CADGERAL) '+
                        'AS CUSTO_TOTAL, '+
                        'SUM(CUSTOTOTALKM), '+
                        'SUM(CUSTOTOTALCOMBUSTIVEL), '+
                        'ID_DOCENTE '+
                        'FROM AGENDA ';

type
  TfmRelatorioViagens = class(TForm)
    Label1: TLabel;
    editId_Cadastro: TEdit;
    btnPesquisar: TSpeedButton;
    editNomeCadastro: TEdit;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    gbPeriodoUso: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtViagemIni: TcxDateEdit;
    dtViagemFim: TcxDateEdit;
    quAgenda: TSQLQuery;
    pvAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    dsAgenda: TDataSource;
    quCadGeral: TSQLQuery;
    pvCadGeral: TDataSetProvider;
    cdsCadGeral: TClientDataSet;
    dsCadGeral: TDataSource;
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
    cdsCadGeralAI: TIntegerField;
    cdsCadGeralID_CADGERAL: TStringField;
    cdsCadGeralNOME: TStringField;
    cdsCadGeralRG: TStringField;
    cdsCadGeralCPF: TStringField;
    cdsCadGeralID_USP: TStringField;
    cdsCadGeralOBS: TStringField;
    cdsCadGeralID_FUNCAO: TIntegerField;
    cdsCadGeralID_CLASSE: TIntegerField;
    cdsCadGeralFLAGDOCENTE: TIntegerField;
    cdsCadGeralFLAGFUNCIONARIO: TIntegerField;
    cdsCadGeralFLAGALUNO: TIntegerField;
    cdsCadGeralFLAGOUTROS: TIntegerField;
    cdsCadGeralSTATUS: TIntegerField;
    cdsCadGeralUSUARIO: TStringField;
    cdsCadGeralDATAINC: TDateField;
    cdsCadGeralHORAINC: TTimeField;
    frAgenda: TfrxDBDataset;
    frRelatorioAgendaAnalitico: TfrxReport;
    quAgendaDetail: TSQLQuery;
    pvAgendaDetail: TDataSetProvider;
    cdsAgendaDetail: TClientDataSet;
    dsAgendaDetail: TDataSource;
    frAgendaDetail: TfrxDBDataset;
    quAgendaID_DOCENTE: TIntegerField;
    cdsAgendaID_DOCENTE: TIntegerField;
    quAgendaDetailID_VEICULO: TIntegerField;
    quAgendaDetailNOME_VEICULO: TStringField;
    quAgendaDetailDATAAGENDAINI: TDateField;
    quAgendaDetailDATAAGENDAFIM: TDateField;
    quAgendaDetailKM_USADO: TFloatField;
    quAgendaDetailCUSTO_TOTAL: TFMTBCDField;
    quAgendaDetailID_DOCENTE: TIntegerField;
    cdsAgendaDetailID_VEICULO: TIntegerField;
    cdsAgendaDetailNOME_VEICULO: TStringField;
    cdsAgendaDetailDATAAGENDAINI: TDateField;
    cdsAgendaDetailDATAAGENDAFIM: TDateField;
    cdsAgendaDetailKM_USADO: TFloatField;
    cdsAgendaDetailCUSTO_TOTAL: TFMTBCDField;
    cdsAgendaDetailID_DOCENTE: TIntegerField;
    quAgendaTotal: TSQLQuery;
    quAgendaTotalCUSTO_TOTAL: TFMTBCDField;
    quAgendaTotalID_DOCENTE: TIntegerField;
    pvAgendaTotal: TDataSetProvider;
    cdsAgendaTotal: TClientDataSet;
    cdsAgendaTotalCUSTO_TOTAL: TFMTBCDField;
    cdsAgendaTotalID_DOCENTE: TIntegerField;
    dsAgendaTotal: TDataSource;
    frAgendaTotal: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    quAgendaDetailKMSAIDA: TFloatField;
    quAgendaDetailKMRETORNO: TFloatField;
    cdsAgendaDetailKMSAIDA: TFloatField;
    cdsAgendaDetailKMRETORNO: TFloatField;
    quAgendaNOME: TStringField;
    cdsAgendaNOME: TStringField;
    frRelatorioAgendaSintetico: TfrxReport;
    quAgendaDetailCUSTO_TOTAL_COMBUSTIVEL: TFMTBCDField;
    quAgendaDetailCUSTO_TOTAL_GERAL: TFMTBCDField;
    cdsAgendaDetailCUSTO_TOTAL_COMBUSTIVEL: TFMTBCDField;
    cdsAgendaDetailCUSTO_TOTAL_GERAL: TFMTBCDField;
    quAgendaTotalSUMCUSTOTOTALKM: TFMTBCDField;
    quAgendaTotalSUMCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    cdsAgendaTotalSUMCUSTOTOTALKM: TFMTBCDField;
    cdsAgendaTotalSUMCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cdsAgendaAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    chave : Integer;
    function MontarSQL: String;
    function MontarSQLDetail: String;
    function MontarSQLTotal: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioViagens: TfmRelatorioViagens;
  procedure CallRelatorioViagens;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  pesquisarCadGeral,
  utlFuncoes,
  utlConstantes,
  bslXprocs,
  bslMSG;

procedure CallRelatorioViagens;
begin
  try
    fmRelatorioViagens := TfmRelatorioViagens.Create(nil);
    fmRelatorioViagens.ShowModal;
  finally
    FreeAndNil(fmRelatorioViagens);
  end;
end;

procedure TfmRelatorioViagens.btnImprimirClick(Sender: TObject);
var
  msg : string;
begin
  try
    cdsAgendaDetail.Active  := False;
    cdsAgendaTotal.Active   := False;
    cdsAgenda.Active        := False;

    quAgenda.SQL.Clear;
    quAgenda.SQL.Add(SQLAgenda+MontarSQL);

    quAgendaDetail.SQL.Clear;
    quAgendaDetail.SQL.Add(SQLAgendaDetail+MontarSQLDetail);

    quAgendaTotal.SQL.Clear;
    quAgendaTotal.SQL.Add(SQLAgendaTotal+MontarSQLTotal);


    ShowMessage(quAgendaTotal.SQL.Text);

(*    cdsAgenda.Active        := True;
    cdsAgendaDetail.Active  := True;
    cdsAgendaTotal.Active   := True;

    if (cdsAgenda.IsEmpty) and (cdsAgendaDetail.IsEmpty) then
    begin
      DesktopAlert('Nada há imprimir', daInformacao);
      exit;
    end;

    if ((dtViagemIni.Text) > '') and ((dtViagemFim.Text) > '') then
      msg := 'Período de apuração de: '+dtViagemIni.Text+' até '+dtViagemFim.Text
    else
    if (dtViagemIni.Text = '') and (dtViagemFim.Text > '') then
      msg := 'Período de apuração até '+dtViagemFim.Text
    else
    if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
      msg := 'Período de apuração a partir de: '+dtViagemFim.Text;

    if Question('Deseja imprimir o relatório detalhado?') then
    begin
      frRelatorioAgendaAnalitico.Variables.Variables['titulo'] := QuotedStr(LowerCase(msg));
      frRelatorioAgendaAnalitico.ShowReport(True);
    end
    else
    begin
      frRelatorioAgendaSintetico.Variables.Variables['titulo'] := QuotedStr(LowerCase(msg));
      frRelatorioAgendaSintetico.ShowReport(True);
    end;
*)
  finally
    cdsAgendaDetail.Active  := False;
    cdsAgendaTotal.Active   := False;
    cdsAgenda.Active  := False;
  end;
end;

procedure TfmRelatorioViagens.btnPesquisarClick(Sender: TObject);
begin
  chave := CallPesquisarCadGeral(True,True,False, True);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmRelatorioViagens.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmRelatorioViagens.cdsAgendaAfterScroll(DataSet: TDataSet);
begin
  if cdsAgendaDetail.Active then
    cdsAgendaDetail.Refresh;

  if cdsAgendaTotal.Active then
    cdsAgendaTotal.Refresh;
end;

procedure TfmRelatorioViagens.FormShow(Sender: TObject);
begin
  Height := 135;
end;

function TfmRelatorioViagens.MontarSQL : String;
var
  qu : String;
begin
  if Trim(editId_Cadastro.Text) > '' then
  begin
    if qu > '' then
      qu := qu + ' AND (A.ID_DOCENTE = '+IntToStr(chave)+')'
    else
      qu := '(A.ID_DOCENTE = '+IntToStr(chave)+')';
  end;

  if qu > '' then
    Result := ' WHERE '+qu+' ORDER BY C.NOME '
  else
    Result := ' ORDER BY C.NOME';

end;


function TfmRelatorioViagens.MontarSQLDetail : String;
var
  qu : String;
begin
  qu := '';

  if (dtViagemIni.Text > '') and (dtViagemFim.Text > '') then
  begin
    if qu > '' then
      qu := qu + ' AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + '(DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
  end
  else
  if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
    else
      qu := qu + '(DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
  end
  else
  if (dtViagemFim.Text > '') and (dtViagemIni.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + ' (DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
  end;

  if Trim(qu) > '' then
    Result := ' WHERE '+qu+ ' GROUP BY ID_DOCENTE, KMSAIDA, KMRETORNO ORDER BY DATAAGENDAINI, DATAAGENDAFIM '
  else
    Result := ' GROUP BY ID_DOCENTE, KMSAIDA, KMRETORNO ORDER BY DATAAGENDAINI, DATAAGENDAFIM ';
end;

function TfmRelatorioViagens.MontarSQLTotal : String;
var
  qu : String;
begin
  qu := '';

  if (dtViagemIni.Text > '') and (dtViagemFim.Text > '') then
  begin
    if qu > '' then
      qu := qu + ' AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + '(DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
  end
  else
  if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
    else
      qu := qu + '(DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
  end
  else
  if (dtViagemFim.Text > '') and (dtViagemIni.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + ' (DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
  end;

  if Trim(qu) > '' then
    Result := ' WHERE '+qu+' GROUP BY ID_DOCENTE ORDER BY ID_DOCENTE '
  else
    Result := ' GROUP BY ID_DOCENTE ORDER BY ID_DOCENTE ';
end;

end.
