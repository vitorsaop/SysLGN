unit pesquisarCadGeral;

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
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, ImgList, cxCheckBox;

type
  TfmPesquisarCadGeral = class(TfmBasePesquisa)
    quCadGeral: TSQLQuery;
    pvCadGeral: TDataSetProvider;
    cdsCadGeral: TClientDataSet;
    quCadGeralai: TIntegerField;
    quCadGeralnome: TStringField;
    quCadGeralcpf: TStringField;
    quCadGeralrg: TStringField;
    quCadGeralid_usp: TStringField;
    cdsCadGeralai: TIntegerField;
    cdsCadGeralnome: TStringField;
    cdsCadGeralcpf: TStringField;
    cdsCadGeralrg: TStringField;
    cdsCadGeralid_usp: TStringField;
    quCadGeralid_cadgeral: TStringField;
    quCadGeralflagdocente: TIntegerField;
    quCadGeralflagfuncionario: TIntegerField;
    quCadGeralflagoutros: TIntegerField;
    cdsCadGeralid_cadgeral: TStringField;
    cdsCadGeralflagdocente: TIntegerField;
    cdsCadGeralflagfuncionario: TIntegerField;
    cdsCadGeralflagoutros: TIntegerField;
    dbGridBasePesquisaDBTableView1id_cadgeral: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1nome: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1cpf: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1rg: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1id_usp: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1flagdocente: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1flagfuncionario: TcxGridDBColumn;
    dbGridBasePesquisaDBTableView1flagoutros: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    quCadGeralflagaluno: TIntegerField;
    cdsCadGeralflagaluno: TIntegerField;
    dbGridBasePesquisaDBTableView1flagaluno: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    Functionario : Boolean;
    Docente      : Boolean;
    Aluno        : Boolean;
    Outros       : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesquisarCadGeral: TfmPesquisarCadGeral;
  function CallPesquisarCadGeral(AFuncionario : Boolean = False;
                                 ADocente     : Boolean = False;
                                 AAluno       : Boolean = False;
                                 AOutros      : Boolean = False) : Integer;
implementation

{$R *.dfm}

uses
  utlConstantes,
  dataLGN;

function CallPesquisarCadGeral(AFuncionario : Boolean = False;
                               ADocente     : Boolean = False;
                               AAluno       : Boolean = False;
                               AOutros      : Boolean = False) : Integer;
begin
  try
    fmPesquisarCadGeral := TfmPesquisarCadGeral.Create(nil);
    fmPesquisarCadGeral.Functionario := AFuncionario;
    fmPesquisarCadGeral.Docente      := ADocente;
    fmPesquisarCadGeral.Aluno        := AAluno;
    fmPesquisarCadGeral.Outros       := AOutros;
    fmPesquisarCadGeral.ShowModal;
    if fmPesquisarCadGeral.AChave > 0 then
      Result := fmPesquisarCadGeral.AChave
    else
      Result := 0;
  finally
    FreeAndNil(fmPesquisarCadGeral);
  end;
end;

procedure TfmPesquisarCadGeral.btnPesquisarClick(Sender: TObject);
var
  query : string;
begin
  query := '';

  if (Functionario) and (Docente) and (Outros) and (Aluno) then
    query := 'AND (FLAGFUNCIONARIO = 1 OR FLAGDOCENTE = 1 OR FLAGOUTROS = 1 OR FLAGALUNO = 1) '
  else
  begin
    if Functionario then
    begin
      if (query = '') then
        query := ' AND (FLAGFUNCIONARIO = 1) '
      else
        query := query + ' OR (FLAGFUNCIONARIO = 1) ';
    end;

    if Docente then
    begin
      if (query = '') then
        query := ' AND (FLAGDOCENTE = 1) '
      else
        query := query + ' OR (FLAGDOCENTE = 1) ';
    end;

    if Aluno then
    begin
      if (query = '') then
        query := ' AND (FLAGALUNO = 1) '
      else
        query := query + ' OR (FLAGALUNO = 1) ';
    end;

    if Outros then
    begin
      if (query = '') then
        query := ' AND (FLAGOUTROS = 1) '
      else
        query := query + ' OR (FLAGOUTROS = 1)';
    end;

  end;

  case cbStatus.ItemIndex of
    0: query := query + 'AND (STATUS = 1)';
    1: query := query + 'AND (STATUS = 0)';
    2: query := query + 'AND (STATUS = 1 OR STATUS = 0)';
  end;

  quCadGeral.SQL.Clear;
  quCadGeral.SQL.Add(LowerCase(SQLCadGeral+query));
  inherited;
end;

procedure TfmPesquisarCadGeral.FormShow(Sender: TObject);
begin
  inherited;
  qu  := quCadGeral;
  cds := cdsCadGeral;
end;

end.
