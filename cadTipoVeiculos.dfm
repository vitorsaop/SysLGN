inherited fmCadTipoVeiculos: TfmCadTipoVeiculos
  Caption = 'Tipos de Ve'#237'culos'
  ClientHeight = 395
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 2
    Top = 14
    Width = 58
    Height = 13
    Caption = 'id_tipo veic.'
    FocusControl = editID_TipoVeiculo
  end
  object Label2: TLabel [1]
    Left = 2
    Top = 39
    Width = 22
    Height = 13
    Caption = 'tipo:'
    FocusControl = editTipo
  end
  object Label3: TLabel [2]
    Left = 3
    Top = 65
    Width = 30
    Height = 13
    Caption = 'custo:'
    FocusControl = editCusto
  end
  inherited pn: TPanel
    Top = 361
    ExplicitTop = 361
  end
  object editID_TipoVeiculo: TDBEdit [5]
    Left = 63
    Top = 7
    Width = 99
    Height = 19
    TabStop = False
    Color = 10549500
    Ctl3D = False
    DataField = 'ID_TIPOVEICULO'
    DataSource = dsTipoVeiculos
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object editTipo: TDBEdit [6]
    Left = 63
    Top = 31
    Width = 523
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TIPO'
    DataSource = dsTipoVeiculos
    TabOrder = 3
  end
  object editCusto: TDBEdit [7]
    Left = 63
    Top = 57
    Width = 191
    Height = 21
    DataField = 'CUSTO'
    DataSource = dsTipoVeiculos
    TabOrder = 4
  end
  inherited dbNav: TcxDBNavigator
    DataSource = dsTipoVeiculos
  end
  object quTipoVeiculos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_tipoveiculos')
    SQLConnection = dmLGN.dbLGN
    Left = 480
    Top = 24
    object quTipoVeiculosAI: TIntegerField
      FieldName = 'AI'
    end
    object quTipoVeiculosID_TIPOVEICULO: TStringField
      FieldName = 'ID_TIPOVEICULO'
    end
    object quTipoVeiculosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object quTipoVeiculosCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 12
      Size = 2
    end
  end
  object pvTipoVeiculos: TDataSetProvider
    DataSet = quTipoVeiculos
    Left = 480
    Top = 72
  end
  object cdsTipoVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvTipoVeiculos'
    Left = 480
    Top = 120
    object cdsTipoVeiculosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsTipoVeiculosID_TIPOVEICULO: TStringField
      FieldName = 'ID_TIPOVEICULO'
    end
    object cdsTipoVeiculosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object cdsTipoVeiculosCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
  end
  object dsTipoVeiculos: TDataSource
    AutoEdit = False
    DataSet = cdsTipoVeiculos
    Left = 480
    Top = 168
  end
end
