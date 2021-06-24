unit utlClasses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, ComCtrls, ExtCtrls, Grids,
  dataLGN, IniFiles, Generics.Collections, Contnrs, JclFileUtils, bslXprocs,
  dateUtils;

const
  tipoconfigMEMO   = 1;
  tipoconfigFILE   = 2;
  tipoconfigPARAM  = 3;
  tipoconfigFB     = 4;
  _TIPOCONFIG: byte = tipoconfigPARAM;
type

//  TListadeConfiguracoes = class;


  TMyConfigRoot = class
      tipoConfig : byte;
      constructor Init(parGrupo:string; parDBName:string='');  virtual; abstract;

      destructor Done; virtual; abstract;
      function iniString (ler,gravar:boolean; sessao,ident:string; value:string)   :string;   virtual; abstract;
      function iniBool   (ler,gravar:boolean; sessao,ident:string; value:boolean)  :boolean;  virtual; abstract;
      function iniInteger(ler,gravar:boolean; sessao,ident:string; value:integer)  :integer;  virtual; abstract;
      function iniFloat  (ler,gravar:boolean; sessao,ident:string; value:extended) :extended; virtual; abstract;
      function iniDate   (ler,gravar:boolean; sessao,ident:string; value:TDateTime):TDateTime;virtual; abstract;

      function  SectionExists (section : string): boolean; virtual; abstract;
      procedure ReadSections  (ts:TStrings); virtual; abstract;
      procedure EraseSection  (section:string); virtual; abstract;
      procedure ReadFiles     (ts:TStrings); virtual; abstract;

      procedure Open; virtual;
      procedure Close(gravar:boolean=True); virtual;
    private
      Grupo  : string;
      DBName : string;
  end;

  TMyConfig = class (TMyConfigRoot)   //OK
      constructor Init(parGrupo:string; parDBName:string=''); override;
      destructor Done; override;
      function iniString (ler,gravar:boolean; sessao,ident:string; value:string)  :string;   override;
      function iniBool   (ler,gravar:boolean; sessao,ident:string; value:boolean) :boolean;  override;
      function iniInteger(ler,gravar:boolean; sessao,ident:string; value:Integer) :integer;  override;
      function iniFloat  (ler,gravar:boolean; sessao,ident:string; value:Extended):extended; override;
      function iniDate   (ler,gravar:boolean; sessao,ident:string; value:TDateTime):TDateTime; override;
      function  SectionExists (section : string): boolean; override;
      procedure ReadSections (ts:tstrings); override;
      procedure EraseSection  (section:string); override;
      procedure ReadFiles     (ts:TStrings); override;
    private
      tbParam : TSQLTable;
      qu      : TSQLQuery;
      function  Processar (ler,gravar:boolean;
        sessao,ident:string; value:string; tipo:char='S'   ) :string;
      procedure CreateParam;
  end;

  TMyConfigFILE = class (TMyConfigRoot) // OK
      constructor Init(parGrupo:string; parDBName:string=''); override;
      destructor Done; override;
      function iniString (ler,gravar:boolean; sessao,ident:string; value:string)  :string;   override;
      function iniBool   (ler,gravar:boolean; sessao,ident:string; value:boolean) :boolean;  override;
      function iniInteger(ler,gravar:boolean; sessao,ident:string; value:Integer) :integer;  override;
      function iniFloat  (ler,gravar:boolean; sessao,ident:string; value:Extended):extended; override;
      function iniDate   (ler,gravar:boolean; sessao,ident:string; value:TDateTime):TDateTime; override;
      function  SectionExists (section : string): boolean; override;
      procedure ReadSections (ts:tstrings); override;
      procedure EraseSection  (section:string); override;
      procedure ReadFiles     (ts:TStrings); override;
    private
      IniFile     : TIniFile;
      forcagravar : boolean;
  end;

  TMyConfigParamFB = class (TMyConfigRoot)
      tipoConfig : byte;
      constructor InitFB(parGrupo:string; parCds : TClientDataSet);
      destructor Done; override;

      function iniString (ler,gravar:boolean; sessao,ident:string; value:string)  :string;   override;
      function iniBool   (ler,gravar:boolean; sessao,ident:string; value:boolean) :boolean;  override;
      function iniInteger(ler,gravar:boolean; sessao,ident:string; value:integer) :integer;  override;
      function iniFloat  (ler,gravar:boolean; sessao,ident:string; value:extended):extended; override;
      function iniDate   (ler,gravar:boolean; sessao,ident:string; value:TDateTime):TDateTime; override;

      function  SectionExists (section : string): boolean; override;
      procedure ReadSections  (ts:TStrings); override;
      procedure EraseSection  (section:string); override;
      {
      procedure ReadFiles     (ts:TStrings); override;
      }
      function  Processar (ler,gravar:boolean;
        sessao,ident:string; value:string; tipo:char='S'   ) :string;

      procedure Open; override;
      procedure Close(gravar:boolean=True); override;

    private
      cds : TClientDataSet;
  end;

  TNextNum = class
    FCampo : String;
    FChave : String;
  private
    function  CheckCampo() : boolean;
    function  StrZero(AValor : String; ATam : Integer) : String;
    procedure SetCampo();
  public
    property Campo : string read FCampo write FCampo;
    property Chave : string read FChave write FChave;
    function  GetChave() : String;
    procedure SetChave();
  end;

  TConfigDataBase = class
    FDriverName  : string;
    FHostName    : string;
    FPort        : string;
    FDatabase    : string;
    FUserName    : string;
    FPassword    : string;
    FPromptLogin : Boolean;
  public
    property DriverName : string   read FDriverName write FDriverName;
    property HostName   : string   read FHostName   write FHostName;
    property Port       : string   read FPort       write FPort;
    property DataBase   : string   read FDatabase   write FDatabase;
    property UserName   : string   read FUserName   write FUserName;
    property Password   : string   read FPassword   write FPassword;
  end;

