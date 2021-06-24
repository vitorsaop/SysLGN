unit cadImplementos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, StdCtrls, Buttons, ExtCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxNavigator, cxDBNavigator;

type
  TfmCadImplementos = class(TfmBaseCadastroSimples)
    quImplementos: TSQLQuery;
    pvImplementos: TDataSetProvider;
    cdsImplementos: TClientDataSet;
    dsImplementos: TDataSource;
    quImplementosAI: TIntegerField;
    quImplementosIMPLEMENTO: TStringField;
    cdsImplementosAI: TIntegerField;
    cdsImplementosIMPLEMENTO: TStringField;
    Label1: TLabel;
    editIDImplemento: TDBEdit;
    Label2: TLabel;
    editImplemento: TDBEdit;
    Label3: TLabel;
    editCusto: TDBEdit;
    quImplementosID_IMPLEMENTO: TStringField;
    cdsImplementosID_IMPLEMENTO: TStringField;
    quImplementosCUSTO: TFMTBCDField;
    cdsImplementosCUSTO: TFMTBCDField;
    procedure actNovoExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadImplementos: TfmCadImplementos;
  procedure CallCadImplementos;

implementation

{$R *.dfm}

uses
  dataImg,
  dataLGN,
  bslMsg,
  bslXProcs,
  pesquisarImplementos,
  utlConstantes;

procedure CallCadImplementos;
begin
  try
    fmCadImplementos := TfmCadImplementos.Create(nil);
    fmCadImplementos.ShowModal;
  finally
    FreeAndNil(fmCadImplementos);
  end;
end;

procedure TfmCadImplementos.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctImplementos;
  inherited;
  if editImplemento.CanFocus then
    editImplemento.SetFocus;
end;

procedure TfmCadImplementos.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarImplementos;
  if chave > 0 then
  begin
    cdsImplementos.IndexFieldNames := 'Ai';
    cdsImplementos.FindKey([chave]);
    cdsImplementos.IndexFieldNames := '';
  end;
end;

procedure TfmCadImplementos.FormCreate(Sender: TObject);
begin
  DataSet := cdsImplementos;
  inherited;
end;

procedure TfmCadImplementos.FormShow(Sender: TObject);
begin
  inherited;
  Height   := 155;
end;

end.
