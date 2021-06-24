unit oficios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, baseCadastroSimples, ActnList, DBCtrls, StdCtrls, Buttons, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, UCBase, dxSkinscxPCPainter,
  cxPC, DBCGrids, Grids, DBGrids, ShellApi, JvExMask, JvToolEdit, cxImage, jpeg,
  uEmailIndy, uEmailSynalist, uInterfaceEmail, ImgList, DBAdvNavigator,
  cxNavigator, cxDBNavigator;

type
  TfmLanctoOficios = class(TfmBaseCadastroSimples)
    quOficios: TSQLQuery;
    pvOficios: TDataSetProvider;
    cdsOficios: TClientDataSet;
    dsOficios: TDataSource;
    quOficiosAI: TIntegerField;
    quOficiosID_LGN: TStringField;
    quOficiosID_DESTINATARIO: TIntegerField;
    quOficiosID_SOLICITANTE: TIntegerField;
    quOficiosOBS: TStringField;
    quOficiosDATAOFICIO: TDateField;
    quOficiosDATAINC: TDateField;
    quOficiosHORAINC: TTimeField;
    quOficiosUSUARIO: TStringField;
    cdsOficiosAI: TIntegerField;
    cdsOficiosID_LGN: TStringField;
    cdsOficiosID_DESTINATARIO: TIntegerField;
    cdsOficiosID_SOLICITANTE: TIntegerField;
    cdsOficiosOBS: TStringField;
    cdsOficiosDATAOFICIO: TDateField;
    cdsOficiosDATAINC: TDateField;
    cdsOficiosHORAINC: TTimeField;
    cdsOficiosUSUARIO: TStringField;
    Label1: TLabel;
    editDataOficio: TcxDBDateEdit;
    quCadGeral: TSQLQuery;
    quCadGeralAI: TIntegerField;
    quCadGeralID_CADGERAL: TStringField;
    quCadGeralNOME: TStringField;
    quCadGeralRG: TStringField;
    quCadGeralCPF: TStringField;
    quCadGeralID_USP: TStringField;
    quCadGeralOBS: TStringField;
    quCadGeralID_FUNCAO: TIntegerField;
    quCadGeralID_CLASSE: TIntegerField;
    quCadGeralFLAGDOCENTE: TIntegerField;
    quCadGeralFLAGFUNCIONARIO: TIntegerField;
    quCadGeralFLAGOUTROS: TIntegerField;
    quCadGeralSTATUS: TIntegerField;
    quCadGeralUSUARIO: TStringField;
    quCadGeralDATAINC: TDateField;
    quCadGeralHORAINC: TTimeField;
    pvCadGeral: TDataSetProvider;
    cdsCadGeral: TClientDataSet;
    cdsCadGeralAI: TIntegerField;
    cdsCadGeralID_CADGERAL: TStringField;
    cdsCadGeralNOME: TStringField;
    cdsCadGeralRG: TStringField;
    cdsCadGeralCPF: TStringField;
    cdsCadGeralID_USP: TStringField;
    cdsCadGeralOBS: TStringField;
    cdsCadGeralID_FUNCAO: TIntegerField;
    cdsCadGeralID_CLASSE: TIntegerField;
    cdsCadGeralFLAGDOCENTE: TIntegerField;
    cdsCadGeralFLAGFUNCIONARIO: TIntegerField;
    cdsCadGeralFLAGOUTROS: TIntegerField;
    cdsCadGeralSTATUS: TIntegerField;
    cdsCadGeralUSUARIO: TStringField;
    cdsCadGeralDATAINC: TDateField;
    cdsCadGeralHORAINC: TTimeField;
    dsCadGeral: TDataSource;
    cdsOficiosCALCNOMEDESTINATARIO: TStringField;
    cdsOficiosCALCNOMEREMETENTE: TStringField;
    quOficiosASSUNTO: TStringField;
    cdsOficiosASSUNTO: TStringField;
    quCadGeralFLAGALUNO: TIntegerField;
    cdsCadGeralFLAGALUNO: TIntegerField;
    Label6: TLabel;
    pc: TcxPageControl;
    tsOficios: TcxTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    memoOBS: TDBMemo;
    memoAssunto: TDBMemo;
    editNomeDestinatario: TDBEdit;
    editnomeRemente: TDBEdit;
    btnPesquisarRemetente: TBitBtn;
    btnPesquisarDestinatario: TBitBtn;
    tsDigitalizar: TcxTabSheet;
    tsEmail: TcxTabSheet;
    dbGridDigitalizacao: TDBCtrlGrid;
    quOficios_Fotos: TSQLQuery;
    dbGridEmails: TDBGrid;
    quOficios_FotosAI: TIntegerField;
    quOficios_FotosID_LGN: TIntegerField;
    quOficios_FotosDATAINC: TDateField;
    quOficios_FotosHORAINC: TTimeField;
    pvOficios_Fotos: TDataSetProvider;
    cdsOficios_Fotos: TClientDataSet;
    cdsOficios_FotosAI: TIntegerField;
    cdsOficios_FotosID_LGN: TIntegerField;
    cdsOficios_FotosDATAINC: TDateField;
    cdsOficios_FotosHORAINC: TTimeField;
    dsOficios_Fotos: TDataSource;
    btnDigitalizar: TBitBtn;
    quOficios_emails: TSQLQuery;
    quOficios_emailsAI: TIntegerField;
    quOficios_emailsID_LGN: TIntegerField;
    quOficios_emailsEMAIL: TStringField;
    pvOficios_emails: TDataSetProvider;
    cdsOficios_emails: TClientDataSet;
    dsOficios_emails: TDataSource;
    cdsOficios_emailsAI: TIntegerField;
    cdsOficios_emailsID_LGN: TIntegerField;
    cdsOficios_emailsEMAIL: TStringField;
    btnEnviar: TBitBtn;
    lbPreview: TLabel;
    cxDBImage1: TcxDBImage;
    Image1: TcxImage;
    quOficios_FotosFOTO: TBlobField;
    cdsOficios_FotosFOTO: TBlobField;
    quOficios_FotosLOCALARQUIVO: TStringField;
    cdsOficios_FotosLOCALARQUIVO: TStringField;
    btnExcluirDigitalizacao: TBitBtn;
    quOficios_emailsENVIADO: TIntegerField;
    quOficios_emailsDATAINC: TDateField;
    quOficios_emailsHORAINC: TTimeField;
    cdsOficios_emailsENVIADO: TIntegerField;
    cdsOficios_emailsDATAINC: TDateField;
    cdsOficios_emailsHORAINC: TTimeField;
    ImageList1: TImageList;
    quCad_Emails: TSQLQuery;
    quCad_EmailsAI: TIntegerField;
    quCad_EmailsID_CADGERAL: TIntegerField;
    quCad_EmailsEMAIL: TStringField;
    quCad_EmailsDATAINC: TDateField;
    quCad_EmailsHORAINC: TTimeField;
    quCad_EmailsUSUARIO: TStringField;
    pvCad_Emails: TDataSetProvider;
    cdsCad_Emails: TClientDataSet;
    cdsCad_EmailsAI: TIntegerField;
    cdsCad_EmailsID_CADGERAL: TIntegerField;
    cdsCad_EmailsEMAIL: TStringField;
    cdsCad_EmailsDATAINC: TDateField;
    cdsCad_EmailsHORAINC: TTimeField;
    cdsCad_EmailsUSUARIO: TStringField;
    lbDataInc: TDBText;
    lbLocalArquivo: TDBText;
    editID_LGN: TDBEdit;
    Label7: TLabel;
    editUsuarioResponsavel: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarDestinatarioClick(Sender: TObject);
    procedure cdsOficiosCalcFields(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure btnPesquisarRemetenteClick(Sender: TObject);
    procedure dsOficiosDataChange(Sender: TObject; Field: TField);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnDigitalizarClick(Sender: TObject);
    procedure cdsOficios_FotosNewRecord(DataSet: TDataSet);
    procedure actGravarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure btnExcluirDigitalizacaoClick(Sender: TObject);
    procedure dbGridEmailsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsOficiosAfterScroll(DataSet: TDataSet);
    procedure actSairExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure dbGridDigitalizacaoDblClick(Sender: TObject);
  private
    Anexo   : TStringList;
    UCControls : TUCControls;
    UserControl : TUserControl;
    procedure AbrirArquivo(arquivo: string);
    function VerificarUsuario(AUser: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLanctoOficios: TfmLanctoOficios;
  //procedure CallOficios;
  procedure CallOficios(var AUserControl : TUserControl;
                        var AUCControls : TUCControls);

implementation

{$R *.dfm}

uses
  dataLGN,
  mainPrincipal,
  pesquisarCadGeral,
  pesquisarOficios,
  digitalizar,
  utlConstantes,
  configuracoes,
  selecionarEmails,
  bslMSG,
  bslXProcs;

procedure CallOficios(var AUserControl : TUserControl;
                      var AUCControls : TUCControls);
begin
  try
    fmLanctoOficios             := TfmLanctoOficios.Create(nil);
    fmLanctoOficios.UCControls  := AUCControls;
    fmLanctoOficios.ShowModal;
  finally
    FreeAndNil(fmLanctoOficios);
  end;
end;

procedure TfmLanctoOficios.AbrirArquivo(arquivo : string);
begin
  ShellExecute(Application.Handle,
    'open', PChar('"'+arquivo+'"'), nil, nil, SW_NORMAL);
end;

procedure TfmLanctoOficios.actExcluirExecute(Sender: TObject);
begin
  if Trim(editID_LGN.Text) = '' then
  begin
    Warning('Nenhum ofício a ser excluído.');
    Exit;
  end;
  inherited;
end;

procedure TfmLanctoOficios.actGravarExecute(Sender: TObject);
begin
  if Trim(editDataOficio.Text) = ''then
  begin
    Warning('Necessário Informar Data.');
    Exit;
  end;
  cdsOficiosUSUARIO.AsString := UCControls.UserControl.CurrentUser.UserName;
  inherited;
end;

procedure TfmLanctoOficios.actNovoExecute(Sender: TObject);
begin
  ACampo  := ctOficios;
  inherited;

  editDataOficio.Date := Now;
  if editNomeDestinatario.CanFocus then
    editNomeDestinatario.SetFocus;
end;

procedure TfmLanctoOficios.actPesquisarExecute(Sender: TObject);
var
  chave  : Integer;
begin
  inherited;
  chave := CallPesquisarOficios;
  if chave > 0 then
  begin
    cdsOficios.IndexFieldNames  := 'Ai';
    cdsOficios.FindKey([chave]);
    cdsOficios.IndexFieldNames  := '';
  end;
end;

procedure TfmLanctoOficios.actSairExecute(Sender: TObject);
begin
  if (cdsOficios.State in [dsEdit, dsInsert]) then
  begin
    Warning('Lancto. de ofício não foi gravado.');
    Exit;
  end;
  inherited;
end;

function TfmLanctoOficios.VerificarUsuario(AUser : String) : Boolean;
begin
  Result := False;
  if AUser = cdsOficiosUSUARIO.AsString then
    Result := True;
end;

procedure TfmLanctoOficios.btnDigitalizarClick(Sender: TObject);
var
  bmp     : TBitmap;
  JPeg    : TJPegImage;
  Arquivo : String;
  Path    : String;
begin
  inherited;
  if not Question('Deseja digitalizar o(s) documentos?') then
    Exit;

  try
    try
      bmp  := TBitmap.Create;
      JPeg := TJPegImage.Create;
      bmp  := Calldigitalizar;

      if bmp.Empty then
      begin
        Warning('Nenhum ofício digitalizado.');
        Exit;
      end;

      //criar funcao de conversao...
      JPeg.CompressionQuality := 100;
      JPeg.Assign(bmp);

      //Path := ExtractFilePath(ParamStr(0))+'Oficios\'+editID_LGN.Text;
      Path  := localOficios+'\'+editID_LGN.Text;

      if not DirectoryExists(localOficios) then
        CreateDir(localOficios);

      if not DirectoryExists(Path) then
        CreateDir(Path);

      Arquivo := (Path+'\Oficio'+IntToStr(cdsOficios_Fotos.RecordCount)+cdsOficiosID_LGN.AsString);

      JPeg.SaveToFile(ChangeFileExt(Arquivo, '.jpg'));
      //criar funcao de conversao...

      cdsOficios_Fotos.Insert;
      TBlobField(cdsOficios_Fotos.FieldByName('FOTO')).LoadFromFile(Arquivo+'.jpg');
      cdsOficios_FotosLOCALARQUIVO.AsString  := Arquivo+'.jpg';
      cdsOficios_Fotos.Post;
      cdsOficios_Fotos.ApplyUpdates(0);
      cdsOficios_Fotos.Refresh;

    except on E:Exception do
      begin
        Warning(E.Message);
        Exit;
      end;
    end;
  finally
    FreeAndNil(JPeg);
    FreeAndNil(bmp);
  end;
end;

procedure TfmLanctoOficios.btnEnviarClick(Sender: TObject);
var
  objEmail      : IEmail;
  objEstrategia : IEstrategiaEnvio;
  i             : Integer;
  email         : string;
begin
  inherited;

  if cdsOficios_Fotos.RecordCount = 0 then
  begin
    DesktopAlert('Nenhum ofício para ser enviado.', daInformacao);
    Exit;
  end;

  quCad_Emails.Active   := False;
  cdsCad_Emails.Active  := False;
  quCad_Emails.ParamByName('pBUSCAR').AsInteger := cdsOficiosID_DESTINATARIO.AsInteger;
  cdsCad_Emails.Active  := True;



  if cdsCad_Emails.RecordCount > 1 then
    email := CallSelecionarEmails(cdsOficiosID_DESTINATARIO.AsInteger)
  else
    email := cdsCad_EmailsEMAIL.AsString;

  if email = '' then
    email := InputBox('digitar email.','','');

  if Trim(email) = '' then
  begin
    Warning('Necessário digitar email de destino.');
    Exit;
  end;

  try
    Application.ProcessMessages;
    btnEnviar.Enabled := False;
    objEmail                    := EmailContexto.Create;
    Anexo                       := TStringList.Create;
    objEmail.RemetenteEmail     := EmailRemet;
    objEmail.DestinatarioEmail  := LowerCase(email);
    objEmail.Assunto            := EmailAssunto;

    objEmail.Host               := Emailsmtp;
    objEmail.Usuario            := EmailUser;
    objEmail.Senha              := EmailSenha;
    objEmail.Porta              := EmailPorta;
    objEmail.Mensagem           := EmailMSGPadrao;

  //criar opçao para forma de envio de email.
  //  case rgEmail.ItemIndex of
  //    0 : objEstrategia := TEmailIndy.Create(Self);
  //    1 : objEstrategia := TEmailSynalist.Create(Self);
  //  end;

    objEstrategia               := TEmailIndy.Create(Self);

    for I := 0 to cdsOficios_Fotos.RecordCount - 1 do
      Anexo.Add(cdsOficios_FotosLOCALARQUIVO.AsString);

    objEmail.Enviar(objEstrategia, True, Anexo);
    cdsOficios_emails.Insert;
    cdsOficios_emailsEMAIL.AsString := LowerCase(email);
    cdsOficios_emails.Post;
    cdsOficios_emails.ApplyUpdates(0);
    cdsOficios_emails.Refresh;
    btnEnviar.Enabled := True;
    Application.ProcessMessages;
  except on E:Exception do
    begin
      Warning('Erro ao enviar email, tente novamente. '+E.Message);
      btnEnviar.Enabled := True;
    end;
  end;
end;

procedure TfmLanctoOficios.btnExcluirDigitalizacaoClick(Sender: TObject);
begin
  inherited;
  try
    iniciarTransacao;
    try
      if cdsOficios_Fotos.IsEmpty then
      begin
        Warning('Nenhuma digitalização para ser excluída.');
        Exit;
      end;

      if not Question('Deseja excluir digitalização?') then
        Exit;

      cdsOficios_Fotos.Delete;
      cdsOficios_Fotos.ApplyUpdates(0);
      cdsOficios_Fotos.Refresh;
    except on E:Exception do
      rollback;
    end;
  finally
    terminartransacao;
  end;
end;

procedure TfmLanctoOficios.btnPesquisarDestinatarioClick(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarCadGeral;

  if chave > 0 then
  begin
    cdsOficiosID_DESTINATARIO.AsInteger := chave;
  end;
end;

procedure TfmLanctoOficios.btnPesquisarRemetenteClick(Sender: TObject);
var
  chave : Integer;
begin
  inherited;
  chave := CallPesquisarCadGeral;
  if chave > 0 then
  begin
    cdsOficiosID_SOLICITANTE.AsInteger := chave;
  end;
end;

procedure TfmLanctoOficios.cdsOficiosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsOficios_Fotos.Active then
    cdsOficios_Fotos.Refresh;

  if cdsOficios_emails.Active then
    cdsOficios_emails.Refresh;
end;

procedure TfmLanctoOficios.cdsOficiosCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsOficiosID_DESTINATARIO.AsInteger > 0 then
  begin
    cdsCadGeral.IndexFieldNames := 'Ai';
    if cdsCadGeral.FindKey([cdsOficiosID_DESTINATARIO.AsInteger]) then
      cdsOficiosCALCNOMEDESTINATARIO.AsString := cdsCadGeralNOME.AsString;
  end;

  if cdsOficiosID_SOLICITANTE.AsInteger > 0 then
  begin
    cdsCadGeral.IndexFieldNames := 'Ai';
    if cdsCadGeral.FindKey([cdsOficiosID_SOLICITANTE.AsInteger]) then
      cdsOficiosCALCNOMEREMETENTE.AsString := cdsCadGeralNOME.AsString;
  end;
end;

procedure TfmLanctoOficios.cdsOficios_FotosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_LGN').AsInteger := cdsOficiosAI.AsInteger;
end;

procedure TfmLanctoOficios.dbGridDigitalizacaoDblClick(Sender: TObject);
begin
  inherited;
  if FileExists(cdsOficios_FotosLOCALARQUIVO.AsString) then
   AbrirArquivo(cdsOficios_FotosLOCALARQUIVO.AsString);
end;

procedure TfmLanctoOficios.dbGridEmailsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  with sender as TDBGrid do
  begin
    if (Column.Field=cdsOficios_emailsENVIADO) then
    begin
      Canvas.FillRect(Rect);
      imageList1.Draw(Canvas,Rect.Left+4,Rect.Top+1,0);
      if (cdsOficios_emailsENVIADO.AsInteger=1) then
        imageList1.Draw(Canvas,Rect.Left+4,Rect.Top+1,1)
    end;
  end;
end;

procedure TfmLanctoOficios.dsOficiosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  btnPesquisarDestinatario.Enabled  := (cdsOficios.State in [dsInsert, dsEdit]);
  btnPesquisarRemetente.Enabled     := (cdsOficios.State in [dsInsert, dsEdit]);
  btnDigitalizar.Enabled            := (cdsOficios.State in [dsInsert, dsEdit]);
  btnExcluirDigitalizacao.Enabled   := (cdsOficios.State in [dsInsert, dsEdit]);
  btnEnviar.Enabled                 := (cdsOficios.State in [dsInsert, dsEdit]);
  btnEditar.Enabled                 := (VerificarUsuario(UCControls.UserControl.CurrentUser.UserName));
  btnExcluir.Enabled                := (VerificarUsuario(UCControls.UserControl.CurrentUser.UserName));
end;

procedure TfmLanctoOficios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsCadGeral.Active        := False;
  cdsOficios_Fotos.Active   := False;
  cdsOficios_emails.Active  := False;
  Image1.Properties.GraphicClassName       := 'TBitmap';
  cxDBImage1.Properties.GraphicClassName   := 'TBitmap';
end;

procedure TfmLanctoOficios.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCadGeral.Active        := True;
  DataSet                   := cdsOficios;
end;

procedure TfmLanctoOficios.FormShow(Sender: TObject);
begin
  inherited;
  cdsOficios_Fotos.Active   := True;
  cdsOficios_emails.Active  := True;
  LerIniConfig(True,False);
  Height := 460;
  Width  := 595;
  btnEditar.Enabled                 := (VerificarUsuario(UCControls.UserControl.CurrentUser.UserName));
  btnExcluir.Enabled                := (VerificarUsuario(UCControls.UserControl.CurrentUser.UserName));
end;

end.
