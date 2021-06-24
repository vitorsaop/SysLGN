inherited fmPesquisarCidades: TfmPesquisarCidades
  Caption = 'Pesquisar Cidades'
  OnCreate = FormCreate
  ExplicitWidth = 692
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbGridBasePesquisa: TcxGrid
    inherited dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      object dbGridBasePesquisaDBTableView1AI: TcxGridDBColumn
        DataBinding.FieldName = 'AI'
        Width = 73
      end
      object dbGridBasePesquisaDBTableView1UF: TcxGridDBColumn
        DataBinding.FieldName = 'UF'
        Width = 54
      end
      object dbGridBasePesquisaDBTableView1CIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'CIDADE'
        Width = 484
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsCidades
  end
  object quCidades: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pBUSCAR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '   *'
      'from '
      '   cad_cidades'
      'where cidade like :pbuscar')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 56
    object quCidadesAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quCidadesID_UF: TIntegerField
      FieldName = 'ID_UF'
    end
    object quCidadesUF: TStringField
      FieldName = 'UF'
      Size = 4
    end
    object quCidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
  end
  object pvCidades: TDataSetProvider
    DataSet = quCidades
    Left = 24
    Top = 104
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCidades'
    Left = 24
    Top = 152
    object cdsCidadesAI: TIntegerField
      DisplayLabel = 'id_cidade:'
      FieldName = 'AI'
      Required = True
    end
    object cdsCidadesID_UF: TIntegerField
      DisplayLabel = 'id_uf:'
      FieldName = 'ID_UF'
    end
    object cdsCidadesUF: TStringField
      DisplayLabel = 'uf:'
      FieldName = 'UF'
      Size = 4
    end
    object cdsCidadesCIDADE: TStringField
      DisplayLabel = 'cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
  end
end
