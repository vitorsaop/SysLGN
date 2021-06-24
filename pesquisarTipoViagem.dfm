inherited fmPesquisarTipoViagem: TfmPesquisarTipoViagem
  Caption = 'Pesquisar Tipo Viagens'
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
      object dbGridBasePesquisaDBTableView1ID_TIPOVIAGEM: TcxGridDBColumn
        DataBinding.FieldName = 'ID_TIPOVIAGEM'
        Width = 110
      end
      object dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Width = 351
      end
      object dbGridBasePesquisaDBTableView1CUSTOKM: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOKM'
        Width = 118
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsTipoViagem
  end
  object quTipoViagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_tipoviagem')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 56
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
  object pvTipoViagem: TDataSetProvider
    DataSet = quTipoViagem
    Left = 24
    Top = 104
  end
  object cdsTipoViagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvTipoViagem'
    Left = 24
    Top = 152
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
end
