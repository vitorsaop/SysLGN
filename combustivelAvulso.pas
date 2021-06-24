unit combustivelAvulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, StdCtrls,
  Buttons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxNavigator, cxDBNavigator, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit;

type
  TfmCombustivelAvulso = class(TForm)
    quCombustivelAvulso: TSQLQuery;
    pvCombustivelAvulso: TDataSetProvider;
    cdsCombustivelAvulso: TClientDataSet;
    dsCombustivelAvulso: TDataSource;
    quCombustivelAvulsoAI: TIntegerField;
    quCombustivelAvulsoID_COMBUSTIVEL: TIntegerField;
    quCombustivelAvulsoCUSTOLITRO: TFMTBCDField;
    quCombustivelAvulsoCUSTOTOTALGERAL: TFMTBCDField;
    quCombustivelAvulsoQTDE: TFloatField;
    cdsCombustivelAvulsoAI: TIntegerField;
    cdsCombustivelAvulsoID_COMBUSTIVEL: TIntegerField;
    cdsCombustivelAvulsoCUSTOLITRO: TFMTBCDField;
    cdsCombustivelAvulsoCUSTOTOTALGERAL: TFMTBCDField;
    cdsCombustivelAvulsoQTDE: TFloatField;
    quCombustivel: TSQLQuery;
    quCombustivel_Valores: TSQLQuery;
    quCombustivel_ValoresAI: TIntegerField;
    quCombustivel_ValoresID_COMBUSTIVEL: TIntegerField;
    quCombustivel_ValoresCUSTO: TFMTBCDField;
    quCombustivel_ValoresDATACUSTO: TDateField;
    quCombustivel_ValoresSTATUS: TIntegerField;
    quCombustivelAI: TIntegerField;
    quCombustivelID_COMBUSTIVEL: TStringField;
    quCombustivelCOMBUSTIVEL: TStringField;
    pvCombustivel: TDataSetProvider;
    pvCombustivel_Valores: TDataSetProvider;
    cdsCombustivel: TClientDataSet;
    cdsCombustivel_Valores: TClientDataSet;
    dsCombustivel: TDataSource;
    dsCombustivel_Valores: TDataSource;
    cdsCombustivelAI: TIntegerField;
    cdsCombustivelID_COMBUSTIVEL: TStringField;
    cdsCombustivelCOMBUSTIVEL: TStringField;
    cdsCombustivel_ValoresAI: TIntegerField;
    cdsCombustivel_ValoresID_COMBUSTIVEL: TIntegerField;
    cdsCombustivel_ValoresCUSTO: TFMTBCDField;
    cdsCombustivel_ValoresDATACUSTO: TDateField;
    cdsCombustivel_ValoresSTATUS: TIntegerField;
    Label1: TLabel;
    btnPesquisarCadastro: TBitBtn;
    quCombustivelAvulsoOBS: TStringField;
    cdsCombustivelAvulsoOBS: TStringField;
    Label2: TLabel;
    btnNovo: TBitBtn;
    mmOBS: TDBMemo;
    Label3: TLabel;
    Label4: TLabel;
    editQtde: TDBEdit;
    editCustoLitro: TDBEdit;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    cbCombustivel: TDBLookupComboBox;
    editNomeSolicitante: TDBEdit;
    cdsCombustivelAvulsoCalcNomeSolicitante: TStringField;
    dbNav: TcxDBNavigator;
    quCombustivelAvulsoDATAUSO: TDateField;
    cdsCombustivelAvulsoDATAUSO: TDateField;
    editData: TcxDBDateEdit;
    Label5: TLabel;
    quCombustivelAvulsoID_DOCENTE: TIntegerField;
    cdsCombustivelAvulsoID_DOCENTE: TIntegerField;
    editCustoTotal: TDBEdit;
    Label6: TLabel;
    btnEditar: TBitBtn;
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarCadastroClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure editQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dsCombustivelAvulsoDataChange(Sender: TObject; Field: TField);
    procedure cdsCombustivelAvulsoCalcFields(DataSet: TDataSet);
    procedure cbCombustivelExit(Sender: TObject);
    procedure cbCombustivelClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure editQtdeExit(Sender: TObject);
    procedure editCustoLitroExit(Sender: TObject);
  private
    procedure CalcularCombustivel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCombustivelAvulso: TfmCombustivelAvulso;
  procedure CallCombustivelAvulso;
implementation

{$R *.dfm}

uses
  dataImg,
  dataLGN,
  bslMsg,
  bslXProcs,
  utlConstantes,
  utlFuncoes,
  pesquisarCadGeral;

procedure CallCombustivelAvulso;
begin
  try
    fmCombustivelAvulso := TfmCombustivelAvulso.Create(nil);
    fmCombustivelAvulso.ShowModal;
  finally
    FreeAndNil(fmCombustivelAvulso);
  end;
end;

procedure TfmCombustivelAvulso.btnNovoClick(Sender: TObject);
begin
  try
    cdsCombustivelAvulso.Insert;
    cdsCombustivelAvulsoDATAUSO.AsDateTime := Date;
  except on E:Exception do
    Warning(E.Message);
  end;
