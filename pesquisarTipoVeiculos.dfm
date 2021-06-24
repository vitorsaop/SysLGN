inherited fmPesquisarTipoVeiculos: TfmPesquisarTipoVeiculos
  Caption = 'Pesquisar Tipo de Ve'#237'culos'
  OnCreate = FormCreate
  ExplicitWidth = 692
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbGridBasePesquisa: TcxGrid
    inherited dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      object dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn
        DataBinding.FieldName = 'AI'
        Visible = False
      end
      object dbGridBasePesquisaDBTableView1ID_TIPOVEICULO: TcxGridDBColumn
        Caption = 'id_tipo veic.'
        DataBinding.FieldName = 'ID_TIPOVEICULO'
      end
      object dbGridBasePesquisaDBTableView1TIPO: TcxGridDBColumn
        Caption = 'tipo de veic.'
        DataBinding.FieldName = 'TIPO'
      end
      object dbGridBasePesquisaDBTableView1CUSTO: TcxGridDBColumn
        Caption = 'custo'
        DataBinding.FieldName = 'CUSTO'
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsTipoVeiculos
  end
  object cdsTipoVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvTipoVeiculos'
    Left = 24
    Top = 160
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
  object pvTipoVeiculos: TDataSetProvider
    DataSet = quTipoVeiculos
    Left = 24
    Top = 112
  end
  object quTipoVeiculos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_tipoveiculos')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 64
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
end
