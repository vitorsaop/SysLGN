inherited fmCadFuncoes: TfmCadFuncoes
  Caption = 'Cadastro de Fun'#231#245'es'
  ClientHeight = 190
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 7
    Top = 14
    Width = 51
    Height = 13
    Caption = 'id_func'#227'o:'
    FocusControl = editID_Funcao
  end
  object Label2: TLabel [1]
    Left = 7
    Top = 40
    Width = 30
    Height = 13
    Caption = 'nome:'
    FocusControl = editNome
  end
  object Label3: TLabel [2]
    Left = 7
    Top = 134
    Width = 21
    Height = 13
    Caption = 'obs:'
  end
  inherited pn: TPanel
    Top = 156
    ExplicitTop = 156
  end
  object editID_Funcao: TDBEdit [5]
    Left = 62
    Top = 6
    Width = 96
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_FUNCAO'
    DataSource = dsFuncoes
    TabOrder = 5
  end
  object editNome: TDBEdit [6]
    Left = 62
    Top = 32
    Width = 524
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsFuncoes
    TabOrder = 4
  end
  object memoOBS: TDBMemo [7]
    Left = 62
    Top = 59
    Width = 524
    Height = 89
    Ctl3D = False
    DataField = 'OBS'
    DataSource = dsFuncoes
    ParentCtl3D = False
    TabOrder = 3
  end
  inherited act: TActionList
    Left = 248
    Top = 109
  end
  object quFuncoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_funcoes')
    SQLConnection = dmLGN.dbLGN
    Left = 432
    object quFuncoesAI: TIntegerField
      FieldName = 'AI'
    end
    object quFuncoesID_FUNCAO: TStringField
      FieldName = 'ID_FUNCAO'
    end
    object quFuncoesNOME: TStringField
      FieldName = 'NOME'
    end
    object quFuncoesOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object quFuncoesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quFuncoesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvFuncoes: TDataSetProvider
    DataSet = quFuncoes
    Left = 432
    Top = 48
  end
  object cdsFuncoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvFuncoes'
    Left = 432
    Top = 96
    object cdsFuncoesAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsFuncoesID_FUNCAO: TStringField
      DisplayLabel = 'id_func'#227'o:'
      FieldName = 'ID_FUNCAO'
    end
    object cdsFuncoesNOME: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
    end
    object cdsFuncoesOBS: TStringField
      DisplayLabel = 'obs:'
      FieldName = 'OBS'
      Size = 50
    end
    object cdsFuncoesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsFuncoesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsFuncoes: TDataSource
    AutoEdit = False
    DataSet = cdsFuncoes
    Left = 432
    Top = 144
  end
end
