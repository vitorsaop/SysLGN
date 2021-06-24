unit relatorioDespesas;

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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGroupBox, FMTBcd, DB, SqlExpr, Provider, DBClient, frxClass,
  frxDBSet;

type
  TfmRelatorioDespesas = class(TForm)
    Label1: TLabel;
    btnPesquisar: TSpeedButton;
    editId_Cadastro: TEdit;
    editNomeCadastro: TEdit;
    gbPeriodoUso: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtViagemIni: TcxDateEdit;
    dtViagemFim: TcxDateEdit;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    quDespesas: TSQLQuery;
    pvDespesas: TDataSetProvider;
    cdsDespesas: TClientDataSet;
    dsDespesas: TDataSource;
    cdsDespesasID_DOCENTE: TIntegerField;
    cdsDespesasNOME_VEICULO: TStringField;
    cdsDespesasDATAAGENDAINI: TDateField;
    cdsDespesasDATAAGENDAFIM: TDateField;
    cdsDespesasKMSAIDA: TFloatField;
    cdsDespesasKMRETORNO: TFloatField;
    cdsDespesasKMSALDO: TFloatField;
    cdsDespesasCUSTOTOTALKM: TFMTBCDField;
    cdsDespesasCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    cdsDespesasCUSTOTOTALGERAL: TFMTBCDField;
    frDespesas: TfrxDBDataset;
    frDespesasAnalitico: TfrxReport;
    quDespesasID_DOCENTE: TIntegerField;
    quDespesasNOME: TStringField;
    quDespesasNOME_VEICULO: TStringField;
    quDespesasDATAAGENDAINI: TDateField;
    quDespesasDATAAGENDAFIM: TDateField;
    quDespesasKMSAIDA: TFloatField;
    quDespesasKMRETORNO: TFloatField;
    quDespesasKMSALDO: TFloatField;
    quDespesasCUSTOTOTALKM: TFMTBCDField;
    quDespesasCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    quDespesasCUSTOTOTALGERAL: TFMTBCDField;
    cdsDespesasNOME: TStringField;
    quDespesasTotal: TSQLQuery;
    quDespesasTotalSumCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    quDespesasTotalSumCustoTotalGeral: TFMTBCDField;
    pvDespesasTotal: TDataSetProvider;
    cdsDespesasTotal: TClientDataSet;
    cdsDespesasTotalSumCUSTOTOTALCOMBUSTIVEL: TFMTBCDField;
    cdsDespesasTotalSumCustoTotalGeral: TFMTBCDField;
    frDespesasTotal: TfrxDBDataset;
    qu: TSQLQuery;
    quid_docente: TIntegerField;
    qunome: TStringField;
    quTOTALCOMBUSTIVEL: TFMTBCDField;
    pv: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsid_docente: TIntegerField;
    cdsnome: TStringField;
    cdsTOTALCOMBUSTIVEL: TFMTBCDField;
    fr: TfrxDBDataset;
    frDespesasSintetico: TfrxReport;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    chave : Integer;
    function MontarSQL: string;
    function MontarSQLTotal: String;
    function SQL: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioDespesas: TfmRelatorioDespesas;
  procedure CallRelatorioDespesas;

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

procedure CallRelatorioDespesas;
begin
  try
    fmRelatorioDespesas := TfmRelatorioDespesas.Create(nil);
    fmRelatorioDespesas.ShowModal;  
  finally
    FreeAndNil(fmRelatorioDespesas);
  end;
end;

procedure TfmRelatorioDespesas.btnImprimirClick(Sender: TObject);
var
  msg : string;
begin
  try
    cdsDespesas.Active                        := False;
    cdsDespesasTotal.Active                   := False;
    cds.Active                                := False;

    quDespesas.SQL.Clear;
    quDespesas.SQL.Add(LowerCase(MontarSQL));

    quDespesasTotal.SQL.Clear;
    quDespesasTotal.SQL.Add(LowerCase(MontarSQLTotal));

    qu.SQL.Clear;
    qu.SQL.Add(LowerCase(SQL));


//    ShowMessage(quDespesasTotal.SQL.Text);

