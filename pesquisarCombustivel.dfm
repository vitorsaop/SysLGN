inherited fmPesquisarCombustivel: TfmPesquisarCombustivel
  Caption = 'Pesquisar Combust'#237'vel'
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
      object dbGridBasePesquisaDBTableView1ID_COMBUSTIVEL: TcxGridDBColumn
        DataBinding.FieldName = 'ID_COMBUSTIVEL'
        Width = 87
      end
      object dbGridBasePesquisaDBTableView1COMBUSTIVEL: TcxGridDBColumn
        DataBinding.FieldName = 'COMBUSTIVEL'
        Width = 445
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsCombustivel
  end
  object quCombustivel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_combustivel')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 56
    object quCombustivelAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quCombustivelID_COMBUSTIVEL: TStringField
      FieldName = 'ID_COMBUSTIVEL'
      Size = 10
    end
    object quCombustivelCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 30
    end
  end
  object pvCombustivel: TDataSetProvider
    DataSet = quCombustivel
    Left = 24
    Top = 104
  end
  object cdsCombustivel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCombustivel'
    Left = 24
    Top = 160
    object cdsCombustivelAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCombustivelID_COMBUSTIVEL: TStringField
      DisplayLabel = 'id_combustivel'
      FieldName = 'ID_COMBUSTIVEL'
      Size = 10
    end
    object cdsCombustivelCOMBUSTIVEL: TStringField
      DisplayLabel = 'combustivel'
      FieldName = 'COMBUSTIVEL'
      Size = 30
    end
  end
end
