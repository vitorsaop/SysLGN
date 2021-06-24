unit cadClasses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, DBCtrls, StdCtrls, Buttons, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, cxGraphics, cxControls,
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
  TfmCadClasses = class(TfmBaseCadastroSimples)
    quClasses: TSQLQuery;
    pvClasses: TDataSetProvider;
    cdsClasses: TClientDataSet;
    dsClasses: TDataSource;
    quClassesAI: TIntegerField;
    quClassesID_CLASSE: TStringField;
    quClassesNOME: TStringField;
    quClassesOBS: TStringField;
    quClassesDATAINC: TDateField;
    quClassesHORAINC: TTimeField;
    cdsClassesAI: TIntegerField;
    cdsClassesID_CLASSE: TStringField;
    cdsClassesNOME: TStringField;
    cdsClassesOBS: TStringField;
    cdsClassesDATAINC: TDateField;
    cdsClassesHORAINC: TTimeField;
    Label1: TLabel;
    editId_Classes: TDBEdit;
    Label2: TLabel;
    editNome: TDBEdit;
    Label3: TLabel;
    memoOBS: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadClasses: TfmCadClasses;
  procedure CallCadClasses;

implementation

uses
  dataImg,
  dataLGN,
  bslMsg,
  bslXProcs,
  utlConstantes;

{$R *.dfm}

procedure CallCadClasses;
begin
  try
    fmCadClasses := TfmCadClasses.Create(nil);
    fmCadClasses.ShowModal;
  finally
    FreeAndNil(fmCadClasses);
  end;
end;

procedure TfmCadClasses.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctClasse;
  inherited;
end;

procedure TfmCadClasses.FormCreate(Sender: TObject);
begin
  inherited;
  DataSet  := cdsClasses;
end;

procedure TfmCadClasses.FormShow(Sender: TObject);
begin
  inherited;
  Height  := 215;
end;

end.
