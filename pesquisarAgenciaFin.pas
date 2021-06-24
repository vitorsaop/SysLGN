unit pesquisarAgenciaFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, basePesquisa, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, Buttons, ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfmPesquisarAgenciaFin = class(TfmBasePesquisa)
    quAgencia: TSQLQuery;
    quAgenciaAI: TIntegerField;
    quAgenciaID_AGENCIAFIN: TStringField;
    quAgenciaNOME: TStringField;
    pvAgencia: TDataSetProvider;
    cdsAgencia: TClientDataSet;
    cdsAgenciaAI: TIntegerField;
    cdsAgenciaID_AGENCIAFIN: TStringField;
    cdsAgenciaNOME: TStringField;
    dbGridBasePesquisaDBTableView1ID_AGENCIAFIN: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarAgenciaFin: TfmPesquisarAgenciaFin;
  function CallPesquisarAgenciaFin : Integer;

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

function CallPesquisarAgenciaFin : Integer;
begin
  try
    fmPesquisarAgenciaFin := TfmPesquisarAgenciaFin.Create(nil);
    fmPesquisarAgenciaFin.ShowModal;
    if fmPesquisarAgenciaFin.AChave > 0 then
      Result                := fmPesquisarAgenciaFin.AChave;
  finally
    FreeAndNil(fmPesquisarAgenciaFin);
  end;
end;


procedure TfmPesquisarAgenciaFin.FormCreate(Sender: TObject);
begin
  inherited;
  quAgencia.SQL.Clear;
  quAgencia.SQL.Add(SQLCadAgencia);
  qu    := quAgencia;
  cds   := cdsAgencia;
end;

end.
