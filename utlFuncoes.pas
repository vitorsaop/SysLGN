unit utlFuncoes;

interface

uses
  IniFiles, Windows, Messages, SysUtils, Dialogs, Forms, SqlExpr,
  Graphics, bslXprocs, bslMSG, utlClasses, Buttons, jpeg, dataLGN;

  procedure PutArquivoINI(Adb : TConfigDataBase);
  function  GetArquivoINI(var db : TConfigDataBase) : Boolean;
  function  GetValorString(ATable : string = ''; ACampo : string = '';
                           AFiltro : string = ''; ACondicao : string = '') : string; overload;


  function AjustarData(AData : TDate) : String;

implementation

procedure PutArquivoINI(Adb : TConfigDataBase);
var
  SYSLGN : TIniFile;
begin
  try
    try
      SYSLGN  := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'SYSLGN.INI');
      SYSLGN.WriteString('DADOS','DRIVERNAME',Adb.DriverName);
      SYSLGN.WriteString('DADOS','HOSTNAME',Adb.HostName);
      SYSLGN.WriteString('DADOS','DATABASE',Adb.DataBase);
      SYSLGN.WriteString('DADOS','USERNAME',Adb.UserName);
      SYSLGN.WriteString('DADOS','PASSWORD',Adb.Password);
      SYSLGN.WriteString('DADOS','PORT',Adb.port);
    except on E:Exception do
      begin
        DesktopAlert('Erro ao gravar arquivo SYSLGN.INI '+E.Message, daErro);
        Exit;
      end;
    end;
  finally
    FreeAndNil(SYSLGN);
  end;
end;

function  GetArquivoINI(var db : TConfigDataBase) : Boolean;
var
  SYSLGN : TIniFile;
begin
  try
    SYSLGN            := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'SYSLGN.INI');
    Result            := True;
    db                := TConfigDataBase.Create;
    db.DriverName     := SYSLGN.ReadString('DADOS','DRIVERNAME', '');
    db.HostName       := SYSLGN.ReadString('DADOS','HOSTNAME', '');
    db.DataBase       := SYSLGN.ReadString('DADOS','DATABASE', '');
    db.UserName       := SYSLGN.ReadString('DADOS','USERNAME', '');
    db.Password       := SYSLGN.ReadString('DADOS','PASSWORD', '');
    db.port           := SYSLGN.ReadString('DADOS','PORT', '');
  except on E:Exception do
    begin
      DesktopAlert('Erro ao ler arquivo SYSLGN.INI '+E.Message, daErro);
      Result := False;
      Exit;
    end;
  end;
end;

function  GetValorString(ATable : string = ''; ACampo : string = '';
                         AFiltro : string = ''; ACondicao : string = '') : string; overload;
var
  qu : TSQLQuery;
begin
  try
    try
      qu := TSQLQuery.Create(nil);
      qu.SQLConnection := dmLGN.dbLGN;
      qu.SQL.Clear;
      qu.SQL.Add(LowerCase('SELECT '+ACampo+' FROM '+ATable+' WHERE ('+AFiltro+' = '+ACondicao+')'));
      qu.Active  := True;
      if not qu.IsEmpty then
        Result := qu.FieldByName(ACampo).AsString
      else
        Result := '';
    except on E:Exception do
      begin
        qu.Close;
        Result := '';
      end;
    end;
  finally
    qu.Close;
    FreeAndNil(qu);
  end;
end;

function AjustarData(AData : TDate) : String;
begin
  Result := '';
  if (AData) > 0 then
    Result := QuotedStr(FormatDateTime('yyyy-mm-dd', AData));
end;

end.

