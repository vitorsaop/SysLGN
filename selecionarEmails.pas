unit selecionarEmails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, StdCtrls, Buttons, DBCtrls;

type
  TfmSelecionarEmails = class(TForm)
    dbSelecionarEmails: TDBGrid;
    Panel1: TPanel;
    quSelecionarEmails: TSQLQuery;
    pvSelecionarEmails: TDataSetProvider;
    cdsSelecionarEmails: TClientDataSet;
    dsSelecionarEmails: TDataSource;
    quSelecionarEmailsnome: TStringField;
    quSelecionarEmailsemail: TStringField;
    cdsSelecionarEmailsnome: TStringField;
    cdsSelecionarEmailsemail: TStringField;
    btnSelecionar: TBitBtn;
    btnSair: TBitBtn;
    img: TImageList;
    DBText1: TDBText;
    cdsSelecionarEmailschk: TIntegerField;
    procedure dbSelecionarEmailsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbSelecionarEmailsCellClick(Column: TColumn);
  private
    Email           : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSelecionarEmails: TfmSelecionarEmails;
  function CallSelecionarEmails(AId_Destinatario : Integer) : string;
implementation

{$R *.dfm}

uses
  dataLGN,
  bslMSG,
  bslXprocs;

function CallSelecionarEmails(AId_Destinatario : Integer) : string;
begin
  try
    fmSelecionarEmails := TfmSelecionarEmails.Create(nil);
    fmSelecionarEmails.quSelecionarEmails.Active  := False;
    fmSelecionarEmails.cdsSelecionarEmails.Active := False;
    fmSelecionarEmails.quSelecionarEmails.ParamByName('pBUSCAR').AsInteger := AId_Destinatario;
    fmSelecionarEmails.cdsSelecionarEmails.Active := True;
    fmSelecionarEmails.btnSelecionar.Enabled      := not fmSelecionarEmails.cdsSelecionarEmails.IsEmpty;
    fmSelecionarEmails.ShowModal;
    if Trim(fmSelecionarEmails.Email) > ''  then
      Result := fmSelecionarEmails.Email;
  finally
    FreeAndNil(fmSelecionarEmails);
  end;
end;

procedure TfmSelecionarEmails.btnSairClick(Sender: TObject);
begin
  Email := '';
  Close;
end;

procedure TfmSelecionarEmails.btnSelecionarClick(Sender: TObject);
begin
  try
    cdsSelecionarEmails.DisableControls;
    cdsSelecionarEmails.First;
    while not cdsSelecionarEmails.Eof do
    begin
      if cdsSelecionarEmailsCHK.AsInteger = 1 then
      begin
        Email := cdsSelecionarEmailsemail.AsString;
        Break;
      end;
      cdsSelecionarEmails.Next;
    end;
    close;
  finally
    cdsSelecionarEmails.EnableControls;
  end;
end;

procedure TfmSelecionarEmails.dbSelecionarEmailsCellClick(Column: TColumn);
begin
  try
    if (cdsSelecionarEmails.Active) and (not cdsSelecionarEmails.IsEmpty) then
    begin
      cdsSelecionarEmails.Edit;
      if cdsSelecionarEmailsCHK.AsInteger = 1 then
        cdsSelecionarEmailsCHK.AsInteger := 0
      else
        cdsSelecionarEmailsCHK.AsInteger := 1;
      cdsSelecionarEmails.Post;
    end;
  finally
    cdsSelecionarEmails.EnableControls;
  end;
end;

procedure TfmSelecionarEmails.dbSelecionarEmailsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with sender as TDBGrid do
  begin
    if (Column.Field=cdsSelecionarEmailsCHK) then
    begin
      Canvas.FillRect(Rect);
      img.Draw(Canvas,Rect.Left+4,Rect.Top+1,0);
      if (cdsSelecionarEmailsCHK.AsInteger=1) then
        img.Draw(Canvas,Rect.Left+4,Rect.Top+1,1);
    end;
  end;
end;

end.