//  TConfiguracoes = class
//    FSecao       : string;
//    FConfig      : string;
//    FValor       : string;
//  public
//    property Secao      : string   read FSecao      write FSecao;
//    property Config     : string   read FConfig     write FConfig;
//    property Valor      : string   read FValor      write FValor;
//  end;
//
//  TListadeConfiguracoes = class(TObjectList<TConfiguracoes>)
//  protected
//    procedure SetObject (Index: Integer; Item: TConfiguracoes);
//    function  GetObject (Index: Integer): TConfiguracoes;
//    procedure Insert    (Index: Integer; Obj: TConfiguracoes);
//  public
//    destructor Destroy; override;
//    function Add (Obj: TConfiguracoes): Integer;
//    property Objects [Index: Integer]: TConfiguracoes
//      read GetObject write SetObject; default;
//    function putIni(ALista : TListadeConfiguracoes) : Boolean;
//    function getIni : TListadeConfiguracoes;
//  end;

  procedure CreateMyConfig (var myConfig : TMyConfigRoot;  tipoconfig: byte;
    grupo  : string; dbname : string=''); overload;

//  {$IFDEF CONFIGFB}
//  procedure CreateMyConfig (var myConfig : TMyConfigRoot;
//    grupo  : string; parCds : TClientDataSet); overload;
//  {$ENDIF}

implementation


procedure CreateMyConfig (var myConfig : TMyConfigRoot;  tipoconfig: byte;
  grupo  : string; dbname : string='');
var
  fn : string;
  fp : string;
  fe : string;
  ininame : string;
begin
  {$IFDEF CONFIGMEMO}
  if tipoconfig = tipoconfigMEMO then
    myConfig := TMyConfigMEMO.Init (grupo, dbName)
  else
   {$ENDIF}

  {$IFDEF CONFIGPX}
  if tipoconfig = tipoconfigPARAM then
    myConfig := TMyConfigPARAMPX.Init(grupo, dbName)
  else
  {$ENDIF}

  {tipoconfigFILE}
  begin
    if extractFilePath(grupo) > '' then
      fp := extractFilePath(grupo)
    else
      fp := extractFilePath(dbname);

    fn := extractName    (grupo);
    fe := extractFileext (grupo);

    if fp='' then
      fp := extractfilepath(paramstr(0)) + 'myconf';
    if fe='' then
      fe := '.INI';

    if not DirectoryExists(fp) then
      ForceDirectories(fp);

    ininame  := strAddSlash(fp) + fn + fe;

    myConfig := TMyConfigFILE.init (ininame);
  end;
end;


{$IFDEF CONFIGFB}
procedure CreateMyConfig (var myConfig : TMyConfigRoot;
  grupo  : string; parCds : TClientDataSet);
