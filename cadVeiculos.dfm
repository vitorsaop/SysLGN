inherited fmCadVeiculos: TfmCadVeiculos
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 398
  ClientWidth = 864
  ExplicitWidth = 870
  ExplicitHeight = 423
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 2
    Top = 14
    Width = 56
    Height = 13
    Caption = 'id_veiculos:'
    FocusControl = editId_Veiculo
  end
  object Label2: TLabel [1]
    Left = 2
    Top = 41
    Width = 30
    Height = 13
    Caption = 'nome:'
    FocusControl = editNome
  end
  object Label3: TLabel [2]
    Left = 2
    Top = 68
    Width = 44
    Height = 13
    Caption = 'tipo veic:'
  end
  object Label4: TLabel [3]
    Left = 2
    Top = 92
    Width = 60
    Height = 13
    Caption = 'local de uso:'
  end
  object Label7: TLabel [4]
    Left = 381
    Top = 92
    Width = 56
    Height = 13
    Caption = 'cor padr'#227'o:'
  end
  inherited pn: TPanel
    Top = 364
    Width = 864
    ExplicitTop = 364
    ExplicitWidth = 864
  end
  object editId_Veiculo: TDBEdit [7]
    Left = 64
    Top = 8
    Width = 97
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Color = 10813439
    Ctl3D = False
    DataField = 'ID_VEICULO'
    DataSource = dsCad_Veiculos
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object editNome: TDBEdit [8]
    Left = 64
    Top = 33
    Width = 519
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsCad_Veiculos
    TabOrder = 5
  end
  object cbTipoVeiculos: TcxDBLookupComboBox [9]
    Left = 64
    Top = 60
    DataBinding.DataField = 'ID_TIPOVEICULO'
    DataBinding.DataSource = dsCad_Veiculos
    Properties.KeyFieldNames = 'AI'
    Properties.ListColumns = <
      item
        FieldName = 'TIPO'
      end>
    Properties.ListSource = dsTipoVeiculos
    TabOrder = 4
    Width = 158
  end
  inherited dbNav: TcxDBNavigator
    DataSource = dsCad_Veiculos
  end
  object pc: TcxPageControl [11]
    Left = 0
    Top = 264
    Width = 864
    Height = 100
    ActivePage = tsCombustivel
    Align = alBottom
    TabOrder = 6
    ClientRectBottom = 100
    ClientRectRight = 864
    ClientRectTop = 24
    object tsCombustivel: TcxTabSheet
      Caption = 'combust'#237'vel'
      ImageIndex = 0
      object Label5: TLabel
        Left = 7
        Top = 13
        Width = 33
        Height = 13
        Caption = 'usado:'
      end
      object Label6: TLabel
        Left = 193
        Top = 13
        Width = 107
        Height = 13
        Caption = 'autonomia (litros / km)'
        FocusControl = editAutonomia
      end
      object cbCombustivel: TcxDBLookupComboBox
        Left = 46
        Top = 5
        DataBinding.DataField = 'ID_COMBUSTIVEL'
        DataBinding.DataSource = dsCad_Veiculos
        Properties.KeyFieldNames = 'AI'
        Properties.ListColumns = <
          item
            FieldName = 'COMBUSTIVEL'
          end>
        Properties.ListSource = dsCombustivel
        TabOrder = 0
        Width = 142
      end
      object editAutonomia: TDBEdit
        Left = 304
        Top = 7
        Width = 90
        Height = 19
        CharCase = ecUpperCase
        Color = 10811839
        Ctl3D = False
        DataField = 'AUTONOMIA'
        DataSource = dsCad_Veiculos
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  object cbLocalUso: TcxDBComboBox [12]
    Left = 64
    Top = 84
    DataBinding.DataField = 'LOCAL'
    DataBinding.DataSource = dsCad_Veiculos
    Properties.Items.Strings = (
      'ESALQ'
      'ANHUMAS')
    TabOrder = 7
    Width = 158
  end
  object cxDBColorComboBox1: TcxDBColorComboBox [13]
    Left = 440
    Top = 84
    DataBinding.DataField = 'COR'
    DataBinding.DataSource = dsCad_Veiculos
    Properties.ColorValueFormat = cxcvHexadecimal
    Properties.CustomColors = <>
    TabOrder = 8
    Width = 143
  end
  inherited act: TActionList
    Left = 144
    Top = 45
  end
  object dsCad_Veiculos: TDataSource
    AutoEdit = False
    DataSet = cdsCad_Veiculos
    Left = 610
    Top = 117
  end
  object cdsCad_Veiculos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Ai'
    Params = <>
    ProviderName = 'pvCad_Veiculos'
    Left = 610
    Top = 80
    object cdsCad_VeiculosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsCad_VeiculosID_VEICULO: TStringField
      FieldName = 'ID_VEICULO'
    end
    object cdsCad_VeiculosNOME: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
      Size = 30
    end
    object cdsCad_VeiculosID_TIPOVEICULO: TIntegerField
      FieldName = 'ID_TIPOVEICULO'
    end
    object cdsCad_VeiculosID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object cdsCad_VeiculosAUTONOMIA: TFMTBCDField
      DisplayLabel = 'autonomia (litros / km)'
      FieldName = 'AUTONOMIA'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsCad_VeiculosLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
    object cdsCad_VeiculosCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
  end
  object pvCad_Veiculos: TDataSetProvider
    DataSet = quCad_Veiculos
    Left = 607
    Top = 44
  end
  object quCad_Veiculos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_veiculos')
    SQLConnection = dmLGN.dbLGN
    Left = 608
    Top = 3
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
    object quCad_VeiculosID_TIPOVEICULO: TIntegerField
      FieldName = 'ID_TIPOVEICULO'
    end
    object quCad_VeiculosID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object quCad_VeiculosAUTONOMIA: TFMTBCDField
      FieldName = 'AUTONOMIA'
      Precision = 12
      Size = 2
    end
    object quCad_VeiculosLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
    object quCad_VeiculosCOR: TStringField
      FieldName = 'COR'
      Size = 50
    end
  end
  object quTipoVeiculos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  cad_tipoveiculos')
    SQLConnection = dmLGN.dbLGN
    Left = 654
    Top = 4
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
  object pvTipoVeiculos: TDataSetProvider
    DataSet = quTipoVeiculos
    Left = 654
    Top = 37
  end
  object cdsTipoVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvTipoVeiculos'
    Left = 656
    Top = 81
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
      DisplayLabel = 'custo'
      FieldName = 'CUSTO'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
  end
  object dsTipoVeiculos: TDataSource
    AutoEdit = False
    DataSet = cdsTipoVeiculos
    Left = 656
    Top = 117
  end
  object quCombustivel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_combustivel')
    SQLConnection = dmLGN.dbLGN
    Left = 704
    Top = 4
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
    Left = 706
    Top = 40
  end
  object cdsCombustivel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCombustivel'
    Left = 707
    Top = 81
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
  object dsCombustivel: TDataSource
    AutoEdit = False
    DataSet = cdsCombustivel
    Left = 708
    Top = 118
  end
end
