inherited fmPesquisarAlunos: TfmPesquisarAlunos
  Caption = 'Pesquisar Alunos'
  ClientHeight = 355
  ClientWidth = 697
  OnCreate = FormCreate
  ExplicitWidth = 703
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 318
    Width = 697
    ExplicitTop = 318
    ExplicitWidth = 697
  end
  inherited dbGridBasePesquisa: TcxGrid
    Width = 697
    LevelTabs.Style = 8
    ExplicitWidth = 697
    inherited dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      OptionsData.Inserting = False
      object dbGridBasePesquisaDBTableView1id_aluno: TcxGridDBColumn
        DataBinding.FieldName = 'id_aluno'
      end
      object dbGridBasePesquisaDBTableView1nome: TcxGridDBColumn
        DataBinding.FieldName = 'nome'
        Width = 332
      end
      object dbGridBasePesquisaDBTableView1cpf: TcxGridDBColumn
        DataBinding.FieldName = 'cpf'
      end
      object dbGridBasePesquisaDBTableView1rg: TcxGridDBColumn
        DataBinding.FieldName = 'rg'
      end
      object dbGridBasePesquisaDBTableView1id_usp: TcxGridDBColumn
        DataBinding.FieldName = 'id_usp'
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsAlunos
    Left = 32
    Top = 224
  end
  object quAlunos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pBUSCAR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '   ai, id_aluno, nome, cpf, rg, id_usp'
      'FROM '
      '  cad_alunos'
      'WHERE '
      '   nome LIKE :pBUSCAR')
    SQLConnection = dmLGN.dbLGN
    Left = 32
    Top = 80
    object quAlunosai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object quAlunosid_aluno: TStringField
      FieldName = 'id_aluno'
      Size = 10
    end
    object quAlunosnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object quAlunoscpf: TStringField
      FieldName = 'cpf'
    end
    object quAlunosrg: TStringField
      FieldName = 'rg'
    end
    object quAlunosid_usp: TStringField
      FieldName = 'id_usp'
    end
  end
  object pvAlunos: TDataSetProvider
    DataSet = quAlunos
    Left = 32
    Top = 128
  end
  object cdsAlunos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAlunos'
    Left = 32
    Top = 176
    object cdsAlunosai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object cdsAlunosid_aluno: TStringField
      DisplayLabel = 'id_aluno:'
      FieldName = 'id_aluno'
      Size = 10
    end
    object cdsAlunosnome: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'nome'
      Size = 60
    end
    object cdsAlunoscpf: TStringField
      DisplayLabel = 'cpf:'
      FieldName = 'cpf'
    end
    object cdsAlunosrg: TStringField
      DisplayLabel = 'rg:'
      FieldName = 'rg'
    end
    object cdsAlunosid_usp: TStringField
      DisplayLabel = 'id_usp:'
      FieldName = 'id_usp'
    end
  end
end