begin
  myConfig := TMyConfigParamFB.InitFB(grupo, parCDS)
end;
{$ENDIF}


{ TNextNum }

function TNextNum.CheckCampo: boolean;
var
  qu : TSQLQuery;
begin
  try
    Result := False;
    qu := TSQLQuery.Create(nil);
    qu.Close;
    qu.SQLConnection := dmLGN.dbLGN;
    qu.SQL.Clear;
    qu.SQL.Add('SELECT CAMPO FROM NEXTNUM WHERE CAMPO = '+QuotedStr(Campo));
    qu.Open;

    if qu.IsEmpty then
      Result := True;
  finally
    FreeAndNil(qu);
  end;
end;

function TNextNum.GetChave: String;
var
  qu : TSQLQuery;
begin
  try
    if CheckCampo then
      SetCampo;

    qu := TSQLQuery.Create(nil);
    qu.Close;
    qu.SQLConnection := dmLGN.dbLGN;
    qu.SQL.Clear;
    qu.SQL.Add('SELECT (SUM(CHAVE) + 1) AS CHAVE FROM NEXTNUM WHERE CAMPO = '+QuotedStr(Campo));
    qu.Open;

    if Campo = 'ID_LGN' then
      Chave :=   StrZero(qu.FieldByName('CHAVE').AsString, 4)
    else
      Chave   := StrZero(qu.FieldByName('CHAVE').AsString, 10);

    SetChave;

    if Campo = 'ID_LGN' then
      Result := 'LGN'+Chave+'-'+FormatDateTime('yy',Now)
    else
      Result  := Chave;
  finally
    FreeAndNil(qu);
  end;
end;

procedure TNextNum.SetCampo;
var
  qu : TSQLQuery;
begin
  try
    qu := TSQLQuery.Create(nil);
    qu.Close;
    qu.SQLConnection := dmLGN.dbLGN;
    qu.SQL.Clear;
    qu.SQL.Add('INSERT INTO NEXTNUM (CAMPO) VALUES ('+QuotedStr(Campo)+')');
    qu.ExecSQL(True)
  finally
    FreeAndNil(qu);
  end;
end;

procedure TNextNum.SetChave;
var
  qu : TSQLQuery;
begin
  try
    qu := TSQLQuery.Create(nil);
    qu.Close;
    qu.SQLConnection := dmLGN.dbLGN;
    qu.SQL.Clear;
    qu.SQL.Add('UPDATE NEXTNUM SET CHAVE = '+QuotedStr(Chave)+' WHERE CAMPO = '+QuotedStr(Campo));
    qu.ExecSQL(True);
  finally
    FreeAndNil(qu);
  end;
end;

function TNextNum.StrZero(AValor: String; ATam: Integer): String;
begin
  Result := StringOfChar('0',ATam-Length(AValor))+AValor;
end;

{ TListadeConfiguracoes }

