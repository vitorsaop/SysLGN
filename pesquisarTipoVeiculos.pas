unit pesquisarTipoVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, basePesquisa, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, Buttons, ExtCtrls, FMTBcd, SqlExpr, Provider,
  DBClient;

type
  TfmPesquisarTipoVeiculos = class(TfmBasePesquisa)
    cdsTipoVeiculos: TClientDataSet;
    cdsTipoVeiculosAI: TIntegerField;
    cdsTipoVeiculosTIPO: TStringField;
    cdsTipoVeiculosCUSTO: TFMTBCDField;
    pvTipoVeiculos: TDataSetProvider;
    quTipoVeiculos: TSQLQuery;
    quTipoVeiculosAI: TIntegerField;
    quTipoVeiculosTIPO: TStringField;
    quTipoVeiculosCUSTO: TFMTBCDField;
    quTipoVeiculosID_TIPOVEICULO: TStringField;
    cdsTipoVeiculosID_TIPOVEICULO: TStringField;
    dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1ID_TIPOVEICULO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1TIPO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1CUSTO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarTipoVeiculos: TfmPesquisarTipoVeiculos;
  function CallPesquisarTipoVeiculos : Integer;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  utlConstantes,
  bslMSG,
  bslXProcs;

function CallPesquisarTipoVeiculos : Integer;
begin
  try
    fmPesquisarTipoVeiculos := TfmPesquisarTipoVeiculos.Create(nil);
    fmPesquisarTipoVeiculos.ShowModal;
    if fmPesquisarTipoVeiculos.AChave > 0 then
      Result                := fmPesquisarTipoVeiculos.AChave;
  finally
    FreeAndNil(fmPesquisarTipoVeiculos);
  end;
end;

procedure TfmPesquisarTipoVeiculos.FormCreate(Sender: TObject);
begin
  inherited;
  quTipoVeiculos.SQL.Clear;
  quTipoVeiculos.SQL.Add(SQLCadTipoVeiculos);
  qu    := quTipoVeiculos;
  cds   := cdsTipoVeiculos;
end;

end.