//    ShowMessage(quDespesas.SQL.Text);
//    ShowMessage(SQL);

    cdsDespesas.Active                        := True;
    cdsDespesasTotal.Active                   := True;
    cds.Active                                := True;

    if (cdsDespesas.IsEmpty) then
    begin
      DesktopAlert('Nada há imprimir.');
      Exit;
    end;


    if ((dtViagemIni.Text) > '') and ((dtViagemFim.Text) > '') then
      msg := 'Período de apuração de: '+dtViagemIni.Text+' até '+dtViagemFim.Text
    else
    if (dtViagemIni.Text = '') and (dtViagemFim.Text > '') then
      msg := 'Período de apuração até '+dtViagemFim.Text
    else
    if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
      msg := 'Período de apuração a partir de: '+dtViagemFim.Text;

    frDespesasAnalitico.Variables.Variables['titulo'] := QuotedStr(LowerCase(msg));
    frDespesasSintetico.Variables.Variables['titulo'] := QuotedStr(LowerCase(msg));

    if Question('Imprimir relatório detalhado ?') then
      frDespesasAnalitico.ShowReport(True)
    else
      frDespesasSintetico.ShowReport(True);

  finally
    cdsDespesas.Active       := False;
    cdsDespesasTotal.Active  := False;
  end;

end;

procedure TfmRelatorioDespesas.btnPesquisarClick(Sender: TObject);
begin
  chave := CallPesquisarCadGeral(True,True,False, True);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmRelatorioDespesas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmRelatorioDespesas.FormShow(Sender: TObject);
begin
  Width   := 550;
  Height  := 145;
end;

function TfmRelatorioDespesas.MontarSQL : string;
var
  qu : String;
  quComb : String;
  ordem : string;
