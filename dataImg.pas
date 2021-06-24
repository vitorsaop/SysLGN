unit dataImg;

interface

uses
  SysUtils, Classes, ImgList, Controls;

type
  TdmImg = class(TDataModule)
    img: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImg: TdmImg;

implementation

{$R *.dfm}

end.
