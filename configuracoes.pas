unit configuracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvComCtrls, ComCtrls, ImgList, Buttons,
  ActnList, Mask, JvExMask, JvToolEdit, IniFiles, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxGroupBox,
  FMTBcd, DB, Provider, SqlExpr, DBClient;

type
  TfmConfiguracoes = class(TForm)
    pc: TPageControl;
    tsDataBase: TTabSheet;
    Label1: TLabel;
    editPorta: TEdit;
    Label2: TLabel;
    editUser: TEdit;
    editPassword: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    editDataBase: TEdit;
    Label5: TLabel;
    img: TImageList;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    act: TActionList;
    actSair: TAction;
    actGravar: TAction;
    editIP: TMaskEdit;
    cbDriverName: TComboBox;
    Label6: TLabel;
    tsDiretorios: TTabSheet;
    editDiretorioBackup: TJvDirectoryEdit;
    Label7: TLabel;
    Label9: TLabel;
    editDiretorioOficios: TJvDirectoryEdit;
    tsEmail: TTabSheet;
    gbServidorEmail: TcxGroupBox;
    Label10: TLabel;
    editEmailSMTP: TEdit;
    Label11: TLabel;
    editEmailPorta: TEdit;
    Label12: TLabel;
    editEmailUsuario: TEdit;
    Label13: TLabel;
    gpLogos: TcxGroupBox;
    Label8: TLabel;
    editFile: TJvFilenameEdit;
    gbEmail: TcxGroupBox;
    Label14: TLabel;
    editEmailRemetente: TEdit;
    editEmailSenha: TEdit;
    mmMsgPadrao: TMemo;
    Label15: TLabel;
    Label16: TLabel;
    editEmailAssunto: TEdit;
    procedure actGravarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConfiguracoes: TfmConfiguracoes;
  procedure CallConfiguracoes;
  procedure LerIniConfig(ler, gravar : boolean);

  var
    //diretórios......
    localBackup    : string   = '';
    localOficios   : string   = '';
    arquivoLogo    : string   = '';

    //email...
    Emailsmtp      : string   = '';
    EmailPorta     : Integer  = 0;
    EmailUser      : string   = '';
    EmailSenha     : string   = '';
    EmailRemet     : string   = '';
    EmailAssunto   : string   = '';
    EmailMSGPadrao : string   = '';

implementation

{$R *.dfm}

uses
  bslXprocs,
  bslMSG,
  utlClasses,
  utlFuncoes,
  dataLGN;

  procedure LerIniConfig(ler, gravar : boolean);
  const
    CONFIG= 'CONFIGURACAO';
    EMAIL = 'EMAIL';
  var
    MyConfig : TMyConfigRoot;
  begin
    CreateMyConfig(MyConfig, _TIPOCONFIG, 'CONFIGURACAO', 'dmLGN.dbLGN');

    with MyConfig do
    try
      localBackup     := iniString(ler,gravar,CONFIG,'diretório de backup', localBackup);
      localOficios    := iniString(ler,gravar,CONFIG,'diretório de oficios', localOficios);
      arquivoLogo     := iniString(ler,gravar,CONFIG,'arquivo logotipo', arquivoLogo);
      Emailsmtp       := iniString(ler,gravar,EMAIL,'email smtp', Emailsmtp);
      EmailPorta      := iniInteger(ler,gravar,EMAIL,'email porta',EmailPorta);
      EmailUser       := iniString(ler,gravar,EMAIL,'email user', EmailUser);
      EmailSenha      := iniString(ler,gravar,EMAIL,'email senha', EmailSenha);
      EmailRemet      := iniString(ler,gravar,EMAIL,'email remetente', EmailRemet);
      EmailAssunto    := iniString(ler,gravar,EMAIL,'email assunto', EmailAssunto);
      EmailMSGPadrao  := iniString(ler,gravar,EMAIL,'email msg padrao', EmailMSGPadrao);
    finally
      MyConfig.Done;
    end;
  end;

procedure CallConfiguracoes;
begin
  try
    fmConfiguracoes  := TfmConfiguracoes.Create(nil);
    fmConfiguracoes.ShowModal;
  finally
    FreeAndNil(fmConfiguracoes);
  end;
end;

procedure TfmConfiguracoes.actGravarExecute(Sender: TObject);
var
  db      : TConfigDataBase;
begin
  try
    if cbDriverName.Text = '' then
    begin
      Warning('Necessário informar o driver de acesso.');
      Exit;
    end;

    try
      db              := TConfigDataBase.Create;
      db.DriverName   := cbDriverName.Text;
      db.HostName     := editIp.Text;
      db.Port         := editPorta.Text;
      db.DataBase     := editDataBase.Text;
      db.UserName     := editUser.Text;
      db.Password     := editPassword.Text;
      PutArquivoINI(db);

      if not DirectoryExists(editDiretorioBackup.Text) then
      begin
        if Question('Diretório de Backup não existente, deseja criar?') then
          CreateDir(editDiretorioBackup.Text);
      end;


      if not DirectoryExists(editDiretorioOficios.Text) then
      begin
        if Question('Diretório de cópia de ofícios não existente, deseja criar?') then
          CreateDir(editDiretorioOficios.Text);
      end;

      localBackup     := editDiretorioBackup.Text;
      localOficios    := editDiretorioOficios.Text;
      arquivoLogo     := editFile.Text;

      Emailsmtp       := editEmailSMTP.Text;
      EmailPorta      := StrToInt(editEmailPorta.Text);
      EmailUser       := editEmailUsuario.Text;
      EmailSenha      := editEmailSenha.Text;

      EmailRemet      := editEmailRemetente.Text;
      EmailAssunto    := editEmailAssunto.Text;
      EmailMSGPadrao  := mmMsgPadrao.Lines.Text;

      LerIniConfig(False, True);
      DesktopAlert('Configurações atualizadas.', daInformacao);
      Close;
    except on E:Exception do
      begin
        DesktopAlert('Erro ao registrar database. '+E.Message,daErro);
        Exit;
      end;
    end;
  finally
    FreeAndNil(db);
  end;
end;

procedure TfmConfiguracoes.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmConfiguracoes.FormShow(Sender: TObject);
var
  db     : TConfigDataBase;
begin
  try
    db      := TConfigDataBase.Create;

    if GetArquivoINI(db) then
    begin
      if db.DriverName = 'MySQL' then
        cbDriverName.ItemIndex := 0
      else
      if db.DriverName = 'Firebird' then
        cbDriverName.ItemIndex := 1
      else
      if db.DriverName = 'MSSQL' then
        cbDriverName.ItemIndex := 2;

      editIp.Text           := db.HostName;
      editPorta.Text        := db.Port;
      editDataBase.Text     := db.DataBase;
      editUser.Text         := db.UserName;
      editPassword.Text     := db.Password;
    end;


    LerIniConfig(True, False);

    editDiretorioBackup.Text  := localBackup;
    editDiretorioOficios.Text := localOficios;
    editFile.Text             := arquivoLogo;

    editEmailSMTP.Text        := Emailsmtp;
    editEmailPorta.Text       := IntToStr(EmailPorta);
    editEmailUsuario.Text     := EmailUser;
    editEmailSenha.Text       := EmailSenha;

    editEmailRemetente.Text   := EmailRemet;
    editEmailAssunto.Text     := EmailAssunto;
    mmMsgPadrao.Lines.Text    := EmailMSGPadrao;
  finally
    FreeAndNil(db);
  end;
end;


end.
