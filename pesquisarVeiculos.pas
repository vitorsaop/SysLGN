unit pesquisarVeiculos;

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
  TfmPesquisarVeiculos = class(TfmBasePesquisa)
    quCad_Veiculos: TSQLQuery;
    quCad_VeiculosAI: TIntegerField;
    quCad_VeiculosID_VEICULO: TStringField;
    quCad_VeiculosNOME: TStringField;
    pvCad_Veiculos: TDataSetProvider;
    cdsCad_Veiculos: TClientDataSet;
    cdsCad_VeiculosAI: TIntegerField;
    cdsCad_VeiculosID_VEICULO: TStringField;
    cdsCad_VeiculosNOME: TStringField;
    dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1ID_VEICULO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarVeiculos: TfmPesquisarVeiculos;
  function CallPesquisarVeiculos : Integer;

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

function CallPesquisarVeiculos : Integer;
begin
  try
    fmPesquisarVeiculos := TfmPesquisarVeiculos.Create(nil);
    fmPesquisarVeiculos.ShowModal;
    if fmPesquisarVeiculos.AChave > 0 then
      Result                := fmPesquisarVeiculos.AChave;
  finally
    FreeAndNil(fmPesquisarVeiculos);
  end;
end;


procedure TfmPesquisarVeiculos.FormCreate(Sender: TObject);
begin
  inherited;
  quCad_Veiculos.SQL.Clear;
  quCad_Veiculos.SQL.Add(SQLCadVeiculos);
  qu    := quCad_Veiculos;
  cds   := cdsCad_Veiculos;
end;

end.
