inherited fmCadAgenciaFin: TfmCadAgenciaFin
  Caption = 'Cadastro de Ag'#234'ncia Financiadora'
  ClientHeight = 97
  ExplicitHeight = 122
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 13
    Width = 35
    Height = 13
    Caption = 'c'#243'digo:'
    FocusControl = editId_Agencia
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 39
    Width = 49
    Height = 13
    Caption = 'descri'#231#227'o:'
    FocusControl = editDescricao
  end
  inherited pn: TPanel
    Top = 63
    ExplicitTop = 63
  end
  object editId_Agencia: TDBEdit [4]
    Left = 60
    Top = 7
    Width = 100
    Height = 19
    TabStop = False
    Color = 10813439
    Ctl3D = False
    DataField = 'ID_AGENCIAFIN'
    DataSource = dsAgencia
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object editDescricao: TDBEdit [5]
    Left = 60
    Top = 31
    Width = 528
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsAgencia
    TabOrder = 4
  end
  inherited dbNav: TcxDBNavigator
    DataSource = dsAgencia
  end
  object dsAgencia: TDataSource
    AutoEdit = False
    DataSet = cdsAgencia
    Left = 164
    Top = 33
  end
  object cdsAgencia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvAgencia'
    Left = 132
    Top = 33
    object cdsAgenciaAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAgenciaID_AGENCIAFIN: TStringField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'ID_AGENCIAFIN'
      Size = 10
    end
    object cdsAgenciaNOME: TStringField
      DisplayLabel = 'Nome:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAgenciaDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAgenciaHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAgenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object pvAgencia: TDataSetProvider
    DataSet = quAgencia
    Left = 98
    Top = 34
  end
  object quAgencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_agenciafinanciadora')
    SQLConnection = dmLGN.dbLGN
    Left = 65
    Top = 34
    object quAgenciaAI: TIntegerField
      FieldName = 'AI'
    end
    object quAgenciaID_AGENCIAFIN: TStringField
      FieldName = 'ID_AGENCIAFIN'
      Size = 10
    end
    object quAgenciaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object quAgenciaDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAgenciaHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quAgenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
end
