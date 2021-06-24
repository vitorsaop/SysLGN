unit pesquisarTipoViagem;

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
  cxDropDownEdit, StdCtrls, Buttons, ExtCtrls, FMTBcd, DBClient, Provider,
  SqlExpr;

type
  TfmPesquisarTipoViagem = class(TfmBasePesquisa)
    quTipoViagem: TSQLQuery;
    quTipoViagemAI: TIntegerField;
    quTipoViagemID_TIPOVIAGEM: TStringField;
    quTipoViagemNOME: TStringField;
    quTipoViagemCUSTOKM: TFMTBCDField;
    pvTipoViagem: TDataSetProvider;
    cdsTipoViagem: TClientDataSet;
    cdsTipoViagemAI: TIntegerField;
    cdsTipoViagemID_TIPOVIAGEM: TStringField;
    cdsTipoViagemNOME: TStringField;
    cdsTipoViagemCUSTOKM: TFMTBCDField;
    dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1ID_TIPOVIAGEM: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1CUSTOKM: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarTipoViagem: TfmPesquisarTipoViagem;
  function CallPesquisarTipoViagem : Integer;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  utlConstantes,
  bslMSG,
  bslXProcs;

function CallPesquisarTipoViagem : Integer;
begin
  try
    fmPesquisarTipoViagem := TfmPesquisarTipoViagem.Create(nil);
    fmPesquisarTipoViagem.ShowModal;
    if fmPesquisarTipoViagem.AChave > 0 then
      Result                := fmPesquisarTipoViagem.AChave;
  finally
    FreeAndNil(fmPesquisarTipoViagem);
  end;
end;


procedure TfmPesquisarTipoViagem.FormCreate(Sender: TObject);
begin
  inherited;
  quTipoViagem.SQL.Clear;
  quTipoVIagem.SQL.Add(SQLCadTipoViagem);
  qu    := quTipoViagem;
  cds   := cdsTipoViagem;
end;

end.