//function TListadeConfiguracoes.Add(Obj: TConfiguracoes): Integer;
//begin
//  Result := inherited Add(Obj);
//end;
//
//destructor TListadeConfiguracoes.Destroy;
//var
//  I : Integer;
//  Lista : TListadeConfiguracoes;
//begin
//  for I := 0 to Lista.Count - 1 do
//    TConfiguracoes(Lista.Items[I]).Free;
//  inherited;
//end;
//
//function TListadeConfiguracoes.getIni: TListadeConfiguracoes;
//var
//  qu     : TSQLQuery;
//  Config : TConfiguracoes;
//  Lista  : TListadeConfiguracoes;
//begin
//  try
//    qu     := TSQLQuery.Create(nil);
//    Lista  := TListadeConfiguracoes.Create();
//    qu.SQLConnection := dmLGN.dbLGN;
//    qu.Active := False;
//    qu.SQL.Clear;
//    qu.SQL.Add('select secao, ident, valor from configuracoes');
//    qu.Active := True;
//    qu.First;
//    while not qu.Eof do
//    begin
//      Config         := TConfiguracoes.Create;
//      Config.Secao   := qu.FieldByName('SECAO').AsString;
//      Config.Config  := qu.FieldByName('IDENT').AsString;
//      Config.Valor   := qu.FieldByName('VALOR').AsString;
//      Lista.Add(Config);
//      qu.Next;
//    end;
//    Result := Lista;
//  finally
//    FreeAndNil(qu);
//  end;
//end;
//
//function TListadeConfiguracoes.GetObject(Index: Integer): TConfiguracoes;
//begin
//  Result := GetObject(Index) as TConfiguracoes;
//end;
//
//procedure TListadeConfiguracoes.Insert(Index: Integer; Obj: TConfiguracoes);
//begin
//  inherited Insert(Index, Obj);
//end;
//
//function TListadeConfiguracoes.putIni(ALista : TListadeConfiguracoes): Boolean;
//var
//  I      : Integer;
//  qu     : TSQLQuery;
//begin
//  try
//    try
//      Result := True;
//      qu     := TSQLQuery.Create(nil);
//      qu.SQLConnection := dmLGN.dbLGN;
//      qu.SQL.Clear;
//      for i := 0 to ALista.Count - 1 do
//      begin
//        qu.SQL.Add('INSERT INTO CONFIGURACOES (SECAO, IDENT, VALOR) '+
//                   'VALUES ('+QuotedStr(TConfiguracoes(ALista.Items[i]).Secao)+', '+
//                   ''+QuotedStr(TConfiguracoes(ALista.Items[i]).Config)+', '+
//                   ''+QuotedStr(TConfiguracoes(ALista.Items[i]).Valor)+')');
//
//        qu.ExecSQL(True);
//        qu.SQL.Clear;
//      end;
//    except
//      Result := False;
//    end;
//  finally
//    FreeAndNil(qu);
//  end;
//end;
//
//procedure TListadeConfiguracoes.SetObject(Index: Integer; Item: TConfiguracoes);
//begin
//  SetObject(Index, Item);
//end;

{ TMyConfig }

function dateToString (data:TDateTime) : string;
begin
  if (data > 0) then
    Result := FormatDateTime('yyyy-mm-dd hh:mm', data)
  else
    Result := '';
end;

function stringToDate (data:string) : TDateTime;
const
  sep = ' ';
var
  ano,mes,dia,hora,min : Integer;
begin
  if (data> '') then
  begin
    strChange(data,'-',sep);
    strChange(data,':',sep);
    ano := StrToIntDef(strToken(data,sep),0);
    mes := StrToIntDef(strToken(data,sep),0);
    dia := StrToIntDef(strToken(data,sep),0);
    hora:= StrToIntDef(strToken(data,sep),0);
    min := StrToIntDef(strToken(data,sep),0);
    TryEncodeDateTime(ano,mes,dia,hora,min,0,0,Result)
  end
  else
    Result := 0;
end;

procedure TMyConfig.CreateParam;
begin

end;

destructor TMyConfig.Done;
begin
  qu.Close;
  qu.Free;
  qu := nil;
//  if not tbParam.Database.IsSQLBased then
//    tbParam.FlushBuffers;
//
//  tbParam.Close;
//  tbParam.Free;
//  tbParam    := nil;
  grupo := '';
  tipoconfig := 0;
end;

procedure TMyConfig.EraseSection(section: string);
begin
  qu.Close;
  try
    qu.SQL.Clear;
    qu.SQL.Append('DELETE FROM PARAM WHERE SESSAO=' + QuotedStr(section));
    qu.ExecSQL;
  finally
    qu.Close;
  end;
end;

function TMyConfig.iniBool(ler, gravar: boolean; sessao, ident: string;
  value: boolean): boolean;
var
  par : string;
begin
  if (value=true) then
    par := '1'
  else
    par := '0';

  par := processar(ler,gravar,sessao,ident,par,'B');
  Result := (par<>'0') and (par>'')
end;

function TMyConfig.iniDate(ler, gravar: boolean; sessao, ident: string;
  value: TDateTime): TDateTime;
var
  par : string;
  d   : TDateTime;
begin
  if (value>0) then
    par := DateToString(value)
  else
    par := '';
  par := processar(ler,gravar,sessao,ident,par,'D');
  Result := stringToDate(par);
end;

function TMyConfig.iniFloat(ler, gravar: boolean; sessao, ident: string;
  value: Extended): extended;
var
  err : integer;
  par : string;
  f   : extended;
begin
  str(value:0:5, par);
  par := processar(ler,gravar,sessao,ident,par,'F');
  val(par,f,err);
  if err > 0 then
  begin
    str(f:0:5, par);
    par := processar(false,true,sessao,ident,par,'F');
    val(par,f,err);
  end;
  Result := f;
