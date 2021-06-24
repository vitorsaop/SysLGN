object dmLGN: TdmLGN
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 137
  Width = 364
  object dbLGN: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=127.0.0.1'
      'Database=lgn'
      'User_Name=root'
      'Password='
      'Compressed=True'
      'ConnectTimeout=60')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 112
    Top = 56
  end
  object UCDBXConn1: TUCDBXConn
    Connection = dbLGN
    Left = 176
    Top = 56
  end
end
