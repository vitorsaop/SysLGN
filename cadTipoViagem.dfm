inherited fmCadTipoViagem: TfmCadTipoViagem
  Caption = 'Tipo de Viagens'
  ClientHeight = 124
  ExplicitHeight = 149
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 14
    Width = 36
    Height = 13
    Caption = 'id_tipo:'
    FocusControl = editId_Tipo
  end
  object Label2: TLabel [1]
    Left = 4
    Top = 41
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = editNome
  end
  object Label3: TLabel [2]
    Left = 4
    Top = 67
    Width = 42
    Height = 13
    Caption = 'custo km'
    FocusControl = editCustoKM
  end
  inherited pn: TPanel
    Top = 90
    ExplicitTop = 90
  end
  object editId_Tipo: TDBEdit [5]
    Left = 52
    Top = 6
    Width = 108
    Height = 19
    Color = 10549500
    Ctl3D = False
    DataField = 'ID_TIPOVIAGEM'
    DataSource = dsTipoViagem
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object editNome: TDBEdit [6]
    Left = 52
    Top = 33
    Width = 515
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsTipoViagem
    TabOrder = 3
  end
  object editCustoKM: TDBEdit [7]
    Left = 52
    Top = 59
    Width = 173
    Height = 21
    DataField = 'CUSTOKM'
    DataSource = dsTipoViagem
    TabOrder = 4
  end
  inherited dbNav: TcxDBNavigator
    DataSource = dsTipoViagem
  end
  inherited act: TActionList
    Left = 336
    Top = 53
  end
  object quTipoViagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_tipoviagem')
    SQLConnection = dmLGN.dbLGN
    Left = 400
    Top = 8
    object quTipoViagemAI: TIntegerField
      FieldName = 'AI'
    end
    object quTipoViagemID_TIPOVIAGEM: TStringField
      FieldName = 'ID_TIPOVIAGEM'
      Size = 10
    end
    object quTipoViagemNOME: TStringField
      FieldName = 'NOME'
    end
    object quTipoViagemCUSTOKM: TFMTBCDField
      FieldName = 'CUSTOKM'
      Precision = 12
      Size = 2
    end
  end
  object cdsTipoViagem: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvTipoViagem'
    Left = 456
    Top = 8
    object cdsTipoViagemAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsTipoViagemID_TIPOVIAGEM: TStringField
      DisplayLabel = 'id_tipo viagem:'
      FieldName = 'ID_TIPOVIAGEM'
      Size = 10
    end
    object cdsTipoViagemNOME: TStringField
      DisplayLabel = 'nome'
      FieldName = 'NOME'
    end
    object cdsTipoViagemCUSTOKM: TFMTBCDField
      DisplayLabel = 'custo km'
      FieldName = 'CUSTOKM'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
  end
  object pvTipoViagem: TDataSetProvider
    DataSet = quTipoViagem
    Left = 400
    Top = 56
  end
  object dsTipoViagem: TDataSource
    AutoEdit = False
    DataSet = cdsTipoViagem
    Left = 456
    Top = 56
  end
end
