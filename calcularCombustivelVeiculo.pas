unit calcularCombustivelVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, StdCtrls, Buttons, ExtCtrls,
  ovcbase, ovcef, ovcpb, ovcnf;

type
  TfmCalcularCombustivel = class(TForm)
    Panel1: TPanel;
    btnSair: TBitBtn;
    btnCalcular: TBitBtn;
    OvcNumericField1: TOvcNumericField;
    Label1: TLabel;
    cds: TClientDataSet;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCalcularCombustivel: TfmCalcularCombustivel;
  function CallCalcularCombustivel(ACds : TClientDataSet) : Boolean;

implementation

{$R *.dfm}

function CallCalcularCombustivel(ACds : TClientDataSet) : Boolean;
begin
  try
    fmCalcularCombustivel := TfmCalcularCombustivel.Create(nil);
    fmCalcularCombustivel.cds := ACds;
    fmCalcularCombustivel.cds.Active := True;
    fmCalcularCombustivel.ShowModal;
  finally
    FreeAndNil(fmCalcularCombustivel);
  end;
end;

procedure TfmCalcularCombustivel.btnCalcularClick(Sender: TObject);
begin
  ShowMessage(IntToStr(cds.RecordCount));
  cds.Filtered := False;
    cds.Filter := '(chk = 1)';
  cds.Filtered := True;
  ShowMessage(IntToStr(cds.RecordCount));

  ShowMessage(cds.FieldByName('NOME_VEICULO').AsString);
end;

end.
