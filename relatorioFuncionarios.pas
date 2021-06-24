unit relatorioFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons, frxClass,
  frxDBSet, Grids, DBGrids, frxExportXLS, frxExportPDF, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxGroupBox,
  cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

const SQLCadGeral   = 'SELECT * FROM CAD_GERAL ';

type
  TfmRelatorioFuncionarios = class(TForm)
    quCadastros: TSQLQuery;
    pvCadastros: TDataSetProvider;
    cdsCadastros: TClientDataSet;
    dsCadastros: TDataSource;
    frFuncionarios: TfrxReport;
    frCadastros: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    frxExcel: TfrxXLSExport;
    Label1: TLabel;
    editId_Cadastro: TEdit;
    editNomeCadastro: TEdit;
    rgFiltrar: TcxRadioGroup;
    btnPesquisar: TSpeedButton;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    cbStatus: TcxComboBox;
    Label4: TLabel;
    quCadastrosAI: TIntegerField;
    quCadastrosID_CADGERAL: TStringField;
    quCadastrosNOME: TStringField;
    quCadastrosRG: TStringField;
    quCadastrosCPF: TStringField;
    quCadastrosID_USP: TStringField;
    quCadastrosOBS: TStringField;
    quCadastrosID_FUNCAO: TIntegerField;
    quCadastrosID_CLASSE: TIntegerField;
    quCadastrosFLAGDOCENTE: TIntegerField;
    quCadastrosFLAGFUNCIONARIO: TIntegerField;
    quCadastrosFLAGALUNO: TIntegerField;
    quCadastrosFLAGOUTROS: TIntegerField;
    quCadastrosSTATUS: TIntegerField;
    quCadastrosUSUARIO: TStringField;
    quCadastrosDATAINC: TDateField;
    quCadastrosHORAINC: TTimeField;
    cdsCadastrosAI: TIntegerField;
    cdsCadastrosID_CADGERAL: TStringField;
    cdsCadastrosNOME: TStringField;
    cdsCadastrosRG: TStringField;
    cdsCadastrosCPF: TStringField;
    cdsCadastrosID_USP: TStringField;
    cdsCadastrosOBS: TStringField;
    cdsCadastrosID_FUNCAO: TIntegerField;
    cdsCadastrosID_CLASSE: TIntegerField;
    cdsCadastrosFLAGDOCENTE: TIntegerField;
    cdsCadastrosFLAGFUNCIONARIO: TIntegerField;
    cdsCadastrosFLAGALUNO: TIntegerField;
    cdsCadastrosFLAGOUTROS: TIntegerField;
    cdsCadastrosSTATUS: TIntegerField;
    cdsCadastrosUSUARIO: TStringField;
    cdsCadastrosDATAINC: TDateField;
    cdsCadastrosHORAINC: TTimeField;
    quEmail: TSQLQuery;
    quEmailAI: TIntegerField;
    quEmailID_CADGERAL: TIntegerField;
    quEmailEMAIL: TStringField;
    quEmailDATAINC: TDateField;
    quEmailHORAINC: TTimeField;
    quEmailUSUARIO: TStringField;
    pvEmails: TDataSetProvider;
    cdsEmails: TClientDataSet;
    dsEmails: TDataSource;
    quTelefones: TSQLQuery;
    quTelefonesAI: TIntegerField;
    quTelefonesID_CADGERAL: TIntegerField;
    quTelefonesTELEFONE: TStringField;
    quTelefonesRAMAL: TStringField;
    quTelefonesTIPO: TStringField;
    quTelefonesOBS: TStringField;
    quTelefonesDATAINC: TDateField;
    quTelefonesUSUARIO: TStringField;
    quTelefonesHORAINC: TTimeField;
    pvTelefones: TDataSetProvider;
    cdsTelefones: TClientDataSet;
    dsTelefones: TDataSource;
    frEmails: TfrxDBDataset;
    frTelefones: TfrxDBDataset;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCadastrosAfterScroll(DataSet: TDataSet);
  private
    chave : Integer;
    function MontarSQL: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioFuncionarios: TfmRelatorioFuncionarios;
  procedure CallRelatorioFuncionarios;
implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  pesquisarCadGeral,
  utlFuncoes,
  bslXprocs,
  bslMSG;

procedure CallRelatorioFuncionarios;
begin
  try
    try
      fmRelatorioFuncionarios := TfmRelatorioFuncionarios.Create(nil);
      fmRelatorioFuncionarios.ShowModal;
    except on E:Exception do
      Warning('Erro ao abrir relatório. '+E.Message);
    end;
  finally
    FreeAndNil(fmRelatorioFuncionarios);
  end;
end;

procedure TfmRelatorioFuncionarios.btnPesquisarClick(Sender: TObject);
begin
  chave := CallPesquisarCadGeral(True,True);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmRelatorioFuncionarios.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmRelatorioFuncionarios.cdsCadastrosAfterScroll(DataSet: TDataSet);
begin
  if cdsEmails.Active then
    cdsEmails.Refresh;

  if cdsTelefones.Active then
    cdsTelefones.Refresh;
end;

procedure TfmRelatorioFuncionarios.FormShow(Sender: TObject);
begin
  Width := 540;
end;

function TfmRelatorioFuncionarios.MontarSQL : String;
var
  qu : string;
begin
  try
    if (Trim(editId_Cadastro.Text) > '') then
      qu := 'WHERE (AI = '+IntToStr(chave)+') ';

    if Trim(qu) > '' then
    begin
      case rgFiltrar.ItemIndex of
        0: qu := qu + 'AND (FLAGDOCENTE = 1)';
        1: qu := qu + 'AND (FLAGFUNCIONARIO = 1)';
        2: qu := qu + 'AND (FLAGDOCENTE = 1 OR FLAGFUNCIONARIO = 1)';
      end;
    end
    else
    begin
      case rgFiltrar.ItemIndex of
        0: qu := 'WHERE (FLAGDOCENTE = 1)';
        1: qu := 'WHERE (FLAGFUNCIONARIO = 1)';
        2: qu := 'WHERE (FLAGDOCENTE = 1 OR FLAGFUNCIONARIO = 1)';
      end;
    end;

    if Trim(qu) > '' then
    begin
      case cbStatus.ItemIndex of
        0: qu := qu + 'AND (STATUS = 1)';
        1: qu := qu + 'AND (STATUS = 0)';
        2: qu := qu + 'AND (STATUS = 1 OR STATUS = 0)';
      end;
    end
    else
    begin
      case cbStatus.ItemIndex of
        0: qu := 'WHERE (STATUS = 1)';
        1: qu := 'WHERE (STATUS = 0)';
        2: qu := 'WHERE (STATUS = 1 OR STATUS = 0)';
      end;
    end;
  finally
    if Trim(qu) > '' then
      Result := LowerCase(SQLCadGeral + qu + ' ORDER BY NOME ')
    else
      Result := LowerCase(SQLCadGeral + ' ORDER BY NOME ');
  end;
end;

procedure TfmRelatorioFuncionarios.btnImprimirClick(Sender: TObject);
begin
  try
    cdsCadastros.Active     := False;
    cdsEmails.Active        := False;
    cdsTelefones.Active     := False;
    quCadastros.SQL.Clear;
    quCadastros.SQL.Add(MontarSQL);
    cdsCadastros.Active     := True;
    cdsEmails.Active        := True;
    cdsTelefones.Active     := True;

    if cdsCadastros.IsEmpty then
    begin
      DesktopAlert('Nada há imprimir', daInformacao);
      exit;
    end;

    case rgFiltrar.ItemIndex of
      0: frFuncionarios.Variables['title'] := 'Docentes';
      1: frFuncionarios.Variables['title'] := 'Funcionarios';
      2: frFuncionarios.Variables['title'] := 'Docentes / Funcionários'
    end;

    frFuncionarios.ShowReport(True);
  finally
    cdsCadastros.Active := False;
  end;
end;

end.
