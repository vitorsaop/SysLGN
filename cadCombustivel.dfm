inherited fmCadCombustivel: TfmCadCombustivel
  Caption = 'Combustivel'
  ClientHeight = 446
  ClientWidth = 822
  ExplicitWidth = 828
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 5
    Top = 14
    Width = 43
    Height = 13
    Caption = 'id_comb.'
    FocusControl = editId_Combustivel
  end
  object Label4: TLabel [1]
    Left = 5
    Top = 41
    Width = 29
    Height = 13
    Caption = 'comb.'
    FocusControl = editCombustivel
  end
  inherited pn: TPanel
    Top = 412
    Width = 822
    ExplicitTop = 412
    ExplicitWidth = 822
  end
  inherited btnNovo: TBitBtn
    Left = 161
    Width = 90
    ExplicitLeft = 161
    ExplicitWidth = 90
  end
  object pc: TcxPageControl [4]
    Left = 0
    Top = 90
    Width = 822
    Height = 322
    ActivePage = tsHistoricoCustos
    Align = alBottom
    TabOrder = 5
    ClientRectBottom = 322
    ClientRectRight = 822
    ClientRectTop = 24
    object tsHistoricoCustos: TcxTabSheet
      Caption = 'Hist'#243'rico de Custos'
      ImageIndex = 1
      object dbGridHistoricoCustos: TcxGrid
        Left = 0
        Top = 0
        Width = 822
        Height = 164
        Align = alTop
        TabOrder = 0
        object dbGridHistoricoCustosDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsCombustivel_Valores
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object dbGridHistoricoCustosDBTableView1AI: TcxGridDBColumn
            DataBinding.FieldName = 'AI'
            Visible = False
          end
          object dbGridHistoricoCustosDBTableView1ID_COMBUSTIVEL: TcxGridDBColumn
            DataBinding.FieldName = 'ID_COMBUSTIVEL'
            Visible = False
          end
          object dbGridHistoricoCustosDBTableView1CUSTO: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTO'
            Width = 133
          end
          object dbGridHistoricoCustosDBTableView1DATACUSTO: TcxGridDBColumn
            DataBinding.FieldName = 'DATACUSTO'
            Width = 161
          end
          object dbGridHistoricoCustosDBTableView1STATUS: TcxGridDBColumn
            Caption = 'status (vigente)'
            DataBinding.FieldName = 'STATUS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 98
          end
        end
        object dbGridHistoricoCustosLevel1: TcxGridLevel
          GridView = dbGridHistoricoCustosDBTableView1
        end
      end
      object gbCustoCombustivel: TcxGroupBox
        Left = 5
        Top = 170
        Caption = 'lancto. custo combustivel.'
        TabOrder = 1
        Height = 122
        Width = 600
        object Label2: TLabel
          Left = 18
          Top = 62
          Width = 70
          Height = 13
          Caption = 'data do custo.'
        end
        object Label1: TLabel
          Left = 15
          Top = 37
          Width = 74
          Height = 13
          Caption = 'custo un. (litro)'
          FocusControl = editCusto
        end
        object btnIncluirCustoCombustivel: TBitBtn
          Left = 446
          Top = 81
          Width = 65
          Height = 25
          Caption = 'Incluir'
          DoubleBuffered = True
          Enabled = False
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = btnIncluirCustoCombustivelClick
        end
        object btnGravarCustoCombustivel: TBitBtn
          Left = 510
          Top = 81
          Width = 65
          Height = 25
          Caption = 'Gravar'
          DoubleBuffered = True
          Enabled = False
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btnGravarCustoCombustivelClick
        end
        object editDataCusto: TcxDBDateEdit
          Left = 95
          Top = 54
          DataBinding.DataField = 'DATACUSTO'
          DataBinding.DataSource = dsCombustivel_Valores
          TabOrder = 2
          Width = 121
        end
        object editCusto: TDBEdit
          Left = 95
          Top = 29
          Width = 121
          Height = 21
          DataField = 'CUSTO'
          DataSource = dsCombustivel_Valores
          TabOrder = 3
        end
      end
    end
  end
  object editId_Combustivel: TDBEdit [5]
    Left = 51
    Top = 8
    Width = 105
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'ID_COMBUSTIVEL'
    DataSource = dsCombustivel
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object editCombustivel: TDBEdit [6]
    Left = 51
    Top = 33
    Width = 529
    Height = 21
    CharCase = ecUpperCase
    DataField = 'COMBUSTIVEL'
    DataSource = dsCombustivel
    TabOrder = 4
  end
  inherited dbNav: TcxDBNavigator
    DataSource = dsCombustivel
  end
  inherited act: TActionList
    Left = 288
    Top = 93
  end
  object quCombustivel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_combustivel')
    SQLConnection = dmLGN.dbLGN
    Left = 640
    Top = 24
    object quCombustivelAI: TIntegerField
      FieldName = 'AI'
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
    Left = 640
    Top = 72
  end
  object cdsCombustivel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCombustivel'
    Left = 640
    Top = 120
    object cdsCombustivelAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsCombustivelID_COMBUSTIVEL: TStringField
      DisplayLabel = 'id_comb.'
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
    OnDataChange = dsCombustivelDataChange
    Left = 640
    Top = 168
  end
  object quCombustivel_Valores: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '   * '
      'from '
      '   combustivel_valores'
      'where'
      '    id_combustivel = :ai'
      'order by'
      '    status')
    SQLConnection = dmLGN.dbLGN
    Left = 680
    Top = 24
    object quCombustivel_ValoresAI: TIntegerField
      FieldName = 'AI'
    end
    object quCombustivel_ValoresID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object quCombustivel_ValoresCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 12
      Size = 2
    end
    object quCombustivel_ValoresDATACUSTO: TDateField
      FieldName = 'DATACUSTO'
    end
    object quCombustivel_ValoresSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object pvCombustivel_Valores: TDataSetProvider
    DataSet = quCombustivel_Valores
    Left = 680
    Top = 72
  end
  object cdsCombustivel_Valores: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_COMBUSTIVEL'
    MasterFields = 'AI'
    MasterSource = dsCombustivel
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvCombustivel_Valores'
    OnFilterRecord = cdsCombustivel_ValoresFilterRecord
    Left = 680
    Top = 120
    object cdsCombustivel_ValoresAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsCombustivel_ValoresID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object cdsCombustivel_ValoresCUSTO: TFMTBCDField
      DisplayLabel = 'custo un. (litro)'
      FieldName = 'CUSTO'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsCombustivel_ValoresDATACUSTO: TDateField
      DisplayLabel = 'data do custo.'
      FieldName = 'DATACUSTO'
    end
    object cdsCombustivel_ValoresSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object dsCombustivel_Valores: TDataSource
    AutoEdit = False
    DataSet = cdsCombustivel_Valores
    OnDataChange = dsCombustivel_ValoresDataChange
    Left = 680
    Top = 168
  end
end
