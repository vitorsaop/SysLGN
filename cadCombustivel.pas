unit cadCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, StdCtrls, Buttons, ExtCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxPC, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, Mask, DBCtrls, cxGroupBox, cxCheckBox, cxNavigator, cxDBNavigator;

type
  TfmCadCombustivel = class(TfmBaseCadastroSimples)
    quCombustivel: TSQLQuery;
    pvCombustivel: TDataSetProvider;
    cdsCombustivel: TClientDataSet;
    dsCombustivel: TDataSource;
    quCombustivelAI: TIntegerField;
    quCombustivelID_COMBUSTIVEL: TStringField;
    quCombustivelCOMBUSTIVEL: TStringField;
    cdsCombustivelAI: TIntegerField;
    cdsCombustivelID_COMBUSTIVEL: TStringField;
    cdsCombustivelCOMBUSTIVEL: TStringField;
    quCombustivel_Valores: TSQLQuery;
    quCombustivel_ValoresAI: TIntegerField;
    quCombustivel_ValoresID_COMBUSTIVEL: TIntegerField;
    quCombustivel_ValoresCUSTO: TFMTBCDField;
    quCombustivel_ValoresDATACUSTO: TDateField;
    quCombustivel_ValoresSTATUS: TIntegerField;
    pvCombustivel_Valores: TDataSetProvider;
    cdsCombustivel_Valores: TClientDataSet;
    dsCombustivel_Valores: TDataSource;
    pc: TcxPageControl;
    tsHistoricoCustos: TcxTabSheet;
    dbGridHistoricoCustosDBTableView1: TcxGridDBTableView;
    dbGridHistoricoCustosLevel1: TcxGridLevel;
    dbGridHistoricoCustos: TcxGrid;
    cdsCombustivel_ValoresAI: TIntegerField;
    cdsCombustivel_ValoresID_COMBUSTIVEL: TIntegerField;
    cdsCombustivel_ValoresCUSTO: TFMTBCDField;
    cdsCombustivel_ValoresDATACUSTO: TDateField;
    cdsCombustivel_ValoresSTATUS: TIntegerField;
    dbGridHistoricoCustosDBTableView1AI: TcxGridDBColumn;
    dbGridHistoricoCustosDBTableView1ID_COMBUSTIVEL: TcxGridDBColumn;
    dbGridHistoricoCustosDBTableView1CUSTO: TcxGridDBColumn;
    dbGridHistoricoCustosDBTableView1DATACUSTO: TcxGridDBColumn;
    dbGridHistoricoCustosDBTableView1STATUS: TcxGridDBColumn;
    Label3: TLabel;
    editId_Combustivel: TDBEdit;
    Label4: TLabel;
    editCombustivel: TDBEdit;
    gbCustoCombustivel: TcxGroupBox;
    btnIncluirCustoCombustivel: TBitBtn;
    btnGravarCustoCombustivel: TBitBtn;
    editDataCusto: TcxDBDateEdit;
    Label2: TLabel;
    editCusto: TDBEdit;
    Label1: TLabel;
    procedure actNovoExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure cdsCombustivel_ValoresFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dsCombustivelDataChange(Sender: TObject; Field: TField);
    procedure btnIncluirCustoCombustivelClick(Sender: TObject);
    procedure btnGravarCustoCombustivelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCombustivel_ValoresDataChange(Sender: TObject; Field: TField);
    procedure actExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadCombustivel: TfmCadCombustivel;
  procedure CallCadCombustivel;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  bslMSG,
  bslXProcs,
  pesquisarCombustivel,
  utlConstantes;

procedure CallCadCombustivel;
begin
  try
    fmCadCombustivel := TfmCadCombustivel.Create(nil);
    fmCadCombustivel.ShowModal;
  finally
    FreeAndNil(fmCadCombustivel);
  end;
end;

procedure TfmCadCombustivel.actExcluirExecute(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      cdsCombustivel_Valores.First;
      while not cdsCombustivel_Valores.Eof do
        cdsCombustivel_Valores.Delete;

      cdsCombustivel_Valores.ApplyUpdates(0);
      cdsCombustivel_Valores.Refresh;
    except on E:Exception do
      begin
        Warning('Erro ao excluir custos. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
  inherited;
end;

procedure TfmCadCombustivel.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctCombustivel;
  inherited;
  if editCombustivel.CanFocus then
    editCombustivel.SetFocus;
end;

procedure TfmCadCombustivel.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarCombustivel;
  if chave > 0 then
  begin
    cdsCombustivel.IndexFieldNames := 'Ai';
    cdsCombustivel.FindKey([chave]);
    cdsCombustivel.IndexFieldNames := '';
  end;
end;

procedure TfmCadCombustivel.actSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmCadCombustivel.btnGravarCustoCombustivelClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      cdsCombustivel_Valores.Post;
      cdsCombustivel_Valores.ApplyUpdates(0);
      cdsCombustivel_Valores.Refresh;
    except on E:Exception do
      begin
        Warning('Erro ao gravar custo combustivel. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmCadCombustivel.btnIncluirCustoCombustivelClick(Sender: TObject);
begin
  inherited;
  if not cdsCombustivel.Active then
    Exit;

  try
    iniciarTransacao;
    try
      cdsCombustivel_Valores.Active := True;
      cdsCombustivel_Valores.Insert;
    except on E:Exception do
      begin
        Warning('Erro ao incluir custo combustível. '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;

end;

procedure TfmCadCombustivel.cdsCombustivel_ValoresFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  DataSet.FieldByName('ID_COMBUSTIVEL').AsInteger := cdsCombustivelAI.AsInteger;
  inherited;
end;

procedure TfmCadCombustivel.dsCombustivelDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  //btnIncluirCustoCombustivel.Enabled := (cdsCombustivel.State in [dsInsert, dsEdit]);
end;

procedure TfmCadCombustivel.dsCombustivel_ValoresDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  btnIncluirCustoCombustivel.Enabled  := not (cdsCombustivel_Valores.State in [dsInsert, dsEdit]);
  btnGravarCustoCombustivel.Enabled   := (cdsCombustivel_Valores.State in [dsInsert, dsEdit]) and (cdsCombustivel.State in [dsInsert, dsEdit]);
end;

procedure TfmCadCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsCombustivel_Valores.Active := False;
end;

procedure TfmCadCombustivel.FormCreate(Sender: TObject);
begin
  DataSet  := cdsCombustivel;
  inherited;
end;

procedure TfmCadCombustivel.FormShow(Sender: TObject);
begin
  inherited;
  Width  := 615;
  cdsCombustivel_Valores.Active  := True;
end;

end.