end;

function TMyConfig.iniInteger(ler, gravar: boolean; sessao, ident: string;
  value: Integer): integer;
var
  err : integer;
  par : string;
  i   : integer;
begin
  str(value, par);
  par := processar(ler,gravar,sessao,ident,par,'I');
  val(par,i,err);
  if err > 0 then
  begin
    str(i, par);
    par := processar(false,true,sessao,ident,par,'I');
    val(par,i,err);
  end;
  Result := i;
end;

function TMyConfig.iniString(ler, gravar: boolean; sessao, ident,
  value: string): string;
begin
  Result := processar(ler,gravar,sessao,ident,value,'S');
end;

constructor TMyConfig.Init(parGrupo, parDBName: string);
begin
  {$IFDEF TESTE}
  INFORMATION('INIT '+PARGRUPO);
  {$ENDIF}

  grupo := strUpper(parGrupo);
  dbName:= parDBName;

  qu := TSQLQuery.Create(nil);
  qu.SQLConnection := dmLGN.dbLGN; //DBName;

//  tbParam := TTable.Create(nil);
//  tbParam.DatabaseName := DBName;
//  tbParam.TableName := 'PARAM';
//  tbParam.IndexFieldNames := 'Grupo;Sessao;Ident';

//  if not tbParam.Exists then
//    CreateParam;

//  tbParam.Open;
  tipoConfig := tipoconfigPARAM;
end;

function TMyConfig.Processar(ler, gravar: boolean; sessao, ident, value: string;
  tipo: char): string;
begin
  sessao := strUpper(strTrim(sessao));
  if (ler) then
  begin
    //if tbParam.FindKey([grupo,sessao,ident]) then
    if tbParam.Locate('grupo;sessao;ident',VarArrayOf([grupo,sessao,ident]), []) then
      value  := tbParam.FieldByName('valor').AsString
    else
      gravar := true;
  end;
  if (gravar) then
  begin
    if not tbParam.Locate('grupo;sessao;ident',VarArrayOf([grupo,sessao,ident]),[]) then
    begin
      tbParam.Append;
      tbParam.FieldByName('grupo').AsString  := grupo;
      tbParam.FieldByName('sessao').AsString := sessao;
      tbParam.FieldByName('ident').AsString  := ident;
      tbParam.FieldByName('valor').AsString  := value;
      tbParam.FieldByName('data').AsDateTime := now;
      tbParam.FieldByName('tipo').AsString   := tipo;
      tbParam.Post;
    end
    else
    if tbParam.FieldByName('valor').AsString <> value then
    begin
      tbParam.Edit;
      tbParam.FieldByName('valor').AsString := value;
      tbParam.FieldByName('data').AsDateTime:= now;
      tbParam.FieldByName('tipo').AsString  := tipo;
      tbParam.Post;
    end;
  end;
  Result := value;
end;

procedure TMyConfig.ReadFiles(ts: TStrings);
begin
  if Assigned(ts) then
  begin
    ts.Clear;
    qu.Close;
    try
      qu.SQL.Clear;
      qu.SQL.Append('select distinct GRUPO from param');
      //qu.Prepare;
      qu.Open;
      qu.First;
      while not qu.Eof do
      begin
        ts.Append(qu.fieldbyname('grupo').AsString);
        qu.Next;
      end;
    finally
      qu.Close;
    end;
  end;
end;

procedure TMyConfig.ReadSections(ts: tstrings);
begin
  ts.Clear;
  qu.Close;
  try
    qu.SQL.Clear;
    qu.SQL.Append('select distinct SESSAO from param where grupo=' + QuotedStr(grupo));
//    qu.Prepare;
    qu.Open;
    qu.First;
    while not qu.Eof do
    begin
      ts.Append(qu.fieldbyname('sessao').AsString);
      qu.Next;
    end;
  finally
    qu.Close;
  end;
end;

function TMyConfig.SectionExists(section: string): boolean;
begin
  qu.Close;
  try
    qu.SQL.Clear;
    qu.SQL.Append('select distinct SESSAO from param where SESSAO=' + QuotedStr(section));
    //qu.Prepared;
    qu.Open;
    Result := not qu.IsEmpty;
  finally
    qu.Close;
  end;
