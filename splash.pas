unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, GIFImg, StdCtrls, jpeg;

type
  TfmSplash = class(TForm)
    Shape1: TShape;
    Image1: TImage;
    Label1: TLabel;
    Shape2: TShape;
    Image2: TImage;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSplash: TfmSplash;
  procedure CallSplash;
implementation

{$R *.dfm}

procedure CallSplash;
begin
  try
    fmSplash := TfmSplash.Create(nil);
    fmSplash.Show;
    fmSplash.Update;
    Sleep(3000);
  finally
    FreeAndNil(fmSplash);
  end;
end;

procedure TfmSplash.FormShow(Sender: TObject);
begin
  brush.Style := bsclear;
end;

end.