begin
  qu     := '';
  ordem := 'ORDER BY 3,5,6';
  
  //filtro para cadastro especifico
  if Trim(editId_Cadastro.Text) > '' then
  begin
    if qu > '' then
      qu := qu + ' AND (ID_DOCENTE = '+IntToStr(chave)+')'
    else
      qu := '(ID_DOCENTE = '+IntToStr(chave)+')';
  end;

  if Trim(editId_Cadastro.Text) > '' then
  begin
    if quComb > '' then
      quComb := quComb + ' AND (ID_DOCENTE = '+IntToStr(chave)+')'
    else
      quComb := '(ID_DOCENTE = '+IntToStr(chave)+')';
  end;
  //filtro para cadastro especifico

  //filtro para periodo especifico...
  if (dtViagemIni.Text > '') and (dtViagemFim.Text > '') then
  begin
    if qu > '' then
      qu := qu + ' AND (FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + '(FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
  end
  else
  if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
    else
      qu := qu + '(FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
  end
  else
  if (dtViagemFim.Text > '') and (dtViagemIni.Text = '') then
  begin
    if qu > '' then
      qu := qu + ' AND (FLAG_CANCELAR <> 1) AND (DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
    else
      qu := qu + ' (FLAG_CANCELAR <> 1) AND (DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
  end;

  //----------- (filtro para combustivel avulso..)

  if (dtViagemIni.Text > '') and (dtViagemFim.Text > '') then
  begin
    if quComb > '' then
      quComb := quComb + ' AND (DATAUSO >= '+AjustarData(dtViagemIni.Date)+' AND DATAUSO <= '+AjustarData(dtViagemFim.Date)+')'
    else
      quComb := quComb + '(DATAUSO >= '+AjustarData(dtViagemIni.Date)+' AND DATAUSO <= '+AjustarData(dtViagemFim.Date)+')'
  end
  else
  if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
  begin
    if quComb > '' then
      quComb := quComb + ' AND (DATAUSO >= '+AjustarData(dtViagemIni.Date)+')'
    else
      quComb := quComb + '(DATAUSO >= '+AjustarData(dtViagemIni.Date)+')'
  end
  else
  if (dtViagemFim.Text > '') and (dtViagemIni.Text = '') then
  begin
    if quComb > '' then
      quComb := quComb + ' AND (DATAUSO <= '+AjustarData(dtViagemFim.Date)+')'
    else
      quComb := quComb + ' (DATAUSO >= '+AjustarData(dtViagemFim.Date)+')'
  end;

  //filtro para periodo especifico...


  if Trim(qu) > '' then
  begin
    Result := LowerCase((SQLVeiculoDespesas+' WHERE '+qu+' UNION '+
                         SQLTratorDespesas +' WHERE '+qu+' UNION '+
                         SQLCombustivel    +' WHERE '+quComb+ordem))
  end
  else
    Result := LowerCase((SQLVeiculoDespesas+' UNION '+
                         SQLTratorDespesas +' UNION '+
                         SQLCombustivel    +ordem));
end;

function TfmRelatorioDespesas.MontarSQLTotal : String;
var
  qu : string;
begin
  qu := '';
  qu := 'SELECT SUM(CUSTOTOTALCOMBUSTIVEL), SUM(CustoTotalGeral) FROM ( '+
        MontarSQL+' ) As DespesasTotal ';
  Result := LowerCase(qu);
end;


// gambiarra para relatorio sintetico... (rogerio / contabilidade).
function TfmRelatorioDespesas.SQL : String;

  function getWhere(): string;
  var
    qu : string;
  begin
    qu := '';
    if (dtViagemIni.Text > '') and (dtViagemFim.Text > '') then
    begin
      if qu > '' then
        qu := qu + ' AND (FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
      else
        qu := qu + '(FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+' AND DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
    end
    else
    if (dtViagemIni.Text > '') and (dtViagemFim.Text = '') then
    begin
      if qu > '' then
        qu := qu + ' AND (FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
      else
        qu := qu + '(FLAG_CANCELAR <> 1) AND (DATAAGENDAINI >= '+AjustarData(dtViagemIni.Date)+')'
    end
    else
    if (dtViagemFim.Text > '') and (dtViagemIni.Text = '') then
    begin
      if qu > '' then
        qu := qu + ' AND (FLAG_CANCELAR <> 1) AND (DATAAGENDAFIM <= '+AjustarData(dtViagemFim.Date)+')'
      else
        qu := qu + ' (FLAG_CANCELAR <> 1) AND (DATAAGENDAFIM >= '+AjustarData(dtViagemFim.Date)+')'
    end
    else
    if (dtViagemIni.Text = '') and (dtViagemFim.Text = '') then
      qu := ' (FLAG_CANCELAR <> 1) ';

    Result := LowerCase(qu);
  end;

var
  qu : string;
begin
  qu := '';
  qu := 'select id, id_docente, nome, sum(CUSTOTOTALCOMBUSTIVEL) as TOTALCOMBUSTIVEL, FLAG_CANCELAR '+
        'from (select a.ai as id, a.ID_DOCENTE, C.NOME as nome, a.DATAAGENDAINI, a.DATAAGENDAFIM, a.CUSTOTOTALCOMBUSTIVEL, a.FLAG_CANCELAR '+
        'from '+
	      'agenda a '+
        'inner join '+
	      'cad_geral c '+
        'on '+
	      '(ID_DOCENTE = C.AI) '+
        'union '+
        'select '+
	      'atr.ai as id, atr.ID_DOCENTE, C.NOME as nome, atr.DATAAGENDAINI, atr.DATAAGENDAFIM, atr.CUSTOTOTALCOMBUSTIVEL, atr.FLAG_CANCELAR '+
        'from '+
	      'agenda_tratores atr '+
        'inner join '+
	      'cad_geral c '+
        'on '+
	      '(ID_DOCENTE = C.AI) '+
        'union '+
        'select ca.ai as id, '+
	      'ca.ID_DOCENTE, C.NOME as nome, ca.DATAUSO AS DATAAGENDAINI, ca.DATAUSO AS DATAAGENDAFIM, '+
	      'ca.CUSTOTOTALGERAL as CUSTOTOTALCOMBUSTIVEL, 0 '+
        'from '+
	      'combustivel_avulso ca '+
        'inner join '+
	      'cad_geral c '+
        'on '+
	      '(ID_DOCENTE = C.AI) '+
        ') virtual where '+getWhere+
        'group by '+
        'nome ';

  if qu > '' then
    Result := LowerCase(qu);
end;


end.           

