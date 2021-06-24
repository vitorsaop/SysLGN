unit ajustarValorCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ovcbase, ovcef, ovcpb, ovcnf;

type
  TfmAjustarValorCombustivel = class(TForm)
    pn: TPanel;
    Label1: TLabel;
    btnSair: TBitBtn;
    btnOk: TBitBtn;
    editValor: TOvcNumericField;
    procedure btnOkClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    vlrCombustivel : Extended;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAjustarValorCombustivel: TfmAjustarValorCombustivel;
  function CallAjustarValorCombustivel(AVlrCombustivel : Extended) : Extended;

implementation

{$R *.dfm}

uses
  bslMSG,
  bslXProcs,
  utlFuncoes;

function CallAjustarValorCombustivel(AVlrCombustivel : Extended) : Extended;
begin
  try
    fmAjustarValorCombustivel := TfmAjustarValorCombustivel.Create(nil);
    fmAjustarValorCombustivel.ShowModal;
  finally
    Result := fmAjustarValorCombustivel.vlrCombustivel;
    FreeAndNil(fmAjustarValorCombustivel);
  end;
end;


procedure TfmAjustarValorCombustivel.btnOkClick(Sender: TObject);
begin
  vlrCombustivel := editValor.AsFloat;
  Close;
end;

procedure TfmAjustarValorCombustivel.btnSairClick(Sender: TObject);
begin
  vlrCombustivel := editValor.AsFloat;
  Close;
end;

end.
