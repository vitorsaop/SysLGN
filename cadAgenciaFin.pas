unit cadAgenciaFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, DBCtrls, StdCtrls, Buttons, ExtCtrls,
  FMTBcd, DB, SqlExpr, Provider, DBClient, Mask, DBAdvNavigator, dxBarDBNav,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxNavigator,
  cxDBNavigator;

type
  TfmCadAgenciaFin = class(TfmBaseCadastroSimples)
    dsAgencia: TDataSource;
    cdsAgencia: TClientDataSet;
    cdsAgenciaAI: TIntegerField;
    cdsAgenciaID_AGENCIAFIN: TStringField;
    cdsAgenciaNOME: TStringField;
    cdsAgenciaDATAINC: TDateField;
    cdsAgenciaHORAINC: TTimeField;
    cdsAgenciaUSUARIO: TStringField;
    pvAgencia: TDataSetProvider;
    quAgencia: TSQLQuery;
    quAgenciaAI: TIntegerField;
    quAgenciaID_AGENCIAFIN: TStringField;
    quAgenciaNOME: TStringField;
    quAgenciaDATAINC: TDateField;
    quAgenciaHORAINC: TTimeField;
    quAgenciaUSUARIO: TStringField;
    Label1: TLabel;
    editId_Agencia: TDBEdit;
    Label2: TLabel;
    editDescricao: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadAgenciaFin: TfmCadAgenciaFin;
  procedure CallCadAgenciaFin;

implementation

{$R *.dfm}

uses
  bslMSG,
  bslXProcs,
  utlClasses,
  utlFuncoes,
  utlConstantes,
  dataLGN,
  dataImg,
  pesquisarAgenciaFin;

procedure CallCadAgenciaFin;
begin
  try
    fmCadAgenciaFin := TfmCadAgenciaFin.Create(nil);
    fmCadAgenciaFin.ShowModal;
  finally
    FreeAndNil(fmCadAgenciaFin);
  end;
end;

procedure TfmCadAgenciaFin.actGravarExecute(Sender: TObject);
begin
  if strTrim(editDescricao.Text) = '' then
  begin
    Warning('Necessário informar nome da agência.');
    Exit;
  end;
  inherited;
end;

procedure TfmCadAgenciaFin.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctAgenciaFin;
  inherited;
  if editId_Agencia.CanFocus then
    editId_Agencia.SetFocus;
end;

procedure TfmCadAgenciaFin.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarAgenciaFin;
  if chave > 0 then
  begin
    cdsAgencia.IndexFieldNames := 'Ai';
    cdsAgencia.FindKey([chave]);
    cdsAgencia.IndexFieldNames := '';
  end;
end;

procedure TfmCadAgenciaFin.FormCreate(Sender: TObject);
begin
  DataSet := cdsAgencia;
  inherited;
end;

procedure TfmCadAgenciaFin.FormShow(Sender: TObject);
begin
  inherited;
  Height   := 125;
end;

end.
