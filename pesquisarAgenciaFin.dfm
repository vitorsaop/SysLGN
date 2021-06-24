inherited fmPesquisarAgenciaFin: TfmPesquisarAgenciaFin
  Caption = 'Pesquisar Ag'#234'ncia Financiadora'
  OnCreate = FormCreate
  ExplicitWidth = 692
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbGridBasePesquisa: TcxGrid
    inherited dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      object dbGridBasePesquisaDBTableView1ID_AGENCIAFIN: TcxGridDBColumn
        DataBinding.FieldName = 'ID_AGENCIAFIN'
        Width = 125
      end
      object dbGridBasePesquisaDBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Width = 403
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsAgencia
  end
  object quAgencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_agenciafinanciadora')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 56
    object quAgenciaAI: TIntegerField
      FieldName = 'AI'
    end
    object quAgenciaID_AGENCIAFIN: TStringField
      DisplayLabel = 'c'#243'digo'
      FieldName = 'ID_AGENCIAFIN'
      Size = 10
    end
    object quAgenciaNOME: TStringField
      DisplayLabel = 'nome'
      FieldName = 'NOME'
      Size = 50
    end
  end
  object pvAgencia: TDataSetProvider
    DataSet = quAgencia
    Left = 24
    Top = 104
  end
  object cdsAgencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAgencia'
    Left = 24
    Top = 152
    object cdsAgenciaAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAgenciaID_AGENCIAFIN: TStringField
      DisplayLabel = 'c'#243'digo'
      FieldName = 'ID_AGENCIAFIN'
      Size = 10
    end
    object cdsAgenciaNOME: TStringField
      DisplayLabel = 'nome'
      FieldName = 'NOME'
      Size = 50
    end
  end
end
