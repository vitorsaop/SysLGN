unit cadVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, DBAdvNavigator, StdCtrls, Buttons,
  ExtCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient, Mask, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxNavigator, cxDBNavigator,
  dxSkinscxPCPainter, cxPC, cxDBEdit, cxColorComboBox, cxDBColorComboBox;

type
  TfmCadVeiculos = class(TfmBaseCadastroSimples)
    dsCad_Veiculos: TDataSource;
    cdsCad_Veiculos: TClientDataSet;
    cdsCad_VeiculosAI: TIntegerField;
    cdsCad_VeiculosNOME: TStringField;
    pvCad_Veiculos: TDataSetProvider;
    quCad_Veiculos: TSQLQuery;
    quCad_VeiculosAI: TIntegerField;
    quCad_VeiculosNOME: TStringField;
    Label1: TLabel;
    editId_Veiculo: TDBEdit;
    Label2: TLabel;
    editNome: TDBEdit;
    quCad_VeiculosID_VEICULO: TStringField;
    cdsCad_VeiculosID_VEICULO: TStringField;
    quCad_VeiculosID_TIPOVEICULO: TIntegerField;
    cdsCad_VeiculosID_TIPOVEICULO: TIntegerField;
    cbTipoVeiculos: TcxDBLookupComboBox;
    Label3: TLabel;
    quTipoVeiculos: TSQLQuery;
    quTipoVeiculosAI: TIntegerField;
    quTipoVeiculosID_TIPOVEICULO: TStringField;
    quTipoVeiculosTIPO: TStringField;
    quTipoVeiculosCUSTO: TFMTBCDField;
    pvTipoVeiculos: TDataSetProvider;
    cdsTipoVeiculos: TClientDataSet;
    dsTipoVeiculos: TDataSource;
    cdsTipoVeiculosAI: TIntegerField;
    cdsTipoVeiculosID_TIPOVEICULO: TStringField;
    cdsTipoVeiculosTIPO: TStringField;
    cdsTipoVeiculosCUSTO: TFMTBCDField;
    quCombustivel: TSQLQuery;
    quCombustivelAI: TIntegerField;
    quCombustivelID_COMBUSTIVEL: TStringField;
    quCombustivelCOMBUSTIVEL: TStringField;
    pvCombustivel: TDataSetProvider;
    cdsCombustivel: TClientDataSet;
    dsCombustivel: TDataSource;
    cdsCombustivelAI: TIntegerField;
    cdsCombustivelID_COMBUSTIVEL: TStringField;
    cdsCombustivelCOMBUSTIVEL: TStringField;
    quCad_VeiculosID_COMBUSTIVEL: TIntegerField;
    quCad_VeiculosAUTONOMIA: TFMTBCDField;
    cdsCad_VeiculosID_COMBUSTIVEL: TIntegerField;
    cdsCad_VeiculosAUTONOMIA: TFMTBCDField;
    pc: TcxPageControl;
    tsCombustivel: TcxTabSheet;
    Label5: TLabel;
    cbCombustivel: TcxDBLookupComboBox;
    editAutonomia: TDBEdit;
    Label6: TLabel;
    quCad_VeiculosLOCAL: TStringField;
    Label4: TLabel;
    cbLocalUso: TcxDBComboBox;
    cdsCad_VeiculosLOCAL: TStringField;
    cxDBColorComboBox1: TcxDBColorComboBox;
    Label7: TLabel;
    quCad_VeiculosCOR: TStringField;
    cdsCad_VeiculosCOR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadVeiculos: TfmCadVeiculos;
  procedure CallCadastroVeiculos;
implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  pesquisarVeiculos,
  utlClasses,
  utlFuncoes,
  utlConstantes,
  bslXprocs,
  bslMSG;

procedure CallCadastroVeiculos;
begin
  try
    fmCadVeiculos  := TfmCadVeiculos.Create(nil);
    fmCadVeiculos.ShowModal;
  finally
    FreeAndNil(fmCadVeiculos);
  end;
end;

procedure TfmCadVeiculos.actGravarExecute(Sender: TObject);
begin
  if Trim(cbLocalUso.Text) = '' then
  begin
    Warning('Necessário informar o local de uso do veiculo.');
    if cbLocalUso.CanFocus then
      cbLocalUso.SetFocus;

    Exit;
  end;

  inherited;
end;

procedure TfmCadVeiculos.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctCadVeiculos;
  inherited;
  if editNome.CanFocus then
    editNome.SetFocus;
end;

procedure TfmCadVeiculos.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarVeiculos;
  if chave > 0 then
  begin
    cdsCad_Veiculos.IndexFieldNames := 'Ai';
    cdsCad_Veiculos.FindKey([chave]);
    cdsCad_Veiculos.IndexFieldNames := '';
    cdsTipoVeiculos.IndexFieldNames := 'Ai';
    cdsTipoVeiculos.FindKey([cdsCad_VeiculosID_TIPOVEICULO.AsInteger]);
    cdsTipoVeiculos.IndexFieldNames := '';
  end;
end;

procedure TfmCadVeiculos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ShowMessage(FloatToStr(cdsTipoVeiculosCUSTO.AsFloat));
end;

procedure TfmCadVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsCombustivel.Active   := False;
  cdsTipoVeiculos.Active  := False;
end;

procedure TfmCadVeiculos.FormCreate(Sender: TObject);
begin
  inherited;
  DataSet                := cdsCad_Veiculos;
end;

procedure TfmCadVeiculos.FormShow(Sender: TObject);
begin
  inherited;
  cdsTipoVeiculos.Active := True;
  cdsCombustivel.Active  := True;
  cdsTipoVeiculos.IndexFieldNames := 'Ai';
  cdsTipoVeiculos.FindKey([cdsCad_VeiculosID_TIPOVEICULO.AsInteger]);
  cdsTipoVeiculos.IndexFieldNames := '';
  Height := 280;
  Width  := 600;
end;

end.
