inherited fmPesquisarImplementos: TfmPesquisarImplementos
  Caption = 'Pesquisar de Implementos'
  OnCreate = FormCreate
  ExplicitWidth = 692
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbGridBasePesquisa: TcxGrid
    inherited dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      object dbGridBasePesquisaDBTableView1ID_IMPLEMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'ID_IMPLEMENTO'
        Width = 101
      end
      object dbGridBasePesquisaDBTableView1IMPLEMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'IMPLEMENTO'
        Width = 293
      end
      object dbGridBasePesquisaDBTableView1CUSTO: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTO'
        Width = 112
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsImplementos
    Top = 193
  end
  object pvImplementos: TDataSetProvider
    DataSet = quImplementos
    Left = 24
    Top = 96
  end
  object cdsImplementos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvImplementos'
    Left = 24
    Top = 144
    object cdsImplementosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsImplementosID_IMPLEMENTO: TStringField
      DisplayLabel = 'id_implemento'
      FieldName = 'ID_IMPLEMENTO'
      Size = 10
    end
    object cdsImplementosIMPLEMENTO: TStringField
      DisplayLabel = 'implemento'
      FieldName = 'IMPLEMENTO'
      Size = 30
    end
    object cdsImplementosCUSTO: TFMTBCDField
      DisplayLabel = 'custo un.'
      FieldName = 'CUSTO'
      Required = True
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
  end
  object quImplementos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_implementos')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 48
    object quImplementosAI: TIntegerField
      FieldName = 'AI'
    end
    object quImplementosID_IMPLEMENTO: TStringField
      FieldName = 'ID_IMPLEMENTO'
      Size = 10
    end
    object quImplementosIMPLEMENTO: TStringField
      FieldName = 'IMPLEMENTO'
      Size = 30
    end
    object quImplementosCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Required = True
      Precision = 12
      Size = 2
    end
  end
end
