unit pesquisarImplementos;

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
  cxDropDownEdit, StdCtrls, Buttons, ExtCtrls, FMTBcd, SqlExpr, DBClient,
  Provider;

type
  TfmPesquisarImplementos = class(TfmBasePesquisa)
    pvImplementos: TDataSetProvider;
    cdsImplementos: TClientDataSet;
    cdsImplementosAI: TIntegerField;
    cdsImplementosID_IMPLEMENTO: TStringField;
    cdsImplementosIMPLEMENTO: TStringField;
    cdsImplementosCUSTO: TFMTBCDField;
    quImplementos: TSQLQuery;
    quImplementosAI: TIntegerField;
    quImplementosID_IMPLEMENTO: TStringField;
    quImplementosIMPLEMENTO: TStringField;
    quImplementosCUSTO: TFMTBCDField;
    dbGridBasePesquisaDBTableView1ID_IMPLEMENTO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1IMPLEMENTO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1CUSTO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarImplementos: TfmPesquisarImplementos;
  function CallPesquisarImplementos : Integer;

implementation

{$R *.dfm}

uses
  bslMSG,
  bslXProcs,
  utlClasses,
  utlFuncoes,
  utlConstantes,
  dataLGN,
  dataImg;

function CallPesquisarImplementos : Integer;
begin
  try
    fmPesquisarImplementos := TfmPesquisarImplementos.Create(nil);
    fmPesquisarImplementos.ShowModal;
    if fmPesquisarImplementos.AChave > 0 then
      Result               := fmPesquisarImplementos.AChave;
  finally
    FreeAndNil(fmPesquisarImplementos);
  end;
end;


procedure TfmPesquisarImplementos.FormCreate(Sender: TObject);
begin
  inherited;
  quImplementos.SQL.Clear;
  quImplementos.SQL.Add(SQLCadImplementos);
  qu    := quImplementos;
  cds   := cdsImplementos;
end;

end.
