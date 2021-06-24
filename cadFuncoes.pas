unit cadFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, DBCtrls, StdCtrls, Buttons, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBAdvNavigator, cxGraphics,
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
  TfmCadFuncoes = class(TfmBaseCadastroSimples)
    quFuncoes: TSQLQuery;
    pvFuncoes: TDataSetProvider;
    cdsFuncoes: TClientDataSet;
    dsFuncoes: TDataSource;
    quFuncoesAI: TIntegerField;
    quFuncoesID_FUNCAO: TStringField;
    quFuncoesNOME: TStringField;
    quFuncoesOBS: TStringField;
    quFuncoesDATAINC: TDateField;
    quFuncoesHORAINC: TTimeField;
    cdsFuncoesAI: TIntegerField;
    cdsFuncoesID_FUNCAO: TStringField;
    cdsFuncoesNOME: TStringField;
    cdsFuncoesOBS: TStringField;
    cdsFuncoesDATAINC: TDateField;
    cdsFuncoesHORAINC: TTimeField;
    Label1: TLabel;
    editID_Funcao: TDBEdit;
    Label2: TLabel;
    editNome: TDBEdit;
    Label3: TLabel;
    memoOBS: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadFuncoes: TfmCadFuncoes;
  procedure CallCadFuncoes;
implementation

uses
  dataImg,
  dataLGN,
  bslMsg,
  bslXProcs,
  utlConstantes;


{$R *.dfm}

procedure CallCadFuncoes;
begin
  try
    fmCadFuncoes  := TfmCadFuncoes.Create(nil);
    fmCadFuncoes.ShowModal;
  finally
    FreeAndNil(fmCadFuncoes);
  end;
end;


procedure TfmCadFuncoes.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctFuncoes;
  inherited;
end;

procedure TfmCadFuncoes.FormCreate(Sender: TObject);
begin
  inherited;
  DataSet  := cdsFuncoes;
end;

procedure TfmCadFuncoes.FormShow(Sender: TObject);
begin
  inherited;
  Height  := 215;
end;

end.