end;

{ TMyConfigFILE }

destructor TMyConfigFILE.Done;
begin

  inherited;
end;

procedure TMyConfigFILE.EraseSection(section: string);
begin
  inifile.EraseSection(section);
end;

function TMyConfigFILE.iniBool(ler, gravar: boolean; sessao, ident: string;
  value: boolean): boolean;
begin
  if ler then
    value := iniFile.ReadBool(sessao,ident,value);
  if gravar or forcagravar then
    iniFile.WriteBool(sessao,ident,value);
  Result := value;
end;

function TMyConfigFILE.iniDate(ler, gravar: boolean; sessao, ident: string;
  value: TDateTime): TDateTime;
var
  par : string;
begin
  if (value>0) then
    par := DateToString(value)
  else
    par := '';
  par := iniString(ler,gravar,sessao,ident,par);
  Result := stringToDate(par);
end;

function TMyConfigFILE.iniFloat(ler, gravar: boolean; sessao, ident: string;
  value: Extended): extended;
var
  valor : string;
  code : integer;
begin
  if ler then
  begin
    valor := iniFile.ReadString(sessao,ident,Valor);
    Val(valor,value,code);
  end;
  if gravar or forcagravar then
  begin
    Str(value:0:5,Valor);
    iniFile.WriteString(sessao,ident,Valor);
  end;
  Result := value;
end;

function TMyConfigFILE.iniInteger(ler, gravar: boolean; sessao, ident: string;
  value: Integer): integer;
begin
  if ler then
    value := iniFile.ReadInteger(sessao,ident,value);
  if gravar or forcagravar then
    iniFile.WriteInteger(sessao,ident,value);
  Result := value;
end;

function TMyConfigFILE.iniString(ler, gravar: boolean; sessao, ident,
  value: string): string;
begin
  if ler then
    value := iniFile.ReadString(sessao,ident,value);
  if gravar or forcagravar then
    iniFile.WriteString(sessao,ident,value);
  Result := value;
end;

constructor TMyConfigFILE.Init(parGrupo, parDBName: string);
begin
  {$IFDEF TESTE}
  INFORMATION('INIT '+PARGRUPO);
  {$ENDIF}

  grupo := parGrupo;
  dbName:= parDBName;
  forcagravar := not fileexists(grupo);
  tipoConfig := tipoconfigFILE;
  iniFile := tIniFile.Create(grupo);
end;

procedure TMyConfigFILE.ReadFiles(ts: TStrings);
begin
  if Assigned(ts) then
  begin
    ts.Clear;
    BuildFileList(strAddSlash(extractfilepath(grupo))+'*.INI', faAnyFile, ts);
  end;
end;

procedure TMyConfigFILE.ReadSections(ts: tstrings);
begin
  inifile.ReadSections(ts);
end;

function TMyConfigFILE.SectionExists(section: string): boolean;
begin
  Result := inifile.SectionExists(section);
end;

{ TMyConfigParamFB }

procedure TMyConfigParamFB.Close(gravar: boolean);
begin
  inherited;
  if cds.Active and (cds.ChangeCount>0) then
  begin
    if gravar then
      cds.ApplyUpdates(0)
    else
      cds.CancelUpdates;
  end;
  cds.Close;
end;

destructor TMyConfigParamFB.Done;
begin
  cds.Close;
  grupo := '';
  tipoconfig := 0;
  inherited;
end;

procedure TMyConfigParamFB.EraseSection(section: string);
begin
  while cds.Locate('grupo;sessao', varArrayOf([grupo,section]),[]) and (not cds.Eof) do
  begin
    cds.Delete;
  end;
  if cds.ChangeCount > 0 then
    cds.ApplyUpdates(0)
end;

function TMyConfigParamFB.iniBool(ler, gravar: boolean; sessao, ident: string;
  value: boolean): boolean;
var
  par : string;
begin
  if value=true then
    par := '1'
  else
    par := '0';

  par := processar(ler,gravar,sessao,ident,par,'B');
  Result := (par<>'0') and (par>'')
end;

function TMyConfigParamFB.iniDate(ler, gravar: boolean; sessao, ident: string;
  value: TDateTime): TDateTime;
var
  par : string;
  d   : TDateTime;
