inherited fmPesquisarOficios: TfmPesquisarOficios
  Caption = 'Pesquisar Oficios'
  ClientWidth = 675
  OnCreate = FormCreate
  ExplicitWidth = 681
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 296
    Width = 675
    Height = 62
    ExplicitTop = 296
    ExplicitWidth = 675
    ExplicitHeight = 62
    inherited Label1: TLabel
      Top = 43
      ExplicitTop = 43
    end
    inherited editPesquisar: TEdit
      Top = 37
      Width = 374
      ExplicitTop = 37
      ExplicitWidth = 374
    end
    inherited btnPesquisar: TBitBtn
      Left = 443
      Top = 31
      ExplicitLeft = 443
      ExplicitTop = 31
    end
    inherited btnSelecionar: TBitBtn
      Left = 517
      Top = 31
      ExplicitLeft = 517
      ExplicitTop = 31
    end
    inherited btnSair: TBitBtn
      Left = 591
      Top = 31
      ExplicitLeft = 591
      ExplicitTop = 31
    end
  end
  inherited dbGridBasePesquisa: TcxGrid
    Width = 675
    Height = 289
    ExplicitWidth = 675
    ExplicitHeight = 289
    inherited dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      object dbGridBasePesquisaDBTableView1ID_LGN: TcxGridDBColumn
        DataBinding.FieldName = 'ID_LGN'
        Width = 92
      end
      object dbGridBasePesquisaDBTableView1ASSUNTO: TcxGridDBColumn
        DataBinding.FieldName = 'ASSUNTO'
        Width = 323
      end
      object dbGridBasePesquisaDBTableView1nomeDestinatario: TcxGridDBColumn
        DataBinding.FieldName = 'nomeDestinatario'
        Width = 340
      end
      object dbGridBasePesquisaDBTableView1nomeSolicitante: TcxGridDBColumn
        Caption = 'remetente:'
        DataBinding.FieldName = 'nomeSolicitante'
        Width = 269
      end
      object dbGridBasePesquisaDBTableView1DATAOFICIO: TcxGridDBColumn
        DataBinding.FieldName = 'DATAOFICIO'
      end
      object dbGridBasePesquisaDBTableView1DATAINC: TcxGridDBColumn
        DataBinding.FieldName = 'DATAINC'
      end
      object dbGridBasePesquisaDBTableView1HORAINC: TcxGridDBColumn
        DataBinding.FieldName = 'HORAINC'
      end
      object dbGridBasePesquisaDBTableView1USUARIO: TcxGridDBColumn
        DataBinding.FieldName = 'USUARIO'
      end
      object dbGridBasePesquisaDBTableView1OBS: TcxGridDBColumn
        DataBinding.FieldName = 'OBS'
        Width = 1001
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsOficios
  end
  object quOficios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pBUSCAR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from oficios'
      'where '
      '   id_lgn like :pbuscar')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 64
  end
  object pvOficios: TDataSetProvider
    DataSet = quOficios
    Left = 24
    Top = 113
  end
  object cdsOficios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvOficios'
    Left = 24
    Top = 160
    object cdsOficiosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsOficiosID_LGN: TStringField
      DisplayLabel = 'num. oficio'
      FieldName = 'ID_LGN'
      Size = 10
    end
    object cdsOficiosID_DESTINATARIO: TIntegerField
      FieldName = 'ID_DESTINATARIO'
    end
    object cdsOficiosASSUNTO: TStringField
      DisplayLabel = 'assunto:'
      FieldName = 'ASSUNTO'
      Size = 100
    end
    object cdsOficiosID_SOLICITANTE: TIntegerField
      FieldName = 'ID_SOLICITANTE'
    end
    object cdsOficiosOBS: TStringField
      DisplayLabel = 'obs:'
      FieldName = 'OBS'
      Size = 200
    end
    object cdsOficiosDATAOFICIO: TDateField
      DisplayLabel = 'dt. of'#237'cio:'
      FieldName = 'DATAOFICIO'
    end
    object cdsOficiosDATAINC: TDateField
      DisplayLabel = 'dt. inclus'#227'o'
      FieldName = 'DATAINC'
    end
    object cdsOficiosHORAINC: TTimeField
      DisplayLabel = 'hr. inclus'#227'o:'
      FieldName = 'HORAINC'
    end
    object cdsOficiosUSUARIO: TStringField
      DisplayLabel = 'usu'#225'rio:'
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsOficiosnomeDestinatario: TStringField
      DisplayLabel = 'destinat'#225'rio:'
      FieldKind = fkLookup
      FieldName = 'nomeDestinatario'
      LookupDataSet = cdsCad_Geral
      LookupKeyFields = 'AI'
      LookupResultField = 'NOME'
      KeyFields = 'ID_DESTINATARIO'
      Size = 60
      Lookup = True
    end
    object cdsOficiosnomeSolicitante: TStringField
      DisplayLabel = 'solicitante:'
      FieldKind = fkLookup
      FieldName = 'nomeSolicitante'
      LookupDataSet = cdsCad_Geral
      LookupKeyFields = 'AI'
      LookupResultField = 'NOME'
      KeyFields = 'ID_SOLICITANTE'
      Size = 60
      Lookup = True
    end
  end
  object quCad_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_geral')
    SQLConnection = dmLGN.dbLGN
    Left = 152
    Top = 64
    object quCad_GeralAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quCad_GeralNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object pvCad_Geral: TDataSetProvider
    DataSet = quCad_Geral
    Left = 152
    Top = 112
  end
  object cdsCad_Geral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCad_Geral'
    Left = 152
    Top = 160
    object cdsCad_GeralAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCad_GeralNOME: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsCad_Geral: TDataSource
    DataSet = cdsCad_Geral
    Left = 152
    Top = 208
  end
end
