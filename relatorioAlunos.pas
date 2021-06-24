unit relatorioAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, frxClass, frxDBSet,
  StdCtrls, Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, cxRadioGroup, cxDBEdit, DBCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, frxChBox,
  frxExportPDF, Grids, DBGrids;

//const SQLAlunos         = 'SELECT Ai, ID_CadGeral, Nome, RG, CPF, ID_USP, OBS FROM CAD_GERAL ';
//const SQLAlunoAtividade = 'SELECT * FROM ALUNOS_ATIVIDADES ';
const SQLAlunoAtividade = 'select '+
                          '  c.AI, c.ID_CADGERAL, c.NOME, c.RG, c.CPF, c.ID_USP, c.OBS,c.STATUS, '+
                          '  a.ID_ATIVIDADE, a.ID_AGENCIAFIN, a.ID_DOCENTE, a.STATUS, '+
                          '  a.DATAATIVINI, a.DATAATIVFIM, a.DATAAGEINI, a.DATAAGEFIM '+
                          'from '+
                          '   cad_geral c '+
                          'inner join '+
                          '   alunos_atividades a '+
                          'on '+
                          '   (c.AI = a.ID_CADGERAL) ';

type
  TfmRelatorioAlunos = class(TForm)
    quDocentes: TSQLQuery;
    pvDocentes: TDataSetProvider;
    cdsDocentes: TClientDataSet;
    dsDocentes: TDataSource;
    quDocentesai: TIntegerField;
    quDocentesid_cadGeral: TStringField;
    quDocentesnome: TStringField;
    cdsDocentesai: TIntegerField;
    cdsDocentesid_cadGeral: TStringField;
    cdsDocentesnome: TStringField;
    quAtividades: TSQLQuery;
    quAgencias: TSQLQuery;
    pvAtividades: TDataSetProvider;
    pvAgencias: TDataSetProvider;
    cdsAtividades: TClientDataSet;
    cdsAgencias: TClientDataSet;
    dsAtividades: TDataSource;
    dsAgencias: TDataSource;
    cdsAtividadesai: TIntegerField;
    cdsAtividadesnome: TStringField;
    quAgenciasai: TIntegerField;
    quAgenciasnome: TStringField;
    cdsAgenciasai: TIntegerField;
    cdsAgenciasnome: TStringField;
    frAlunos: TfrxDBDataset;
    frRelatorioAlunos: TfrxReport;
    frAtividades_Alunos: TfrxDBDataset;
    Label1: TLabel;
    btnPesquisar: TSpeedButton;
    Label2: TLabel;
    editId_Cadastro: TEdit;
    editNomeCadastro: TEdit;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    cbStatus: TcxComboBox;
    gbPeriodoAtividade: TcxGroupBox;
    gbPeriodoAgencia: TcxGroupBox;
    cbAtividades: TDBLookupComboBox;
    Label3: TLabel;
    dtAtividadeIni: TcxDateEdit;
    dtAtividadeFim: TcxDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dtAgenciaIni: TcxDateEdit;
    Label7: TLabel;
    dtAgenciaFim: TcxDateEdit;
    cbAgenciaFin: TDBLookupComboBox;
    Label8: TLabel;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxPDFExport1: TfrxPDFExport;
    quAtividadesai: TIntegerField;
    quAtividadesnome: TStringField;
    quAlunos_Atividades: TSQLQuery;
    pvAlunos_Atividades: TDataSetProvider;
    cdsAlunos_Atividades: TClientDataSet;
    dsAlunos_atividades: TDataSource;
    quAlunos: TSQLQuery;
    pvAlunos: TDataSetProvider;
    cdsAlunos: TClientDataSet;
    dsAlunos: TDataSource;
    quAlunosAI: TIntegerField;
    quAlunosID_CADGERAL: TStringField;
    quAlunosNOME: TStringField;
    quAlunosRG: TStringField;
    quAlunosCPF: TStringField;
    quAlunosOBS: TStringField;
    cdsAlunosAI: TIntegerField;
    cdsAlunosID_CADGERAL: TStringField;
    cdsAlunosNOME: TStringField;
    cdsAlunosRG: TStringField;
    cdsAlunosCPF: TStringField;
    cdsAlunosOBS: TStringField;
    quAlunos_AtividadesAI: TIntegerField;
    quAlunos_AtividadesID_CADGERAL: TIntegerField;
    quAlunos_AtividadesID_ATIVIDADE: TIntegerField;
    quAlunos_AtividadesID_AGENCIAFIN: TIntegerField;
    quAlunos_AtividadesID_DOCENTE: TIntegerField;
    quAlunos_AtividadesSTATUS: TIntegerField;
    quAlunos_AtividadesDATAATIVINI: TDateField;
    quAlunos_AtividadesDATAATIVFIM: TDateField;
    quAlunos_AtividadesDATAAGEINI: TDateField;
    quAlunos_AtividadesDATAAGEFIM: TDateField;
    quAlunos_AtividadesDATAINC: TDateField;
    quAlunos_AtividadesHORAINC: TTimeField;
    quAlunos_AtividadesUSUARIO: TStringField;
    cdsAlunos_AtividadesAI: TIntegerField;
    cdsAlunos_AtividadesID_CADGERAL: TIntegerField;
    cdsAlunos_AtividadesID_ATIVIDADE: TIntegerField;
    cdsAlunos_AtividadesID_AGENCIAFIN: TIntegerField;
    cdsAlunos_AtividadesID_DOCENTE: TIntegerField;
    cdsAlunos_AtividadesSTATUS: TIntegerField;
    cdsAlunos_AtividadesDATAATIVINI: TDateField;
    cdsAlunos_AtividadesDATAATIVFIM: TDateField;
    cdsAlunos_AtividadesDATAAGEINI: TDateField;
    cdsAlunos_AtividadesDATAAGEFIM: TDateField;
    cdsAlunos_AtividadesDATAINC: TDateField;
    cdsAlunos_AtividadesHORAINC: TTimeField;
    cdsAlunos_AtividadesUSUARIO: TStringField;
    fr: TfrxReport;
    qu: TSQLQuery;
    pv: TDataSetProvider;
    cds: TClientDataSet;
    quAI: TIntegerField;
    quID_CADGERAL: TStringField;
    quNOME: TStringField;
    quRG: TStringField;
    quCPF: TStringField;
    quID_USP: TStringField;
    quOBS: TStringField;
    quID_ATIVIDADE: TIntegerField;
    quID_AGENCIAFIN: TIntegerField;
    quID_DOCENTE: TIntegerField;
    quDATAATIVINI: TDateField;
    quDATAATIVFIM: TDateField;
    quDATAAGEINI: TDateField;
    quDATAAGEFIM: TDateField;
    cdsAI: TIntegerField;
    cdsID_CADGERAL: TStringField;
    cdsNOME: TStringField;
    cdsRG: TStringField;
    cdsCPF: TStringField;
    cdsID_USP: TStringField;
    cdsOBS: TStringField;
    cdsID_ATIVIDADE: TIntegerField;
    cdsID_AGENCIAFIN: TIntegerField;
    cdsID_DOCENTE: TIntegerField;
    cdsDATAATIVINI: TDateField;
    cdsDATAATIVFIM: TDateField;
    cdsDATAAGEINI: TDateField;
    cdsDATAAGEFIM: TDateField;
    frAividades: TfrxDBDataset;
    quAlunosID_USP: TStringField;
    cdsAlunosID_USP: TStringField;
    cdsAlunos_AtividadesnomeDocente: TStringField;
    cdsAlunos_AtividadesnomeAtividade: TStringField;
    cdsAlunos_AtividadesnomeAgencia: TStringField;
    cdsnomeAtividade: TStringField;
    cdsnomeAgencia: TStringField;
    cdsnomeDocente: TStringField;
    quSTATUS: TIntegerField;
    cdsSTATUS: TIntegerField;
    ds: TDataSource;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cdsAlunosAfterScroll(DataSet: TDataSet);
  private
    chave : Integer;
    function MontarSQLAtividades: String;
    function MontarSQLAlunos: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelatorioAlunos: TfmRelatorioAlunos;
  procedure CallRelatorioAlunos;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  pesquisarCadGeral,
  utlFuncoes,
  bslXprocs,
  bslMSG;