begin
  if (value>0) then
    par := DateToString(value)
  else
    par := '';
  par := processar(ler,gravar,sessao,ident,par,'D');
  Result := stringToDate(par);
end;

function TMyConfigParamFB.iniFloat(ler, gravar: boolean; sessao, ident: string;
  value: extended): extended;
var
  err : integer;
  par : string;
  f   : extended;
begin
  str(value:0:5, par);
  par := processar(ler,gravar,sessao,ident,par,'F');
  val(par,f,err);
  if err > 0 then
  begin
    str(f:0:5, par);
    par := processar(false,true,sessao,ident,par,'F');
    val(par,f,err);
  end;
  Result := f;
end;

function TMyConfigParamFB.iniInteger(ler, gravar: boolean; sessao,
  ident: string; value: integer): integer;
var
  err : integer;
  par : string;
  i   : integer;
begin
  str(value, par);
  par := processar(ler,gravar,sessao,ident,par,'I');
  val(par,i,err);
  if err > 0 then
  begin
    str(i, par);
    par := processar(false,true,sessao,ident,par,'I');
    val(par,i,err);
  end;
  Result := i;
end;

function TMyConfigParamFB.iniString(ler, gravar: boolean; sessao, ident,
  value: string): string;
begin
  Result := processar(ler,gravar,sessao,ident,value,'S');
end;

constructor TMyConfigParamFB.InitFB(parGrupo: string; parCds: TClientDataSet);
begin
  {$IFDEF TESTE}
  INFORMATION('INIT '+PARGRUPO);
  {$ENDIF}

  grupo := strUpper(parGrupo);

  cds := parCDS;
  cds.Close;
  cds.Params.ParamByName('GRUPO').AsString := grupo;

 {if not tbParam.Exists then
    CreateParam;}

  cds.Open;
  tipoConfig := tipoconfigPARAM;
end;

procedure TMyConfigParamFB.Open;
begin
  inherited;
  cds.Close;
  cds.Params.ParamByName('GRUPO').AsString := grupo;
  cds.Open;
end;

function TMyConfigParamFB.Processar(ler, gravar: boolean; sessao, ident,
  value: string; tipo: char): string;
begin
  sessao := strUpper(strTrim(sessao));

  if not cds.Active then
    Open;

  {cds.Close;
  cds.Params.ParamByName('GRUPO').AsString := grupo;
  cds.Open;}

  if (ler) then
  begin
    if cds.FindKey( [grupo,sessao,ident] )  then
      value  := cds.fieldByName('VALOR').AsString
    else
      gravar := true;
  end;

  if (gravar) then
  begin
    if not cds.FindKey([grupo,sessao,ident]) then
    begin
      cds.Append;
      cds.FieldByName('GRUPO').AsString  := grupo;
      cds.FieldByName('SESSAO').AsString := sessao;
      cds.FieldByName('IDENT').AsString  := ident;
      cds.FieldByName('VALOR').AsString  := value;
      cds.FieldByName('DATA').AsDateTime := now;
      cds.FieldByName('TIPO').AsString   := tipo;
      cds.Post;
    end else
    if cds.FieldByName('VALOR').AsString <> value then
    begin
      cds.Edit;
      cds.FieldByName('VALOR').AsString := value;
      cds.FieldByName('DATA').AsDateTime:= now;
      cds.FieldByName('TIPO').AsString  := tipo;
      cds.Post;
    end;
  end;

  try
    if cds.ChangeCount > 0 then
      cds.ApplyUpdates(0);
  except
    //Alertar('Erro no ApplyUpdates');
  end;

//  cds.RefreshRecord;
  Result := value;
end;

procedure TMyConfigParamFB.ReadSections(ts: TStrings);
var
  ant : string;
begin
  ts.Clear;
  cds.First;
  ant := '';
  while not cds.eof do
  begin
    if ant <> cds.fieldbyname('sessao').AsString then
    begin
      ant := cds.fieldbyname('sessao').AsString;
      ts.Append(ant);
    end;
    cds.Next;
  end;
end;

function TMyConfigParamFB.SectionExists(section: string): boolean;
begin
  Result := cds.Locate('grupo;sessao', varArrayOf([grupo,section]),[])
end;

{ TMyConfigRoot }

procedure TMyConfigRoot.Close(gravar: boolean);
begin

end;

procedure TMyConfigRoot.Open;
begin

end;

end.
