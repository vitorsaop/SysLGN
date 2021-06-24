unit cadTipoViagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, DBAdvNavigator, StdCtrls, Buttons,
  ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr, Mask, DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxNavigator,
  cxDBNavigator;

type
  TfmCadTipoViagem = class(TfmBaseCadastroSimples)
    quTipoViagem: TSQLQuery;
    cdsTipoViagem: TClientDataSet;
    pvTipoViagem: TDataSetProvider;
    dsTipoViagem: TDataSource;
    quTipoViagemAI: TIntegerField;
    quTipoViagemNOME: TStringField;
    quTipoViagemCUSTOKM: TFMTBCDField;
    cdsTipoViagemAI: TIntegerField;
    cdsTipoViagemNOME: TStringField;
    cdsTipoViagemCUSTOKM: TFMTBCDField;
    quTipoViagemID_TIPOVIAGEM: TStringField;
    cdsTipoViagemID_TIPOVIAGEM: TStringField;
    Label1: TLabel;
    editId_Tipo: TDBEdit;
    Label2: TLabel;
    editNome: TDBEdit;
    Label3: TLabel;
    editCustoKM: TDBEdit;
    procedure actGravarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadTipoViagem: TfmCadTipoViagem;
  procedure CallTipoViagem;

implementation

{$R *.dfm}

uses
  dataLGN,
  dataImg,
  bslMSG,
  bslXProcs,
  utlConstantes,
  pesquisarTipoViagem;


procedure CallTipoViagem;
begin
  try
    fmCadTipoViagem := TfmCadTipoViagem.Create(nil);
    fmCadTipoViagem.ShowModal;
  finally
    FreeAndNil(fmCadTipoViagem);
  end;
end;

procedure TfmCadTipoViagem.actGravarExecute(Sender: TObject);
begin

  if Trim(cdsTipoViagemNOME.AsString) = '' then
  begin
    Warning('Necessário informar descrição.');
    Exit;
  end;


  if cdsTipoViagemCUSTOKM.AsFloat = 0 then
  begin
    Warning('Necessário informar custo por km.');
    Exit;
  end;

  inherited;
end;

procedure TfmCadTipoViagem.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctCadTipoViagem;
  inherited;
  if editId_Tipo.CanFocus then
    editId_Tipo.SetFocus;
end;

procedure TfmCadTipoViagem.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarTipoViagem;
  if chave > 0 then
  begin
    cdsTipoViagem.IndexFieldNames := 'Ai';
    cdsTipoViagem.FindKey([chave]);
    cdsTipoViagem.IndexFieldNames := '';
  end;
end;

procedure TfmCadTipoViagem.FormCreate(Sender: TObject);
begin
  DataSet := cdsTipoViagem;
  inherited;
end;

procedure TfmCadTipoViagem.FormShow(Sender: TObject);
begin
  inherited;
  Height   := 150;
end;

end.