procedure CallRelatorioAlunos;
begin
  try
    try
      fmRelatorioAlunos := TfmRelatorioAlunos.Create(nil);
      fmRelatorioAlunos.ShowModal;
    except on E:Exception do
      Warning('Erro ao abrir relatório. '+E.Message);
    end;
  finally
      FreeAndNil(fmRelatorioAlunos);
  end;
end;


function TfmRelatorioAlunos.MontarSQLAtividades : String;
var
  qu : string;
begin
  qu := ' (FLAGALUNO = 1) ';

  if Trim(editId_Cadastro.Text) > '' then
  begin
    if qu > '' then
      qu := qu + ' AND (C.AI = '+IntToStr(chave)+')'
    else
      qu := '(C.AI = '+IntToStr(chave)+')';
  end;

  case cbStatus.ItemIndex of
    0: begin
         if Trim(qu) > '' then
           qu := qu + ' AND (C.STATUS = 1) '
         else
           qu := qu + '(C.STATUS = 1)';
       end;
    1: begin
         if Trim(qu) > '' then
           qu := qu + ' AND (C.STATUS = 0) '
         else
           qu := qu + '(C.STATUS = 0)';
       end;
    2: begin
         if Trim(qu) > '' then
           qu := qu + ' AND (C.STATUS = 1 OR STATUS = 0) '
         else
           qu := qu + '(C.STATUS = 1 OR C.STATUS = 0)';
       end;
  end;

  if ( (dtAtividadeIni.Date) > 0 ) and ( (dtAtividadeFim.Date) > 0 ) then
    qu := '(A.DATAATIVINI >= '+QuotedStr(dtAtividadeIni.Text)+') AND (A.DATAATIVFIM <= '+QuotedStr(dtAtividadeFim.Text)+' ) '
  else
  if ( (dtAtividadeIni.Date) > 0) then
    qu := '(A.DATAATIVINI >= '+QuotedStr(dtAtividadeIni.Text)+')'
  else
  if ( (dtAtividadeFim.Date) > 0 ) then
    qu := '(A.DATAATIVFIM <= '+QuotedStr(dtAtividadeFim.Text)+')';

  if Trim(cbAtividades.Text) > '' then
  begin
    if qu > '' then
      qu := qu + ' AND (A.ID_ATIVIDADE = '+IntToStr(cdsAtividadesai.AsInteger)+')'
    else
      qu := '(A.ID_ATIVIDADE = '+IntToStr(cdsAtividadesai.AsInteger)+')';
  end;

  //filtro para agencia fin...
  if ( (dtAgenciaIni.Date) > 0 ) and ( (dtAgenciaFim.Date) > 0 ) then
    qu := '(A.DATAAGEINI >= '+QuotedStr(dtAgenciaIni.Text)+') AND (A.DATAAGEFIM <= '+QuotedStr(dtAgenciaFim.Text)+' ) '
  else
  if ( (dtAgenciaIni.Date) > 0) then
    qu := '(A.DATAAGEINI >= '+QuotedStr(dtAgenciaIni.Text)+')'
  else
  if ( (dtAgenciaFim.Date) > 0 ) then
    qu := '(A.DATAAGEFIM <= '+QuotedStr(dtAgenciaFim.Text)+')';

  if Trim(cbAgenciaFin.Text) > '' then
  begin
    if qu > '' then
      qu := qu + ' AND (A.ID_AGENCIAFIN = '+IntToStr(cdsAgenciasai.AsInteger)+')'
    else
      qu := '(A.ID_AGENCIAFIN = '+IntToStr(cdsAgenciasai.AsInteger)+')';
  end;

  if Trim(qu) > '' then
    Result := LowerCase('WHERE ' + qu + 'ORDER BY 3')
  else
    Result := LowerCase('ORDER BY 3');
