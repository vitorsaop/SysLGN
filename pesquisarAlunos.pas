unit pesquisarAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, basePesquisa, FMTBcd, DBClient, Provider, DB, SqlExpr, StdCtrls,
  Buttons, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxGridCardView, cxGridDBCardView, cxGridChartView, cxGridDBChartView,
  cxGridBandedTableView, cxGridDBBandedTableView, ExtCtrls;

type
  TfmPesquisarAlunos = class(TfmBasePesquisa)
    quAlunos: TSQLQuery;
    pvAlunos: TDataSetProvider;
    cdsAlunos: TClientDataSet;
    quAlunosid_aluno: TStringField;
    quAlunosnome: TStringField;
    quAlunoscpf: TStringField;
    quAlunosrg: TStringField;
    quAlunosid_usp: TStringField;
    cdsAlunosid_aluno: TStringField;
    cdsAlunosnome: TStringField;
    cdsAlunoscpf: TStringField;
    cdsAlunosrg: TStringField;
    cdsAlunosid_usp: TStringField;
    dbGridBasePesquisaDBTableView1id_aluno: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1nome: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1cpf: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1rg: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1id_usp: TcxGridDBColumn;
    quAlunosai: TIntegerField;
    cdsAlunosai: TIntegerField;
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
//    chave : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarAlunos: TfmPesquisarAlunos;
  function CallPesquisarAlunos : Integer;

implementation

{$R *.dfm}

uses
  dataLGN;

function CallPesquisarAlunos : Integer;
begin
  try
    fmPesquisarAlunos  := TfmPesquisarAlunos.Create(nil);
    fmPesquisarAlunos.ShowModal;
    if fmPesquisarAlunos.AChave > 0 then
      Result := fmPesquisarAlunos.AChave;
  finally
    FreeAndNil(fmPesquisarAlunos);
  end;
end;

procedure TfmPesquisarAlunos.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmPesquisarAlunos.FormCreate(Sender: TObject);
begin
  inherited;
  qu  := quAlunos;
  cds := cdsAlunos;
end;

end.
