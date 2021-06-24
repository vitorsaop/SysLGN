unit pesquisarCidades;

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
  TfmPesquisarCidades = class(TfmBasePesquisa)
    quCidades: TSQLQuery;
    pvCidades: TDataSetProvider;
    cdsCidades: TClientDataSet;
    quCidadesAI: TIntegerField;
    quCidadesID_UF: TIntegerField;
    quCidadesUF: TStringField;
    quCidadesCIDADE: TStringField;
    cdsCidadesAI: TIntegerField;
    cdsCidadesID_UF: TIntegerField;
    cdsCidadesUF: TStringField;
    cdsCidadesCIDADE: TStringField;
    dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1UF: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1CIDADE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarCidades: TfmPesquisarCidades;
  function CallPesquisarCidades : Integer;
implementation

{$R *.dfm}

uses
  dataLGN;

function CallPesquisarCidades : Integer;
begin
  try
    fmPesquisarCidades := TfmPesquisarCidades.Create(nil);
    fmPesquisarCidades.ShowModal;
    if fmPesquisarCidades.AChave > 0 then
      Result := fmPesquisarCidades.AChave
    else
      Result := 0;
  finally
    FreeAndNil(fmPesquisarCidades);
  end;
end;

procedure TfmPesquisarCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  quCidades.Active    := False;
  cdsCidades.Active   := False;
end;

procedure TfmPesquisarCidades.FormCreate(Sender: TObject);
begin
  inherited;
  qu  := quCidades;
  cds := cdsCidades;
end;

procedure TfmPesquisarCidades.FormShow(Sender: TObject);
begin
  inherited;
  editPesquisar.CharCase := ecNormal;
end;

end.
