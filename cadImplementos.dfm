inherited fmCadImplementos: TfmCadImplementos
  Caption = 'Cadastro de Implementos'
  ClientHeight = 430
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 14
    Width = 50
    Height = 13
    Caption = 'id_implem.'
    FocusControl = editIDImplemento
  end
  object Label2: TLabel [1]
    Left = 4
    Top = 41
    Width = 54
    Height = 13
    Caption = 'implemento'
    FocusControl = editImplemento
  end
  object Label3: TLabel [2]
    Left = 4
    Top = 68
    Width = 45
    Height = 13
    Caption = 'custo un.'
    FocusControl = editCusto
  end
  inherited pn: TPanel
    Top = 396
    ExplicitTop = 396
  end
  object editIDImplemento: TDBEdit [5]
    Left = 62
    Top = 6
    Width = 100
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'ID_IMPLEMENTO'
    DataSource = dsImplementos
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object editImplemento: TDBEdit [6]
    Left = 62
    Top = 33
    Width = 515
    Height = 21
    CharCase = ecUpperCase
    DataField = 'IMPLEMENTO'
    DataSource = dsImplementos
    TabOrder = 3
  end
  object editCusto: TDBEdit [7]
    Left = 62
    Top = 60
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CUSTO'
    DataSource = dsImplementos
    TabOrder = 4
  end
  inherited dbNav: TcxDBNavigator
    DataSource = dsImplementos
  end
  object quImplementos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_implementos')
    SQLConnection = dmLGN.dbLGN
    Left = 520
    Top = 40
    object quImplementosAI: TIntegerField
      FieldName = 'AI'
    end
    object quImplementosID_IMPLEMENTO: TStringField
      FieldName = 'ID_IMPLEMENTO'
    end
    object quImplementosIMPLEMENTO: TStringField
      FieldName = 'IMPLEMENTO'
      Size = 30
    end
    object quImplementosCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 12
      Size = 2
    end
  end
  object pvImplementos: TDataSetProvider
    DataSet = quImplementos
    Left = 520
    Top = 88
  end
  object cdsImplementos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvImplementos'
    Left = 520
    Top = 136
    object cdsImplementosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsImplementosID_IMPLEMENTO: TStringField
      FieldName = 'ID_IMPLEMENTO'
    end
    object cdsImplementosIMPLEMENTO: TStringField
      DisplayLabel = 'implemento'
      FieldName = 'IMPLEMENTO'
      Size = 30
    end
    object cdsImplementosCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
  end
  object dsImplementos: TDataSource
    AutoEdit = False
    DataSet = cdsImplementos
    Left = 520
    Top = 184
  end
end
