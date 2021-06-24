inherited fmCadAtividades: TfmCadAtividades
  Caption = 'Cadastro de Atividades'
  ClientHeight = 130
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 4
    Top = 14
    Width = 35
    Height = 13
    Caption = 'c'#243'digo:'
    FocusControl = editId_Atividade
  end
  object Label2: TLabel [1]
    Left = 4
    Top = 40
    Width = 49
    Height = 13
    Caption = 'descri'#231#227'o:'
    FocusControl = editDescricao
  end
  object Label3: TLabel [2]
    Left = 432
    Top = 40
    Width = 22
    Height = 13
    Caption = 'tipo:'
  end
  inherited pn: TPanel
    Top = 96
    ExplicitTop = 96
  end
  inherited btnNovo: TBitBtn
    Top = 3
    ExplicitTop = 3
  end
  object editId_Atividade: TDBEdit [5]
    Left = 59
    Top = 8
    Width = 100
    Height = 19
    TabStop = False
    Color = 10813439
    Ctl3D = False
    DataField = 'ID_ATIVIDADE'
    DataSource = dsAtividades
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object editDescricao: TDBEdit [6]
    Left = 59
    Top = 32
    Width = 364
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsAtividades
    TabOrder = 4
  end
  object cbTipo: TDBComboBox [7]
    Left = 457
    Top = 32
    Width = 131
    Height = 21
    Style = csDropDownList
    DataField = 'TIPO'
    DataSource = dsAtividades
    Items.Strings = (
      'Est'#225'gio'
      'Doutorado'
      'P'#243's Doutorado'
      'Pr'#225'tica Profissionalizante')
    TabOrder = 3
  end
  inherited dbNav: TcxDBNavigator
    DataSource = dsAtividades
  end
  inherited act: TActionList
    Left = 328
    Top = 39
  end
  object dsAtividades: TDataSource
    AutoEdit = False
    DataSet = cdsAtividades
    OnDataChange = dsAtividadesDataChange
    Left = 294
    Top = 39
  end
  object cdsAtividades: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvAtividades'
    Left = 262
    Top = 39
    object cdsAtividadesAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAtividadesID_ATIVIDADE: TStringField
      DisplayLabel = 'c'#243'digo:'
      FieldName = 'ID_ATIVIDADE'
      Size = 10
    end
    object cdsAtividadesNOME: TStringField
      DisplayLabel = 'descri'#231#227'o:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAtividadesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object cdsAtividadesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsAtividadesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAtividadesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvAtividades: TDataSetProvider
    DataSet = quAtividades
    Left = 230
    Top = 39
  end
  object quAtividades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_atividades')
    SQLConnection = dmLGN.dbLGN
    Left = 198
    Top = 39
    object quAtividadesAI: TIntegerField
      FieldName = 'AI'
    end
    object quAtividadesID_ATIVIDADE: TStringField
      FieldName = 'ID_ATIVIDADE'
      Size = 10
    end
    object quAtividadesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object quAtividadesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object quAtividadesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAtividadesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quAtividadesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
end
