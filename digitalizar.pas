unit digitalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DelphiTwain, DelphiTwain_Vcl, FMTBcd,
  DBClient, Provider, DB, SqlExpr, jpeg, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxImage;

type
  TfmDigitalizar = class(TForm)
    pnSuperior: TPanel;
    lbDevice: TListBox;
    img: TImage;
    BtnScanWithDialog: TButton;
    BtnScanWithoutDialog: TButton;
    BitBtn2: TBitBtn;
    ckProporcional: TCheckBox;
    btnSair: TBitBtn;
    procedure BtnScanWithDialogClick(Sender: TObject);
    procedure BtnScanWithoutDialogClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ckProporcionalClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    Twain  : TDelphiTwain;
    procedure ReloadSources;
    procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
  protected
    procedure DoCreate; override;
    procedure DoDestroy; override;
  public
    { Public declarations }
  end;

var
  fmDigitalizar: TfmDigitalizar;
  function Calldigitalizar() : TBitmap;

implementation

{$R *.dfm}

uses
  dataLGN,
  bslXprocs,
  bslMsg;

function Calldigitalizar() : TBitmap;
begin
  try
    fmDigitalizar := TfmDigitalizar.Create(nil);
    fmDigitalizar.ShowModal;
    if not fmDigitalizar.img.Picture.Bitmap.Empty then
      Result := fmDigitalizar.img.Picture.Bitmap
    else
      Result := nil;
  finally
    //FreeAndNil(fmDigitalizar);
  end;
end;

procedure TfmDigitalizar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfmDigitalizar.btnSairClick(Sender: TObject);
begin
  //img.Picture.Bitmap := nil;
  Close;
end;

procedure TfmDigitalizar.BtnScanWithDialogClick(Sender: TObject);
begin
  Twain.SelectedSourceIndex := lbDevice.ItemIndex;

  if Assigned(Twain.SelectedSource) then
  begin
    Twain.SelectedSource.Loaded  := True;
    Twain.SelectedSource.ShowUI  := True; //display interface
    Twain.SelectedSource.Enabled := True;
  end;
end;

procedure TfmDigitalizar.BtnScanWithoutDialogClick(Sender: TObject);
begin
  Twain.SelectedSourceIndex := lbDevice.ItemIndex;

  if Assigned(Twain.SelectedSource) then
  begin
    Twain.SelectedSource.Loaded  := True;
    Twain.SelectedSource.ShowUI  := False;
    Twain.SelectedSource.Enabled := True;
  end;
end;

procedure TfmDigitalizar.ckProporcionalClick(Sender: TObject);
begin
  img.Proportional := ckProporcional.Checked;
end;

procedure TfmDigitalizar.DoCreate;
begin
  inherited;
  try
    Twain                := TDelphiTwain.Create;
    Twain.OnTwainAcquire := TwainTwainAcquire;

    if Twain.LoadLibrary then
    begin
      //Carregar dispositivos.
      Twain.SourceManagerLoaded := TRUE;
      ReloadSources;
    end
    else
    begin
      DesktopAlert('Dispositivo não encontrado.',daInformacao);
    end;
  except on E:Exception do
    begin
      Warning('Erro ao carregar dispisitivo. '+E.Message);
      Exit;
    end;
  end;
end;


procedure TfmDigitalizar.DoDestroy;
begin
  try
    Twain.Free;
  except on E:Exception do
    begin
      Warning('Erro ao desconectar o dispositivo. '+E.Message);
      Exit;
    end;
  end;
end;

procedure TfmDigitalizar.ReloadSources;
var
  I: Integer;
begin
  try
    lbDevice.Items.Clear;
    for I := 0 to Twain.SourceCount-1 do
      lbDevice.Items.Add(Twain.Source[I].ProductName);

    if lbDevice.Items.Count > 0 then
      lbDevice.ItemIndex := 0;
  except on E:Exception do
    begin
      DesktopAlert('Erro em recarregar dispositivos. '+E.Message);
      Exit;
    end;
  end;
end;

procedure TfmDigitalizar.TwainTwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
begin
  img.Picture.Assign(Image);
  Cancel := True;
end;

end.