end;

function TfmRelatorioAlunos.MontarSQLAlunos : String;
var
  qu : string;
begin
  qu := ' (C.FLAGALUNO = 1) ';

  if Trim(editId_Cadastro.Text) > '' then
  begin
    if qu > '' then
      qu := qu + ' AND (C.AI = '+IntToStr(chave)+')'
    else
      qu := '(C.AI = '+IntToStr(chave)+')';
  end;

  case cbStatus.ItemIndex of
    0: begin
         if Trim(qu) > '' then
           qu := qu + ' AND (C.STATUS = 1) '
         else
           qu := qu + '(C.STATUS = 1)';
       end;
    1: begin
         if Trim(qu) > '' then
           qu := qu + ' AND (C.STATUS = 0) '
         else
           qu := qu + '(C.STATUS = 0)';
       end;
    2: begin
         if Trim(qu) > '' then
           qu := qu + ' AND (C.STATUS = 1 OR STATUS = 0) '
         else
           qu := qu + '(C.STATUS = 1 OR C.STATUS = 0)';
       end;
  end;

  if Trim(qu) > '' then
    Result := LowerCase(' WHERE '+qu+ ' ORDER BY NOME ')
  else
    Result := LowerCase(' ORDER BY NOME ');
end;

procedure TfmRelatorioAlunos.btnImprimirClick(Sender: TObject);
var
  msg : string;
