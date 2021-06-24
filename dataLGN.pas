unit dataLGN;

interface

uses
  SysUtils, Classes, DB, SqlExpr,
  DBXMySql, Windows, Forms, UCDataConnector, UCDBXConn, UCBase, WideStrings;

type
  TdmLGN = class(TDataModule)
    dbLGN: TSQLConnection;
    UCDBXConn1: TUCDBXConn;
    procedure DataModuleCreate(Sender: TObject);
  private
    t : TTransactionDesc;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLGN: TdmLGN;
  procedure iniciarTransacao( );
  procedure terminartransacao( );
  procedure rollback( );
  //function AtualizarDataBase(Adb : TConfigDataBase): boolean;

implementation

uses
  bslXProcs,
  bslMSG,
  utlClasses,
  utlFuncoes,
  configuracoes,
  mainPrincipal;

{$R *.dfm}

procedure iniciarTransacao(  );
begin
  dmLGN.dbLGN.StartTransaction( dmLGN.t );
end;

procedure terminarTransacao( );
begin
  dmLGN.dbLGN.Commit( dmLGN.t );
end;

procedure rollback( );
begin
  dmLGN.dbLGN.Rollback( dmLGN.t );
end;

function AtualizaerDataBase(Adb : TConfigDataBase) : Boolean;
begin
  try
    try
      Result := False;
      with dmLGN do
      begin
        dbLGN.Connected  := False;
        dbLGN.Params.Values['Database']   := Adb.DataBase;
        dbLGN.Params.Values['HostName']   := Adb.HostName;
        dbLGN.Params.Values['User_Name']  := Adb.UserName;

        if Adb.Password > '' then
          dbLGN.Params.Values['Password'] := Adb.Password;
        dbLGN.LoginPrompt                 := False;

        dbLGN.Connected                   := True;
        Result := dbLGN.Connected;
      end;
    except on E:Exception do
      begin
        DesktopAlert('Erro ao atualizar database '+E.Message, daErro);
        Result := False;
        Exit;
      end;
    end;
  finally

  end;
end;

procedure TdmLGN.DataModuleCreate(Sender: TObject);
var
  db : TConfigDataBase;
begin
  try
    try
      t.TransactionID   := 1;
      t.IsolationLevel  := xilREADCOMMITTED;
      db                := TConfigDataBase.Create;
      if GetArquivoINI(db) and not (AtualizaerDataBase(db)) then
      begin
        while not dbLGN.Connected do
        begin
          if Question('Deseja ajustar agora as configurações do sistema?') then
          begin
            CallConfiguracoes;
            GetArquivoINI(db);
            AtualizaerDataBase(db);
          end
          else
            Break;
        end;
      end;

      if dbLGN.Connected then
          CallMainPrincipal
      else
      begin
        Warning('O Sistema será fechado.');
        Application.Terminate;
      end;
    except
      begin
        DesktopAlert('Erro ao conectar database. ', daErro);
      end;
    end;
  finally
    FreeAndNil(db);
  end;
end;

end.
