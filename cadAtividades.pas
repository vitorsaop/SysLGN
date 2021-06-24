unit cadAtividades;

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
  TfmCadAtividades = class(TfmBaseCadastroSimples)
    dsAtividades: TDataSource;
    cdsAtividades: TClientDataSet;
    cdsAtividadesAI: TIntegerField;
    cdsAtividadesID_ATIVIDADE: TStringField;
    cdsAtividadesNOME: TStringField;
    cdsAtividadesDATAINC: TDateField;
    cdsAtividadesHORAINC: TTimeField;
    pvAtividades: TDataSetProvider;
    quAtividades: TSQLQuery;
    quAtividadesAI: TIntegerField;
    quAtividadesID_ATIVIDADE: TStringField;
    quAtividadesNOME: TStringField;
    quAtividadesDATAINC: TDateField;
    quAtividadesHORAINC: TTimeField;
    Label1: TLabel;
    editId_Atividade: TDBEdit;
    Label2: TLabel;
    editDescricao: TDBEdit;
    cbTipo: TDBComboBox;
    Label3: TLabel;
    quAtividadesUSUARIO: TStringField;
    quAtividadesTIPO: TStringField;
    cdsAtividadesTIPO: TStringField;
    cdsAtividadesUSUARIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dsAtividadesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCadAtividades: TfmCadAtividades;
  procedure CallCadAtividades;

implementation

{$R *.dfm}

uses
  dataImg,
  dataLGN,
  bslMsg,
  bslXProcs,
  pesquisarAtividades,
  utlConstantes;

procedure CallCadAtividades;
begin
  try
    fmCadAtividades := TfmCadAtividades.Create(nil);
    fmCadAtividades.ShowModal;
  finally
    FreeAndNil(fmCadAtividades);
  end;
end;

procedure TfmCadAtividades.actGravarExecute(Sender: TObject);
begin
  if strTrim(editDescricao.Text) = '' then
  begin
    Warning('Necessário informar a atividade.');
    Exit;
  end;
  inherited;
end;

procedure TfmCadAtividades.actNovoExecute(Sender: TObject);
begin
  ACampo   := ctAtividade;
  inherited;
  if editDescricao.CanFocus then
    editDescricao.SetFocus;
end;

procedure TfmCadAtividades.actPesquisarExecute(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarAtividades;
  if chave > 0 then
  begin
    cdsAtividades.IndexFieldNames := 'Ai';
    cdsAtividades.FindKey([chave]);
    cdsAtividades.IndexFieldNames := '';
  end;
end;

procedure TfmCadAtividades.dsAtividadesDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cbTipo.Enabled := (cdsAtividades.State in [dsEdit, dsInsert]);
end;

procedure TfmCadAtividades.FormCreate(Sender: TObject);
begin
  DataSet := cdsAtividades;
  inherited;
end;

procedure TfmCadAtividades.FormShow(Sender: TObject);
begin
  inherited;
  Height   := 155;
end;

end.
