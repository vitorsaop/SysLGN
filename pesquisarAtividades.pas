unit pesquisarAtividades;

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
  TfmPesquisarAtividades = class(TfmBasePesquisa)
    quAtividades: TSQLQuery;
    quAtividadesAI: TIntegerField;
    quAtividadesID_ATIVIDADE: TStringField;
    quAtividadesNOME: TStringField;
    pvAtividades: TDataSetProvider;
    cdsAtividades: TClientDataSet;
    cdsAtividadesAI: TIntegerField;
    cdsAtividadesID_ATIVIDADE: TStringField;
    cdsAtividadesNOME: TStringField;
    quAtividadesTIPO: TStringField;
    cdsAtividadesTIPO: TStringField;
    dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1ID_ATIVIDADE: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1TIPO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarAtividades: TfmPesquisarAtividades;
  function CallPesquisarAtividades : Integer;

implementation

uses
  bslMSG,
  bslXProcs,
  utlClasses,
  utlFuncoes,
  utlConstantes,
  dataLGN,
  dataImg;

{$R *.dfm}

function CallPesquisarAtividades : Integer;
begin
  try
    fmPesquisarAtividades := TfmPesquisarAtividades.Create(nil);
    fmPesquisarAtividades.ShowModal;
    if fmPesquisarAtividades.AChave > 0 then
      Result                := fmPesquisarAtividades.AChave;
  finally
    FreeAndNil(fmPesquisarAtividades);
  end;
end;

procedure TfmPesquisarAtividades.FormCreate(Sender: TObject);
begin
  inherited;
  quAtividades.SQL.Clear;
  quAtividades.SQL.Add(SQLCadAtiv);
  qu    := quAtividades;
  cds   := cdsAtividades;
end;

end.