end;

procedure TfmCombustivelAvulso.btnPesquisarCadastroClick(Sender: TObject);
var
  chave : Integer;
begin
  chave := CallPesquisarCadGeral(False,True,False,True);
  if chave > 0 then
    cdsCombustivelAvulsoID_DOCENTE.AsInteger := chave;
end;

procedure TfmCombustivelAvulso.btnEditarClick(Sender: TObject);
begin
  if not Question('Deseja alterar registro?') then
    Exit;

  cdsCombustivelAvulso.Edit;
end;

procedure TfmCombustivelAvulso.CalcularCombustivel;
begin
  if (cdsCombustivelAvulso.State in [dsEdit, dsInsert]) then
  begin
    cdsCombustivelAvulsoCUSTOTOTALGERAL.AsFloat := cdsCombustivelAvulsoCUSTOLITRO.AsFloat *
                                                   cdsCombustivelAvulsoQTDE.AsFloat;
  end;
end;

procedure TfmCombustivelAvulso.btnGravarClick(Sender: TObject);
begin
  if not Question('Deseja registrar o uso de combustível?') then
    Exit;

  try
    if cdsCombustivelAvulsoCUSTOLITRO.AsFloat = 0 then
      raise Exception.Create('Valor do litro não pode ser 0.');

    if cdsCombustivelAvulsoQTDE.AsFloat = 0 then
      raise Exception.Create('Necessário informar qtde. litro(s) utilizado(s).');

    if Trim(editNomeSolicitante.Text) = '' then
      raise Exception.Create('Necessário informar o solicitante.');

    if (cdsCombustivelAvulsoDATAUSO.IsNull) or (editData.Date = 0) then
      raise Exception.Create('Necessário informar a data de uso.');

//    cdsCombustivelAvulsoCUSTOTOTALGERAL.AsFloat := cdsCombustivelAvulsoCUSTOLITRO.AsFloat *
//                                                   cdsCombustivelAvulsoQTDE.AsFloat;


    cdsCombustivelAvulso.Post;
    cdsCombustivelAvulso.ApplyUpdates(0);
    DesktopAlert('registro efetuado com sucesso.', daInformacao);
  except on E:Exception do
    Warning(E.Message);
  end;
end;

procedure TfmCombustivelAvulso.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmCombustivelAvulso.cbCombustivelClick(Sender: TObject);
begin
  editQtde.SetFocus;
end;

procedure TfmCombustivelAvulso.cbCombustivelExit(Sender: TObject);
begin
  cdsCombustivelAvulsoCUSTOLITRO.AsFloat := cdsCombustivel_ValoresCUSTO.AsFloat;
  CalcularCombustivel;
end;

procedure TfmCombustivelAvulso.cdsCombustivelAvulsoCalcFields(
  DataSet: TDataSet);
begin
  cdsCombustivelAvulsoCalcNomeSolicitante.AsString := GetValorString('CAD_GERAL','NOME','AI',IntToStr(cdsCombustivelAvulsoID_DOCENTE.AsInteger));
end;

procedure TfmCombustivelAvulso.dsCombustivelAvulsoDataChange(Sender: TObject;
  Field: TField);
begin
  btnNovo.Enabled               := not (cdsCombustivelAvulso.State in[dsEdit, dsInsert]);
  btnEditar.Enabled             := not (cdsCombustivelAvulso.State in[dsEdit, dsInsert]);
  btnGravar.Enabled             := (cdsCombustivelAvulso.State in [dsEdit, dsInsert]);
  btnPesquisarCadastro.Enabled  := (cdsCombustivelAvulso.State in [dsEdit, dsInsert]);
  cbCombustivel.Enabled         := (cdsCombustivelAvulso.State in [dsEdit, dsInsert]);
end;

procedure TfmCombustivelAvulso.editCustoLitroExit(Sender: TObject);
begin
  CalcularCombustivel;
end;

procedure TfmCombustivelAvulso.editQtdeExit(Sender: TObject);
begin
  CalcularCombustivel;
end;

procedure TfmCombustivelAvulso.editQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',',',BACKSPACE]) then
    Key := #0;
end;

procedure TfmCombustivelAvulso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsCombustivelAvulso.Active     := False;
  cdsCombustivel.Active           := False;
  cdsCombustivel_Valores.Active   := False;
end;

procedure TfmCombustivelAvulso.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (cdsCombustivelAvulso.State in [dsEdit, dsInsert]) then
  begin
    if (Question('Reserva de combustível ainda não efetuada,'+#13+'deseja sair?' )) then
      CanClose := True
    else
      CanClose := False;
  end
  else
    CanClose := True;
end;

procedure TfmCombustivelAvulso.FormShow(Sender: TObject);
begin
  cdsCombustivelAvulso.Active     := True;
  cdsCombustivel.Active           := True;
  cdsCombustivel_Valores.Active   := True;
  Width                           := 555;
end;

end.
