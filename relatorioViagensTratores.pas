unit relatorioViagensTratores;

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
  dxSkinXmas2008Blue, frxClass, frxExportPDF, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, StdCtrls, Buttons, FMTBcd, DB, SqlExpr,
  DBClient, Provider, frxDBSet, Grids, DBGrids;



const SQLAgenda  = 'SELECT '+
                   'a.ID_DOCENTE, c.NOME, a.NOME_VEICULO, ci.IMPLEMENTO, a.ID_VEICULO, v.LOCAL, '+
                   'a.DATAAGENDAINI, a.DATAAGENDAFIM,	a.HORATOTAL, a.CUSTOHORA as Valor_Hora_Trator, '+
                   '(a.CUSTOTOTALHORA - a.CUSTOHORA) as Valor_Hora_Implemento, a.CUSTOTOTALHORA as Valor_Total '+
                   'FROM '                      +
                   '   agenda_tratores a '      +
                   'INNER JOIN '                +
                   '   cad_geral c '            +
                   'on '                        +
                   '  (a.ID_DOCENTE = c.AI) '   +
                   'INNER JOIN '                +
                   '  cad_veiculos v '          +
                   'on '                        +
                   '  (a.ID_VEICULO = v.AI)'    +
                   'INNER JOIN '                +
                   '   veiculos_implementos vi '+
                   'on '                        +
                   '  (vi.ID_AGENDA = a.AI) '   +
                   'INNER JOIN '                +
                   '   cad_implementos ci '     +
                   'on '                        +
                   '  (vi.ID_IMPLEMENTO = ci.AI) ';

const SQLAgendaSimplificado  = 'SELECT '+
                               'a.ID_DOCENTE, c.NOME, a.NOME_VEICULO, ci.IMPLEMENTO, a.ID_VEICULO, v.LOCAL, '+
                               'a.DATAAGENDAINI, a.DATAAGENDAFIM,	a.HORATOTAL, Sum(a.CUSTOHORA) as Valor_Hora_Trator, '+
                               'Sum((a.CUSTOTOTALHORA - a.CUSTOHORA)) as Valor_Hora_Implemento, Sum(a.CUSTOTOTALHORA) as Valor_Total '+
                               'FROM '                      +
                               '   agenda_tratores a '      +
                               'INNER JOIN '                +
                               '   cad_geral c '            +
                               'on '                        +
                               '  (a.ID_DOCENTE = c.AI) '   +
                               'INNER JOIN '                +
                               '  cad_veiculos v '          +
                               'on '                        +
                               '  (a.ID_VEICULO = v.AI)'    +
                               'INNER JOIN '                +
                               '   veiculos_implementos vi '+
                               'on '                        +
                               '  (vi.ID_AGENDA = a.AI) '   +
                               'INNER JOIN '                +
                               '   cad_implementos ci '     +
                               'on '                        +
                               '  (vi.ID_IMPLEMENTO = ci.AI) ';



type
  TfmRelatorioViagensTratores = class(TForm)
    Label1: TLabel;
    btnPesquisar: TSpeedButton;
    editId_Cadastro: TEdit;
    editNomeCadastro: TEdit;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    gbPeriodoUso: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtViagemIni: TcxDateEdit;
    dtViagemFim: TcxDateEdit;
    frxPDFExport1: TfrxPDFExport;
    frRelatorioAgendaTratoresAnalitico: TfrxReport;
    frxAgendaTratores: TfrxDBDataset;
    quAgendaTratores: TSQLQuery;
    pvAgendaTratores: TDataSetProvider;
    cdsAgendaTratores: TClientDataSet;
    dsAgendaTratores: TDataSource;
    quAgendaTratoresID_DOCENTE: TIntegerField;
    quAgendaTratoresNOME: TStringField;
    quAgendaTratoresNOME_VEICULO: TStringField;
    quAgendaTratoresIMPLEMENTO: TStringField;
    quAgendaTratoresDATAAGENDAINI: TDateField;
    quAgendaTratoresDATAAGENDAFIM: TDateField;
    quAgendaTratoresHORATOTAL: TFloatField;
    quAgendaTratoresValor_Hora_Trator: TFMTBCDField;
    quAgendaTratoresValor_Hora_Implemento: TFMTBCDField;
    quAgendaTratoresValor_Total: TFMTBCDField;
    cdsAgendaTratoresID_DOCENTE: TIntegerField;
    cdsAgendaTratoresNOME: TStringField;
    cdsAgendaTratoresNOME_VEICULO: TStringField;
    cdsAgendaTratoresIMPLEMENTO: TStringField;
    cdsAgendaTratoresDATAAGENDAINI: TDateField;
    cdsAgendaTratoresDATAAGENDAFIM: TDateField;
    cdsAgendaTratoresHORATOTAL: TFloatField;
    cdsAgendaTratoresValor_Hora_Trator: TFMTBCDField;
    cdsAgendaTratoresValor_Hora_Implemento: TFMTBCDField;
    cdsAgendaTratoresValor_Total: TFMTBCDField;
    quAgendaTratoresLOCAL: TStringField;
    cdsAgendaTratoresLOCAL: TStringField;
    frRelatorioAgendaTratoresSintetico: TfrxReport;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    chave : Integer;
    function MontarSQL(ADetalhe : Boolean): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioViagensTratores: TfmRelatorioViagensTratores;
  procedure CallRelatorioViagensTratores;

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

