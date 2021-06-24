inherited fmPesquisarAtividades: TfmPesquisarAtividades
  Caption = 'Pesquisar Atividades'
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
      object dbGridBasePesquisaDBTableView1ID_ATIVIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'ID_ATIVIDADE'
      end
      object dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
      end
      object dbGridBasePesquisaDBTableView1TIPO: TcxGridDBColumn
        Caption = 'tipo de atividade.'
        DataBinding.FieldName = 'TIPO'
      end
    end
    inherited dbGridBasePesquisaLevel1: TcxGridLevel
      Caption = 'Teste'
    end
  end
  inherited ds: TDataSource
    DataSet = cdsAtividades
    Left = 40
    Top = 224
  end
  object quAtividades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_atividades')
    SQLConnection = dmLGN.dbLGN
    Left = 40
    Top = 56
    object quAtividadesAI: TIntegerField
      FieldName = 'AI'
      Required = True
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
  end
  object pvAtividades: TDataSetProvider
    DataSet = quAtividades
    Left = 40
    Top = 112
  end
  object cdsAtividades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAtividades'
    Left = 40
    Top = 168
    object cdsAtividadesAI: TIntegerField
      DisplayLabel = 'c'#243'digo:'
      FieldName = 'AI'
      Required = True
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
  end
end
