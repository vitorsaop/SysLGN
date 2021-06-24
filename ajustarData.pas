unit ajustarData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, cxDBEdit;

type
  TfmAjustarData = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    editDataAtividadeIni: TcxDBDateEdit;
    editDataAtividadeFim: TcxDBDateEdit;
    editDataAgenciaIni: TcxDBDateEdit;
    editDataAgenciaFim: TcxDBDateEdit;
    ds: TDataSource;
    quAlunos: TSQLQuery;
    pvAlunos: TDataSetProvider;
    cdsAlunos: TClientDataSet;
    quAlunosAI: TIntegerField;
    quAlunosID_CADGERAL: TIntegerField;
    quAlunosID_ATIVIDADE: TIntegerField;
    quAlunosID_AGENCIAFIN: TIntegerField;
    quAlunosID_DOCENTE: TIntegerField;
    quAlunosSTATUS: TIntegerField;
    quAlunosDATAATIVINI: TDateField;
    quAlunosDATAATIVFIM: TDateField;
    quAlunosDATAAGEINI: TDateField;
    quAlunosDATAAGEFIM: TDateField;
    quAlunosDATAINC: TDateField;
    quAlunosHORAINC: TTimeField;
    quAlunosUSUARIO: TStringField;
    cdsAlunosAI: TIntegerField;
    cdsAlunosID_CADGERAL: TIntegerField;
    cdsAlunosID_ATIVIDADE: TIntegerField;
    cdsAlunosID_AGENCIAFIN: TIntegerField;
    cdsAlunosID_DOCENTE: TIntegerField;
    cdsAlunosSTATUS: TIntegerField;
    cdsAlunosDATAATIVINI: TDateField;
    cdsAlunosDATAATIVFIM: TDateField;
    cdsAlunosDATAAGEINI: TDateField;
    cdsAlunosDATAAGEFIM: TDateField;
    cdsAlunosDATAINC: TDateField;
    cdsAlunosHORAINC: TTimeField;
    cdsAlunosUSUARIO: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    Ai    : Integer;
    Data  : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAjustarData: TfmAjustarData;
  procedure CallAjustarData(AAi : Integer; AData : String = ''); overload;

implementation

{$R *.dfm}

uses
  dataLGN,
  bslMsg,
  bslXProcs;

procedure CallAjustarData(AAi : Integer; AData : String = ''); overload;
begin
  try
    fmAjustarData       := TfmAjustarData.Create(nil);
    fmAjustarData.Ai    := AAi;
    fmAjustarData.Data  := AData;
    fmAjustarData.cdsAlunos.Active      := False;
      fmAjustarData.cdsAlunos.Filtered  := False;
      fmAjustarData.cdsAlunos.Filter    := '(AI = '+IntToStr(AAi)+')';
      fmAjustarData.cdsAlunos.Filtered  := True;
    fmAjustarData.cdsAlunos.Active      := True;
    if (fmAjustarData.cdsAlunos.RecordCount > 0) then
      fmAjustarData.cdsAlunos.Edit;
    fmAjustarData.ShowModal;
  finally
    fmAjustarData.cdsAlunos.Active  := False;
    FreeAndNil(fmAjustarData);
  end;
end;

procedure TfmAjustarData.btnGravarClick(Sender: TObject);
begin
  try
    iniciarTransacao;
    try
      if (cdsAlunos.State in [dsEdit, dsInsert]) then
      begin
        cdsAlunos.Post;
        cdsAlunos.ApplyUpdates(0);
        cdsAlunos.Refresh;
        Close;
      end;
    except on E:Exception do
      begin
        Warning('Erro ao ajustar datas. ');
        rollback;
      end;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmAjustarData.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmAjustarData.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (editdataAtividadeIni.Text = '') or (editdataAtividadeFim.Text = '')
    or (editDataAgenciaIni.Text = '') or (editDataAgenciaFim.Text = '')
    and (Question('Datas inválidas, deseja continuar?')) then
     CanClose := False
  else
    CanClose  := True;

end;

end.
