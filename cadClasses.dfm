inherited fmCadClasses: TfmCadClasses
  Caption = 'Cadastro de Classes'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 6
    Top = 14
    Width = 48
    Height = 13
    Caption = 'id_classes'
    FocusControl = editId_Classes
  end
  object Label2: TLabel [1]
    Left = 6
    Top = 40
    Width = 30
    Height = 13
    Caption = 'nome:'
    FocusControl = editNome
  end
  object Label3: TLabel [2]
    Left = 6
    Top = 135
    Width = 21
    Height = 13
    Caption = 'obs:'
  end
  object editId_Classes: TDBEdit [6]
    Left = 60
    Top = 5
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_CLASSE'
    DataSource = dsClasses
    TabOrder = 3
  end
  object editNome: TDBEdit [7]
    Left = 60
    Top = 32
    Width = 528
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsClasses
    TabOrder = 4
  end
  object memoOBS: TDBMemo [8]
    Left = 60
    Top = 59
    Width = 528
    Height = 89
    Ctl3D = False
    DataField = 'OBS'
    DataSource = dsClasses
    ParentCtl3D = False
    TabOrder = 5
  end
  object quClasses: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_classes')
    SQLConnection = dmLGN.dbLGN
    Left = 488
    Top = 104
    object quClassesAI: TIntegerField
      FieldName = 'AI'
    end
    object quClassesID_CLASSE: TStringField
      FieldName = 'ID_CLASSE'
    end
    object quClassesNOME: TStringField
      FieldName = 'NOME'
    end
    object quClassesOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object quClassesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quClassesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvClasses: TDataSetProvider
    DataSet = quClasses
    Left = 488
    Top = 152
  end
  object cdsClasses: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvClasses'
    Left = 488
    Top = 208
    object cdsClassesAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsClassesID_CLASSE: TStringField
      DisplayLabel = 'id_classes'
      FieldName = 'ID_CLASSE'
    end
    object cdsClassesNOME: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
    end
    object cdsClassesOBS: TStringField
      DisplayLabel = 'obs:'
      FieldName = 'OBS'
      Size = 100
    end
    object cdsClassesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsClassesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsClasses: TDataSource
    AutoEdit = False
    DataSet = cdsClasses
    Left = 488
    Top = 264
  end
end
