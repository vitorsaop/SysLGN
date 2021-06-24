unit pesquisarOficios;

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
  cxGrid, StdCtrls, Buttons, ExtCtrls, FMTBcd, SqlExpr, Provider, DBClient,
  cxContainer, cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfmPesquisarOficios = class(TfmBasePesquisa)
    quOficios: TSQLQuery;
    pvOficios: TDataSetProvider;
    cdsOficios: TClientDataSet;
    quCad_Geral: TSQLQuery;
    pvCad_Geral: TDataSetProvider;
    cdsCad_Geral: TClientDataSet;
    dsCad_Geral: TDataSource;
    quCad_GeralAI: TIntegerField;
    quCad_GeralNOME: TStringField;
    cdsCad_GeralAI: TIntegerField;
    cdsCad_GeralNOME: TStringField;
    cdsOficiosAI: TIntegerField;
    cdsOficiosID_LGN: TStringField;
    cdsOficiosID_DESTINATARIO: TIntegerField;
    cdsOficiosASSUNTO: TStringField;
    cdsOficiosID_SOLICITANTE: TIntegerField;
    cdsOficiosOBS: TStringField;
    cdsOficiosDATAOFICIO: TDateField;
    cdsOficiosDATAINC: TDateField;
    cdsOficiosHORAINC: TTimeField;
    cdsOficiosUSUARIO: TStringField;
    cdsOficiosnomeDestinatario: TStringField;
    cdsOficiosnomeSolicitante: TStringField;
    dbGridBasePesquisaDBTableView1ID_LGN: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1ASSUNTO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1OBS: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1DATAOFICIO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1DATAINC: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1HORAINC: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1USUARIO: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1nomeDestinatario: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1nomeSolicitante: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarOficios: TfmPesquisarOficios;
  function CallPesquisarOficios : Integer;

implementation

{$R *.dfm}

uses
  dataLGN,
  bslXprocs,
  bslMSG;

function CallPesquisarOficios : Integer;
begin
  try
    fmPesquisarOficios       := TfmPesquisarOficios.Create(nil);
    fmPesquisarOficios.AChave := 0;
    fmPesquisarOficios.ShowModal;
    if fmPesquisarOficios.AChave > 0 then
      Result                   := fmPesquisarOficios.AChave;
  finally
    FreeAndNil(fmPesquisarOficios);
  end;
end;

procedure TfmPesquisarOficios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsCad_Geral.Active := False;
end;

procedure TfmPesquisarOficios.FormCreate(Sender: TObject);
begin
  inherited;
  qu  := quOficios;
  cds := cdsOficios;
end;

procedure TfmPesquisarOficios.FormShow(Sender: TObject);
begin
  cdsCad_Geral.Active := True;
  inherited;
end;

end.
