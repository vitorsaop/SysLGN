inherited fmPesquisarCadGeral: TfmPesquisarCadGeral
  Caption = 'Pesquisar Cadastros'
  ExplicitWidth = 692
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Left = 6
      ExplicitLeft = 6
    end
    inherited Label2: TLabel
      Left = 343
      Visible = True
      ExplicitLeft = 343
    end
    inherited editPesquisar: TEdit
      Left = 56
      Width = 285
      ExplicitLeft = 56
      ExplicitWidth = 285
    end
    inherited btnPesquisar: TBitBtn
      Left = 461
      ExplicitLeft = 461
    end
    inherited btnSelecionar: TBitBtn
      Left = 535
      ExplicitLeft = 535
    end
    inherited btnSair: TBitBtn
      Left = 609
      ExplicitLeft = 609
    end
    inherited cbStatus: TcxComboBox
      Left = 376
      Visible = True
      ExplicitLeft = 376
    end
  end
  inherited dbGridBasePesquisa: TcxGrid
    inherited dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      OptionsData.Inserting = False
      object dbGridBasePesquisaDBTableView1id_cadgeral: TcxGridDBColumn
        DataBinding.FieldName = 'id_cadgeral'
      end
      object dbGridBasePesquisaDBTableView1nome: TcxGridDBColumn
        DataBinding.FieldName = 'nome'
      end
      object dbGridBasePesquisaDBTableView1cpf: TcxGridDBColumn
        DataBinding.FieldName = 'cpf'
        Visible = False
      end
      object dbGridBasePesquisaDBTableView1rg: TcxGridDBColumn
        DataBinding.FieldName = 'rg'
        Visible = False
      end
      object dbGridBasePesquisaDBTableView1id_usp: TcxGridDBColumn
        DataBinding.FieldName = 'id_usp'
        Visible = False
      end
      object dbGridBasePesquisaDBTableView1flagdocente: TcxGridDBColumn
        DataBinding.FieldName = 'flagdocente'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.FullFocusRect = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object dbGridBasePesquisaDBTableView1flagfuncionario: TcxGridDBColumn
        DataBinding.FieldName = 'flagfuncionario'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object dbGridBasePesquisaDBTableView1flagoutros: TcxGridDBColumn
        DataBinding.FieldName = 'flagoutros'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object dbGridBasePesquisaDBTableView1flagaluno: TcxGridDBColumn
        Caption = 'aluno:'
        DataBinding.FieldName = 'flagaluno'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
    end
  end
  inherited ds: TDataSource
    DataSet = cdsCadGeral
    Left = 40
    Top = 216
  end
  object quCadGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pBUSCAR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      
        '   ai, id_cadgeral, nome, cpf, rg, id_usp, flagdocente, flagfunc' +
        'ionario, flagoutros, flagaluno, status'
      'from '
      '  cad_geral'
      'where '
      '   (nome like :pbuscar) ')
    SQLConnection = dmLGN.dbLGN
    Left = 40
    Top = 72
    object quCadGeralai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object quCadGeralid_cadgeral: TStringField
      DisplayLabel = 'id_cadastro:'
      FieldName = 'id_cadgeral'
    end
    object quCadGeralnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object quCadGeralcpf: TStringField
      FieldName = 'cpf'
    end
    object quCadGeralrg: TStringField
      FieldName = 'rg'
    end
    object quCadGeralid_usp: TStringField
      FieldName = 'id_usp'
    end
    object quCadGeralflagdocente: TIntegerField
      FieldName = 'flagdocente'
    end
    object quCadGeralflagfuncionario: TIntegerField
      FieldName = 'flagfuncionario'
    end
    object quCadGeralflagoutros: TIntegerField
      FieldName = 'flagoutros'
    end
    object quCadGeralflagaluno: TIntegerField
      FieldName = 'flagaluno'
    end
  end
  object pvCadGeral: TDataSetProvider
    DataSet = quCadGeral
    Left = 40
    Top = 120
  end
  object cdsCadGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCadGeral'
    Left = 40
    Top = 168
    object cdsCadGeralai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object cdsCadGeralid_cadgeral: TStringField
      DisplayLabel = 'id_cadastro:'
      FieldName = 'id_cadgeral'
    end
    object cdsCadGeralnome: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'nome'
      Size = 60
    end
    object cdsCadGeralcpf: TStringField
      DisplayLabel = 'cpf:'
      FieldName = 'cpf'
    end
    object cdsCadGeralrg: TStringField
      DisplayLabel = 'rg:'
      FieldName = 'rg'
    end
    object cdsCadGeralid_usp: TStringField
      DisplayLabel = 'id_usp:'
      FieldName = 'id_usp'
    end
    object cdsCadGeralflagdocente: TIntegerField
      DisplayLabel = 'doc:'
      FieldName = 'flagdocente'
    end
    object cdsCadGeralflagfuncionario: TIntegerField
      DisplayLabel = 'func:'
      FieldName = 'flagfuncionario'
    end
    object cdsCadGeralflagoutros: TIntegerField
      DisplayLabel = 'outros:'
      FieldName = 'flagoutros'
    end
    object cdsCadGeralflagaluno: TIntegerField
      FieldName = 'flagaluno'
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 14155888
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FF000000FF0000FF00FF0000FF000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007F7F7F0000FF00007F7F7F00FF00FF00FF00FF0000FF000000FF00000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FF000000FF0000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clAqua
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D8E9EC00FFFFFF00FF00FF00FF00FF00FF00FF0099A8
          AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
          AC0099A8AC0099A8AC0099A8AC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clAqua
      end>
  end
end