begin
  try
    (*
    cdsAlunos_Atividades.Active  := False;
    cdsAlunos.Active             := False;

    quAlunos.SQL.Clear;
    quAlunos.SQL.Add(SQLAlunos+MontarSQLAlunos);

    quAlunos_Atividades.SQL.Clear;
    quAlunos_Atividades.SQL.Add(SQLAlunoAtividade+MontarSQLAtividades);

=    cdsAlunos_Atividades.Active     := True;
    cdsAlunos.Active                := True;
    *)

    cds.Active  := False;
    qu.SQL.Clear;
    qu.SQL.Add(LowerCase(SQLAlunoAtividade+MontarSQLAtividades));
    cds.Active  := True;

    msg        := '';
    if (Trim(cbAtividades.Text) > '') then
      msg := 'filtro de atividade: ' + cbAtividades.Text;
    if (Trim(cbAgenciaFin.Text) > '') then
      msg := msg + 'filtro agência:  '+cbAgenciaFin.Text;

    if ((dtAtividadeIni.Text) > '') and ((dtAtividadeFim.Text) > '') then
      fr.Variables.Variables['periodoAtividade'] := QuotedStr('Atividade de: '+dtAtividadeIni.Text+' até: '+dtAtividadeFim.Text)
    else
    if ((dtAtividadeIni.Text) > '') and ((dtAtividadeFim.Text) = '') then
      fr.Variables.Variables['periodoAtividade'] := QuotedStr('Atividade de: '+dtAtividadeIni.Text+' até: __/__/__ ')
    else
    if ((dtAtividadeIni.Text) = '') and ((dtAtividadeFim.Text) > '') then
      fr.Variables.Variables['periodoAtividade'] := QuotedStr('Atividade de: __/__/__ até: '+dtAtividadeFim.Text)
    else
    if ((dtAtividadeIni.Text) = '') and ((dtAtividadeFim.Text) = '') then
      fr.Variables.Variables['periodoAtividade'] := QuotedStr('Atividade de: __/__/__ até: __/__/__');


    if ((dtAgenciaIni.Text) > '') and ((dtAgenciaFim.Text) > '') then
      fr.Variables.Variables['periodoAgencia'] := QuotedStr('Agência de: '+dtAgenciaIni.Text+' até: '+dtAgenciaFim.Text)
    else
    if ((dtAgenciaIni.Text) > '') and ((dtAgenciaFim.Text) = '') then
      fr.Variables.Variables['periodoAgencia'] := QuotedStr('Agência de: '+dtAgenciaIni.Text+' até: __/__/__ ')
    else
    if ((dtAgenciaIni.Text) = '') and ((dtAgenciaFim.Text) > '') then
      fr.Variables.Variables['periodoAgencia'] := QuotedStr('Agência de: __/__/__ até: '+dtAgenciaFim.Text)
    else
    if ((dtAgenciaIni.Text) = '') and ((dtAgenciaFim.Text) = '') then
      fr.Variables.Variables['periodoAgencia'] := QuotedStr('Agência de: __/__/__ até: __/__/__');

    fr.Variables.Variables['titulo'] := QuotedStr(LowerCase(msg));

    if (cds.IsEmpty) then
    begin
      DesktopAlert('Nada há imprimir', daInformacao);
      Exit;
    end;


    fr.ShowProgress := True;
    fr.ShowReport(True);
  finally
    cds.Active                     := False;
  end;
end;

procedure TfmRelatorioAlunos.btnPesquisarClick(Sender: TObject);
begin
  chave := CallPesquisarCadGeral(False,False,True,False);
  if chave > 0 then
  begin
    editId_Cadastro.Text  := GetValorString('CAD_GERAL', 'ID_CADGERAL', 'AI', IntToStr(chave));
    editNomeCadastro.Text := GetValorString('CAD_GERAL', 'NOME', 'AI', IntToStr(chave));
  end;
end;

procedure TfmRelatorioAlunos.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfmRelatorioAlunos.cdsAlunosAfterScroll(DataSet: TDataSet);
begin
  if cdsAlunos_Atividades.Active then
    cdsAlunos_Atividades.Refresh;
end;

procedure TfmRelatorioAlunos.FormShow(Sender: TObject);
begin
  cdsDocentes.Active           := True;
  cdsAtividades.Active         := True;
  cdsAgencias.Active           := True;
  cdsAlunos.Active             := True;
end;

end.
