inherited fmPesquisarVeiculos: TfmPesquisarVeiculos
  Caption = 'Pesquisar Veiculos'
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
      object dbGridBasePesquisaDBTableView1ID_VEICULO: TcxGridDBColumn
        DataBinding.FieldName = 'ID_VEICULO'
        Width = 127
      end
      object dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Width = 396
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsCad_Veiculos
  end
  object quCad_Veiculos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_veiculos')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 51
    object quCad_VeiculosAI: TIntegerField
      FieldName = 'AI'
    end
    object quCad_VeiculosID_VEICULO: TStringField
      FieldName = 'ID_VEICULO'
    end
    object quCad_VeiculosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object pvCad_Veiculos: TDataSetProvider
    DataSet = quCad_Veiculos
    Left = 23
    Top = 100
  end
  object cdsCad_Veiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCad_Veiculos'
    Left = 23
    Top = 148
    object cdsCad_VeiculosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsCad_VeiculosID_VEICULO: TStringField
      DisplayLabel = 'id_veiculo'
      FieldName = 'ID_VEICULO'
    end
    object cdsCad_VeiculosNOME: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
      Size = 30
    end
  end
end
