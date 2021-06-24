unit pesquisarCombustivel;

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
  cxDropDownEdit, StdCtrls, Buttons, ExtCtrls, FMTBcd, Provider, SqlExpr,
  DBClient;

type
  TfmPesquisarCombustivel = class(TfmBasePesquisa)
    quCombustivel: TSQLQuery;
    pvCombustivel: TDataSetProvider;
    quCombustivelAI: TIntegerField;
    quCombustivelID_COMBUSTIVEL: TStringField;
    quCombustivelCOMBUSTIVEL: TStringField;
    cdsCombustivel: TClientDataSet;
    cdsCombustivelAI: TIntegerField;
    cdsCombustivelID_COMBUSTIVEL: TStringField;
    cdsCombustivelCOMBUSTIVEL: TStringField;
    dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1ID_COMBUSTIVEL: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1COMBUSTIVEL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarCombustivel: TfmPesquisarCombustivel;
  function CallPesquisarCombustivel : Integer;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  bslMSG,
  bslXProcs,
  utlConstantes;

function CallPesquisarCombustivel : Integer;
begin
  try
    fmPesquisarCombustivel := TfmPesquisarCombustivel.Create(nil);
    fmPesquisarCombustivel.ShowModal;
    if fmPesquisarCombustivel.Achave > 0 then
      Result := fmPesquisarCombustivel.AChave;
  finally
    FreeAndNil(fmPesquisarCombustivel);
  end;
end;



procedure TfmPesquisarCombustivel.FormCreate(Sender: TObject);
begin
  inherited;
  quCombustivel.SQL.Clear;
  quCombustivel.SQL.Add(SQLCadCombustivel);
  qu  := quCombustivel;
  cds := cdsCombustivel;
//  quAgencia.SQL.Clear;
//  quAgencia.SQL.Add(SQLCadAgencia);
//  qu    := quAgencia;
//  cds   := cdsAgencia;
end;

end.
