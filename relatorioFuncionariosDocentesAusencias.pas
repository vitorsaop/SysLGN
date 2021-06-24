unit relatorioFuncionariosDocentesAusencias;

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
  dxSkinXmas2008Blue, StdCtrls, DBCtrls, cxGroupBox, cxRadioGroup, Buttons,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, FMTBcd, DB, SqlExpr,
  Provider, DBClient, frxClass, frxDBSet, frxExportPDF, Grids, DBGrids;

const SQLAusencias = 'SELECT '+
  	                 'C.AI, C.ID_CADGERAL, C.NOME, C.RG, C.CPF, ID_USP, '+
	                   'FA.ID_CADGERAL AS ID, FA.TIPO, FA.DATAINI, FA.DATAFIM, FA.OBS '+
                     'FROM '+
                     'CAD_GERAL C '+
                     'INNER JOIN '+
	                   'FUNCIONARIOS_AUSENCIAS  FA '+
                     'ON '+
	                   '(FA.ID_CADGERAL = C.AI) ';

type
  TfmRelatorioFuncionariosDocentesAusencias = class(TForm)
    Label1: TLabel;
    editId_Cadastro: TEdit;
    btnPesquisar: TSpeedButton;
    editNomeCadastro: TEdit;
    Label2: TLabel;
    cbStatus: TcxComboBox;
    gbPeriodoAusencia: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dtAusenciaIni: TcxDateEdit;
    dtAusenciaFim: TcxDateEdit;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    rgFiltrar: TcxRadioGroup;
    quAusencias: TSQLQuery;
    pvAusencias: TDataSetProvider;
    cdsAusencias: TClientDataSet;
    dsAusencias: TDataSource;
    cbAusencias: TComboBox;
    quAusenciasAI: TIntegerField;
    quAusenciasID_CADGERAL: TStringField;
    quAusenciasNOME: TStringField;
    quAusenciasRG: TStringField;
    quAusenciasCPF: TStringField;
    quAusenciasID: TIntegerField;
    quAusenciasTIPO: TStringField;
    quAusenciasDATAINI: TDateField;
    quAusenciasDATAFIM: TDateField;
    quAusenciasOBS: TStringField;
    cdsAusenciasAI: TIntegerField;
    cdsAusenciasID_CADGERAL: TStringField;
    cdsAusenciasNOME: TStringField;
    cdsAusenciasRG: TStringField;
    cdsAusenciasCPF: TStringField;
    cdsAusenciasID: TIntegerField;
    cdsAusenciasTIPO: TStringField;
    cdsAusenciasDATAINI: TDateField;
    cdsAusenciasDATAFIM: TDateField;
    cdsAusenciasOBS: TStringField;
    quAusenciasID_USP: TStringField;
    cdsAusenciasID_USP: TStringField;
    frAusencias: TfrxDBDataset;
    fr: TfrxReport;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cdsCadGeralAfterScroll(DataSet: TDataSet);
  private
    chave : Integer;
    function MontarSQLAusencias: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioFuncionariosDocentesAusencias: TfmRelatorioFuncionariosDocentesAusencias;
  procedure CallrelatorioFuncionariosDocentesAusencias;

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


procedure CallrelatorioFuncionariosDocentesAusencias;
begin
  try
    fmRelatorioFuncionariosDocentesAusencias := TfmRelatorioFuncionariosDocentesAusencias.Create(nil);
    fmRelatorioFuncionariosDocentesAusencias.ShowModal;
  finally
    FreeAndNil(fmRelatorioFuncionariosDocentesAusencias);
  end;
end;

procedure TfmRelatorioFuncionariosDocentesAusencias.btnImprimirClick(
  Sender: TObject);
var
  msg : string;
begin
  try
    cdsAusencias.Active  := False;
    quAusencias.SQL.Clear;
    quAusencias.SQL.Add(LowerCase(MontarSQLAusencias));

    msg        := '';
//    if (Trim(cbAusencias.Text) > '') then
//      msg := 'filtro de ausências: ' + cbAusencias.Text;

    case rgFiltrar.ItemIndex of
      0: msg := msg+'Filtro por Docentes.';
      1: msg := msg+'Filtro por Funcionários.';
      2: msg := msg+'Filtro por Docentes / Funcionários.';
    end;

    fr.Variables.Variables['periodoAusencia'] := QuotedStr('Ausência de: '+dtAusenciaIni.Text+' até: '+dtAusenciaFim.Text);
    fr.Variables.Variables['titulo']          := QuotedStr(LowerCase(msg));

    cdsAusencias.Active  := True;
    if (cdsAusencias.IsEmpty) then
    begin
      DesktopAlert('Nada há imprimir', daInformacao);
      exit;
    end;

    fr.ShowReport(True);

  finally
