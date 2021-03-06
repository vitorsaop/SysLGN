unit basePesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, FMTBcd, SqlExpr, Provider,
  DBClient, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfmBasePesquisa = class(TForm)
    ds: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    editPesquisar: TEdit;
    btnPesquisar: TBitBtn;
    btnSelecionar: TBitBtn;
    btnSair: TBitBtn;
    dbGridBasePesquisaDBTableView1: TcxGridDBTableView;
    dbGridBasePesquisaLevel1: TcxGridLevel;
    dbGridBasePesquisa: TcxGrid;
    cbStatus: TcxComboBox;
    Label2: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  protected
    { Protected declararion }
    AChave : Integer;
    qu     : TSQLQuery;
    cds    : TClientDataSet;
    procedure AbrirPesquisa(AConsulta : string);
  public
    { Public declarations }
  end;

var
  fmBasePesquisa: TfmBasePesquisa;

implementation

{$R *.dfm}

uses
  dataLGN,
  bslMsg,
  bslXProcs;

procedure TfmBasePesquisa.btnPesquisarClick(Sender: TObject);
begin
  if (editPesquisar.Text='') then
  begin
    Warning('? necess?rio preencher o campo de pesquisa.');
    editPesquisar.SetFocus;
    Exit;
  end;
  AbrirPesquisa(editPesquisar.Text);
end;

procedure TfmBasePesquisa.btnSairClick(Sender: TObject);
begin
  AChave := 0;
  Close;
end;

procedure TfmBasePesquisa.btnSelecionarClick(Sender: TObject);
begin
  if (cds.Active) and (not cds.IsEmpty) then
  begin
    AChave := cds.FieldByName('Ai').AsInteger;
    Close;
  end;
end;

procedure TfmBasePesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cds.Close;
end;

procedure TfmBasePesquisa.FormShow(Sender: TObject);
begin
  editPesquisar.Text := '%';
end;

procedure TfmBasePesquisa.AbrirPesquisa(AConsulta : string);
begin
  try
    try
      iniciarTransacao;
      qu.Close;
      cds.Close;
      if AConsulta > '' then
        //qu.Params.ParamByName('pBUSCAR').Value := '%' + AConsulta + '%'
        qu.Params.ParamByName('pBUSCAR').Value := AConsulta + '%'
      else
        qu.Params.ParamByName('pBUSCAR').Value := '';

      cds.Open;

      if cds.IsEmpty then
          DesktopAlert('Nenhum registro encontrado. ', daInformacao);

    except on E:Exception do
      begin
        Warning('Erro: '+E.Message);
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

end.
