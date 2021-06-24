unit cadTipoVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, StdCtrls, Buttons, ExtCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxCheckBox,
  cxDBEdit, cxNavigator, cxDBNavigator;

type
  TfmCadTipoVeiculos = class(TfmBaseCadastroSimples)
    quTipoVeiculos: TSQLQuery;
    pvTipoVeiculos: TDataSetProvider;
    cdsTipoVeiculos: TClientDataSet;
    dsTipoVeiculos: TDataSource;
    quTipoVeiculosAI: TIntegerField;
    quTipoVeiculosTIPO: TStringField;
    quTipoVeiculosCUSTO: TFMTBCDField;
    cdsTipoVeiculosAI: TIntegerField;
    cdsTipoVeiculosTIPO: TStringField;
    cdsTipoVeiculosCUSTO: TFMTBCDField;
    Label1: TLabel;
    editID_TipoVeiculo: TDBEdit;
    Label2: TLabel;
    editTipo: TDBEdit;
    Label3: TLabel;
    editCusto: TDBEdit;
    quTipoVeiculosID_TIPOVEICULO: TStringField;
    cdsTipoVeiculosID_TIPOVEICULO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadTipoVeiculos: TfmCadTipoVeiculos;
  procedure CallCadTipoVeiculos;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  bslMSG,
  bslXProcs,
  pesquisarTipoVeiculos,
  utlConstantes;

procedure CallCadTipoVeiculos;
begin
  try
    fmCadTipoVeiculos   := TfmCadTipoVeiculos.Create(nil);
    fmCadTipoVeiculos.ShowModal;
  finally
    FreeAndNil(fmCadTipoVeiculos);
  end;
end;

procedure TfmCadTipoVeiculos.actNovoExecute(Sender: TObject);
begin
  ACampo  := ctCadTipoVeiculo;
  inherited;
  if editID_TipoVeiculo.CanFocus then
    editTipo.SetFocus;
end;

procedure TfmCadTipoVeiculos.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarTipoVeiculos;
  if chave > 0 then
  begin
    cdsTipoVeiculos.IndexFieldNames := 'Ai';
    cdsTipoVeiculos.FindKey([chave]);
    cdsTipoVeiculos.IndexFieldNames := '';
  end;
end;

procedure TfmCadTipoVeiculos.FormCreate(Sender: TObject);
begin
  DataSet  := cdsTipoVeiculos;
  inherited;
end;

procedure TfmCadTipoVeiculos.FormShow(Sender: TObject);
begin
  inherited;
  Height   := 150;
end;

end.