procedure CallRelatorioViagensTratores;
begin
  try
    fmRelatorioViagensTratores := TfmRelatorioViagensTratores.Create(nil);
    fmRelatorioViagensTratores.ShowModal;
  finally
    FreeAndNil(fmRelatorioViagensTratores);
  end;
end;

procedure TfmRelatorioViagensTratores.btnImprimirClick(Sender: TObject);
var
  msg : string;
  detalhe : Boolean;
begin
  try
    detalhe := Question('Deseja imprimir relatório detalhado?');

    cdsAgendaTratores.Close;
    quAgendaTratores.SQL.Clear;
    if detalhe then
      quAgendaTratores.SQL.Add(SQLAgenda+MontarSQL(detalhe))
    else
      quAgendaTratores.SQL.Add(SQLAgendaSimplificado+MontarSQL(detalhe));

    cdsAgendaTratores.Open;

    if ((dtViagemIni.Text) > '') and ((dtViagemFim.Text) > '') then
      msg := 'Período de apuração de: '+dtViagemIni.Text+' até '+dtViagemFim.Text
    else
    if (dtViagemIni.Text = '') and (dtViagemFim.Text > '') then
      msg := 'Período de apuração até '+dtViagemFim.Text
    else
    if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
      msg := 'Período de apuração a partir de: '+dtViagemFim.Text;

    if (cdsAgendaTratores.IsEmpty) then
    begin
      DesktopAlert('Nada há imprimir', daInformacao);
      exit;
    end;

    frRelatorioAgendaTratoresAnalitico.Variables.Variables['titulo'] := QuotedStr(LowerCase(msg));
    frRelatorioAgendaTratoresSintetico.Variables.Variables['titulo'] := QuotedStr(LowerCase(msg));

    if detalhe then
      frRelatorioAgendaTratoresAnalitico.ShowReport(True)
    else
      frRelatorioAgendaTratoresSintetico.ShowReport(True);
  finally
    cdsAgendaTratores.Close;
  end;
end;

procedure TfmRelatorioViagensTratores.btnPesquisarClick(Sender: TObject);
begin
  chave := CallPesquisarCadGeral(True,True,False, True);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmRelatorioViagensTratores.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmRelatorioViagensTratores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsAgendaTratores.Close;
end;

procedure TfmRelatorioViagensTratores.FormShow(Sender: TObject);
begin
  Height := 145;
end;

function TfmRelatorioViagensTratores.MontarSQL(ADetalhe : Boolean) : String;
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

  if (dtViagemIni.Text > '') and (dtViagemFim.Text > '') then
  begin
    if qu > '' then
      qu := qu + ' AND (A.DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND A.DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + '(A.DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND A.DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
  end
  else
  if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (A.DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
    else
      qu := qu + '(A.DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
  end
  else
  if (dtViagemFim.Text > '') and (dtViagemIni.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (A.DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + ' (A.DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
  end;

  if ADetalhe then
  begin
    if qu > '' then
      Result := LowerCase(' WHERE (FLAG_CANCELAR <> 1) AND '+qu+' ORDER BY C.NOME ')
    else
      Result := LowerCase(' WHERE (FLAG_CANCELAR <> 1) ORDER BY C.NOME');
  end
  else
  begin
    if qu > '' then
      Result := LowerCase(' WHERE (FLAG_CANCELAR <> 1) AND '+qu+' GROUP BY (A.ID_DOCENTE) ORDER BY C.NOME ')
    else
      Result := LowerCase(' WHERE (FLAG_CANCELAR <> 1) GROUP BY (A.ID_DOCENTE) ORDER BY C.NOME');
  end;

end;

end.