//    cdsAusencias.Active  := False;
  end;

end;

procedure TfmRelatorioFuncionariosDocentesAusencias.btnPesquisarClick(
  Sender: TObject);
begin
  chave := CallPesquisarCadGeral(True,True);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmRelatorioFuncionariosDocentesAusencias.btnSairClick(
  Sender: TObject);
begin
  Close;
end;

procedure TfmRelatorioFuncionariosDocentesAusencias.cdsCadGeralAfterScroll(
  DataSet: TDataSet);
begin
  if cdsAusencias.Active then
    cdsAusencias.Refresh;
end;

function TfmRelatorioFuncionariosDocentesAusencias.MontarSQLAusencias : String;
var
  qu : string;
begin
  qu := '';

  if (cbAusencias.ItemIndex) >= 0 then
    qu := '(FA.TIPO = '+QuotedStr(cbAusencias.Text)+')'
  else
    qu := '';

  if Trim(editId_Cadastro.Text) > '' then
  begin
    if qu > '' then
      qu := qu + ' AND (C.AI = '+IntToStr(chave)+')'
    else
      qu := '(C.AI = '+IntToStr(chave)+')';
  end;

  if Trim(qu) > '' then
  begin
    case rgFiltrar.ItemIndex of
      0: qu := qu + 'AND (C.FLAGDOCENTE = 1)';
      1: qu := qu + 'AND (C.FLAGFUNCIONARIO = 1)';
      2: qu := qu + 'AND (C.FLAGDOCENTE = 1 OR C.FLAGFUNCIONARIO = 1)';
    end;
  end
  else
  begin
    case rgFiltrar.ItemIndex of
      0: qu := ' (C.FLAGDOCENTE = 1)';
      1: qu := ' (C.FLAGFUNCIONARIO = 1)';
      2: qu := ' (C.FLAGDOCENTE = 1 OR C.FLAGFUNCIONARIO = 1)';
    end;
  end;

  if Trim(qu) > '' then
  begin
    case cbStatus.ItemIndex of
      0: qu := qu + 'AND (C.STATUS = 1)';
      1: qu := qu + 'AND (C.STATUS = 0)';
      2: qu := qu + 'AND (C.STATUS = 1 OR C.STATUS = 0)';
    end;
  end
  else
  begin
    case cbStatus.ItemIndex of
      0: qu := ' (C.STATUS = 1)';
      1: qu := ' (C.STATUS = 0)';
      2: qu := ' (C.STATUS = 1 OR C.STATUS = 0)';
    end;
  end;

  if Trim(qu) > '' then
  begin
    if ( (dtAusenciaIni.Date) > 0 ) and ( (dtAusenciaFim.Date) > 0 ) then
      qu := qu + ' AND (FA.DATAINI >= '+(AjustarData(dtAusenciaIni.Date))+' AND FA.DATAFIM <= '+(AjustarData(dtAusenciaFim.Date))+')'
    else
    if ( (dtAusenciaIni.Date) > 0) then
      qu := qu + ' AND (FA.DATAINI >= '+(AjustarData(dtAusenciaIni.Date))+')'
    else
    if ( (dtAusenciaFim.Date) > 0 ) then
      qu := qu + ' AND (FA.DATAFIM <= '+(AjustarData(dtAusenciaFim.Date))+')';
  end
  else
  begin
    if ( (dtAusenciaIni.Date) > 0 ) and ( (dtAusenciaFim.Date) > 0 ) then
      qu := ' (FA.DATAINI >= '+(AjustarData(dtAusenciaIni.Date))+' AND FA.DATAFIM <= '+(AjustarData(dtAusenciaFim.Date))+') '
    else
    if ( (dtAusenciaIni.Date) > 0) then
      qu := '(FA.DATAINI >= '+(AjustarData(dtAusenciaIni.Date))+')'
    else
    if ( (dtAusenciaFim.Date) > 0 ) then
      qu := '(FA.DATAFIM <= '+(AjustarData(dtAusenciaFim.Date))+')';
  end;

  if Trim(qu) > '' then
    Result := LowerCase(SQLAusencias+' WHERE '+qu+' ORDER BY C.NOME, FA.DATAINI ')
  else
    Result := LowerCase(SQLAusencias+' ORDER BY C.NOME, FA.DATAINI ');
end;

end.
