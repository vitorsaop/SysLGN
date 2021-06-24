object fmRelatorioFuncionariosDocentesAusencias: TfmRelatorioFuncionariosDocentesAusencias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Aus'#234'ncias'
  ClientHeight = 173
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Cadastro:'
  end
  object btnPesquisar: TSpeedButton
    Left = 166
    Top = 7
    Width = 26
    Height = 24
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00035A910002416A000454
      8600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0002558E002882A500533924000911
      14000B5B8800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0002558E001CBFFF003692AD00FFCF89006244
      2D000D243300FF00FF0000386C0000386C00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0002558E001BADEB001697D5003FC5FE005DBAE000DAA97600CB92
      5E00161D23000E60960000386C0000386C00033E6400FF00FF00FF00FF00FF00
      FF0002558E002BC2FE0051D4FF0041A0D00099D3EF00EDFFFF00D4D0C900836E
      580018445B0044ABDE004AADD700695A46000A0A0900013B6500046099001680
      B8005CD3FF008CDDFF00C1EDFF00D0EBF7004093B8009DCCE20072BBDD002182
      B6000C96CF0031C2FF001AA5E000C2AC8600623C230000243D00035188000255
      8E00BFE5F700F8FFFF00EEFBFF00D0F2FF0045ABD700027FB6000075AA00006F
      A5000493C9001FB7F8001EC1FF0064A5AD0072503300002A470002558E00AAD0
      E30002558E008AC5DE007ACEF40057D0FF0039CAFF001EAFED000B84C0000173
      AA000089BC000FA1DC0021BCFB00129DDD000C4B6D0000447600FF00FF000255
      8E0002558E0002558E00148AC5001498D7001CB1F20021BAFA001FB4F40017A1
      E0000774AC0000578A0006609A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00056BA50004649E00087AB5000474AF000051
      8800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    OnClick = btnPesquisarClick
  end
  object Label2: TLabel
    Left = 8
    Top = 154
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object editId_Cadastro: TEdit
    Left = 60
    Top = 8
    Width = 101
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 0
  end
  object editNomeCadastro: TEdit
    Left = 196
    Top = 8
    Width = 336
    Height = 19
    TabStop = False
    Color = 10813439
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object cbStatus: TcxComboBox
    Left = 60
    Top = 146
    TabStop = False
    Properties.Items.Strings = (
      'Ativos'
      'Inativos'
      'Ambos')
    Style.BorderStyle = ebsOffice11
    Style.ButtonTransparency = ebtNone
    TabOrder = 2
    Text = 'Ativos'
    Width = 101
  end
  object gbPeriodoAusencia: TcxGroupBox
    Left = 60
    Top = 35
    Caption = 'per'#237'odo aus'#234'ncia:'
    TabOrder = 3
    Height = 104
    Width = 236
    object Label3: TLabel
      Left = 5
      Top = 26
      Width = 46
      Height = 13
      Caption = 'aus'#234'ncia:'
    end
    object Label4: TLabel
      Left = 5
      Top = 56
      Width = 16
      Height = 13
      Caption = 'de:'
    end
    object Label5: TLabel
      Left = 117
      Top = 56
      Width = 20
      Height = 13
      Caption = 'at'#233':'
    end
    object dtAusenciaIni: TcxDateEdit
      Left = 21
      Top = 48
      TabOrder = 0
      Width = 94
    end
    object dtAusenciaFim: TcxDateEdit
      Left = 137
      Top = 48
      TabOrder = 1
      Width = 94
    end
    object cbAusencias: TComboBox
      Left = 56
      Top = 18
      Width = 175
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
      Items.Strings = (
        'F'#233'rias'
        'Abono'
        'Licen'#231'a M'#233'dica'
        'Licen'#231'a Pr'#234'mio'
        'Hora Extra'
        'Outros')
    end
  end
  object btnSair: TBitBtn
    Left = 383
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    Glyph.Data = {
      B6020000424DB602000000000000B60100002800000010000000100000000100
      08000000000000010000120B0000120B0000600000006000000000000000FFFF
      FF00FF00FF00FCD1D3004E1E1F00C54D4E00C9525300C24F5000D4585900C954
      5500CF575800CB555600D75C5D00D55C5D00D05A5B00CF595A00B74F5200B24D
      4E00B64F5000D55E5F00BD535600D75F6000DD636400C2575A00C6595B00E267
      6800DD656600DA636400E3686900DE666700EB6D6E00E96C6D00F2737400F073
      7400EE727300F7777900D1656600F0757600F6797A00F77A7B00FE7F8000FB7E
      7F00FF818200FC7F8000DA6E6F00FF828300FE818200FF838400E5767700E073
      7400E2757600FF868700FF888900CF6E7000CB6C6D00CC6E7000FE8B8C00EB81
      8200E67E7F009C565700FB9A9C00F8AAAB00F7B5B600FAD3D400A64B4B00A94D
      4D00F8787900D76B6B00CF6E6E00824B4B00FAEBC500FCEFC700FFF2CC00FCFB
      CF00FCFBD100FFFFD300FFFFD400FFFFD500FFFFD700E6FCC700A5D8970050D1
      6F0026B149002AB44D001BBB490023B54A002DC7580042C966000CBC410010BB
      430013C1480013BC450016BD480016BC48001CBF4C001EBC4C00020202020202
      0245040202020202020202020202454540410402020202020202020245451207
      05110445454545454502020245080B09061004383C3D3E3E45020202450C0E0F
      0A1404555A5C583E45020202451615130D1704535E5F5B3E45020202451C1A1B
      1D1804525D54593E45020202451E193A3F3704505157563E4502020245201F39
      033504484E4C4F3E4502020245422522212404474D4B4E3E4502020245282726
      234304474D4B4D3E45020202452F2B29282C04474D4B4D3E4502020245342D2A
      2D3104474D4B4D3E450202024545322E333004464A494A3E450202020202453B
      3644044545454545450202020202020245450402020202020202}
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnSairClick
  end
  object btnImprimir: TBitBtn
    Left = 457
    Top = 142
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF989898989898FF00FFFF00FF989898989898FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF989898BFBFBFBABABA98989898
      9898989898E1E1E1989898989898989898FF00FFFF00FFFF00FFFF00FFFF00FF
      989898DBDBDBBABABABABABABABABA727272717171999999CCCCCCDFDFDFC7C7
      C7989898989898989898FF00FF989898D7D7D7D3D3D3AEAEAEAEAEAEAEAEAE76
      7676474747454545494949454545A2A2A2CACACA989898FF00FF989898D3D3D3
      D3D3D3AEAEAED9D9D9D3D3D3CBCBCBC3C3C3BABABAAAAAAA8E8E8E4545454747
      474646469898989D9D9D989898D3D3D3AEAEAEE6E6E6EFEFEFEDEDEDDFDFDFDE
      DEDEDDDDDDD4D4D4CACACAC1C1C1ACACAC8A8A8AA1A1A19D9D9D989898AEAEAE
      EFEFEFEFEFEFEDEDEDD8D8D8B3B3B3B7B7B7C2C2C2CDCDCDDADADADBDBDBD0D0
      D0C7C7C7AFAFAF979797FF00FF989898989898E6E6E6C1C1C19E9E9EAAAAAAB2
      B2B2B1B1B1B6B6B6B4B4B4B7B7B7C9C9C9D7D7D7CECECE989898FF00FFFF00FF
      FF00FF989898A7A7A79999998A8A8A9A9A9A9696969F9F9FAEAEAEBDBDBDD3D3
      D3CDCDCD989898FF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9D3D3D3CCCCCCB8
      B8B8A7A7A79F9F9FA9A9A9A5A5A5989898989898FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFA9A9A9D5D5D5CFCFCFCBCBCBC6C6C6C3C3C3A9A9A9FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFABABABDDDDDDD8D8D8D3D3D3CE
      CECECACACAA9A9A9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFA9A9A9E0E0E0DCDCDCD7D7D7D3D3D3CDCDCDA9A9A9FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9EAEAEAEAEAEAE1E1E1DCDCDCD7
      D7D7CBCBCBA9A9A9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      A9A9A9A9A9A9A9A9A9E3E3E3DCDCDCD8D8D8A9A9A9FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA9A9A9A9A9A9A9
      A9A9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnImprimirClick
  end
  object rgFiltrar: TcxRadioGroup
    Left = 421
    Top = 30
    Caption = 'filtrar por:'
    Properties.Items = <
      item
        Caption = 'Docentes'
      end
      item
        Caption = 'Funcion'#225'rios'
      end
      item
        Caption = 'Ambos'
      end>
    ItemIndex = 2
    TabOrder = 6
    Height = 71
    Width = 105
  end
  object quAusencias: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      #9'c.ai, c.id_cadgeral, c.nome, c.rg, c.cpf, id_usp,'
      #9'fa.id_cadgeral as id, fa.tipo, fa.dataini, fa.datafim, fa.obs '
      'from '
      #9'cad_geral c'
      'inner join'
      #9'funcionarios_ausencias  fa'
      'on'
      #9'(fa.id_cadgeral = c.ai)'
      'order by '
      '                c.nome, fa.dataini')
    SQLConnection = dmLGN.dbLGN
    Left = 552
    Top = 6
    object quAusenciasAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quAusenciasID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object quAusenciasNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quAusenciasRG: TStringField
      FieldName = 'RG'
    end
    object quAusenciasCPF: TStringField
      FieldName = 'CPF'
    end
    object quAusenciasID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object quAusenciasID: TIntegerField
      FieldName = 'ID'
    end
    object quAusenciasTIPO: TStringField
      FieldName = 'TIPO'
    end
    object quAusenciasDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object quAusenciasDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object quAusenciasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object pvAusencias: TDataSetProvider
    DataSet = quAusencias
    Left = 552
    Top = 49
  end
  object cdsAusencias: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAusencias'
    Left = 552
    Top = 94
    object cdsAusenciasAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsAusenciasID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object cdsAusenciasNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAusenciasRG: TStringField
      FieldName = 'RG'
    end
    object cdsAusenciasCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsAusenciasID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object cdsAusenciasID: TIntegerField
      FieldName = 'ID'
    end
    object cdsAusenciasTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsAusenciasDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object cdsAusenciasDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object cdsAusenciasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dsAusencias: TDataSource
    DataSet = cdsAusencias
    Left = 552
    Top = 139
  end
  object frAusencias: TfrxDBDataset
    UserName = 'frAusencias'
    CloseDataSource = False
    DataSet = cdsAusencias
    BCDToCurrency = False
    Left = 600
    Top = 8
  end
  object fr: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42126.846617488400000000
    ReportOptions.LastChange = 42126.885608634260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 48
    Datasets = <
      item
        DataSet = frAusencias
        DataSetName = 'frAusencias'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 60.472480000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Condition = 'frAusencias."NOME"'
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Color = 140
          Frame.Color = 140
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 29.354360000000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Numero USP:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 186.976500000000000000
          Top = 29.574829999999990000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 370.157700000000000000
          Top = 30.354360000000010000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Id_CadGeral:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 186.976500000000000000
          Top = 3.779529999999994000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object frAusenciasID_CADGERAL: TfrxMemoView
          Left = 90.929190000000000000
          Top = 3.779529999999994000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_CADGERAL'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAusencias."ID_CADGERAL"]')
          ParentFont = False
        end
        object frAusenciasNOME: TfrxMemoView
          Left = 234.330860000000000000
          Top = 3.779529999999994000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAusencias."NOME"]')
          ParentFont = False
        end
        object frAusenciasID_USP: TfrxMemoView
          Left = 90.708720000000000000
          Top = 29.015770000000010000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_USP'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAusencias."ID_USP"]')
          ParentFont = False
        end
        object frAusenciasCPF: TfrxMemoView
          Left = 234.330860000000000000
          Top = 29.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CPF'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAusencias."CPF"]')
          ParentFont = False
        end
        object frAusenciasRG: TfrxMemoView
          Left = 400.630180000000000000
          Top = 29.795300000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RG'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAusencias."RG"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 49.133890000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = frAusencias
        DataSetName = 'frAusencias'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 4.559060000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Aus'#234'ncia:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 200.315090000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo de:')
          ParentFont = False
        end
        object frAusenciasTIPO: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779529999999994000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TIPO'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Memo.UTF8W = (
            '[frAusencias."TIPO"]')
        end
        object frAusenciasDATAINI: TfrxMemoView
          Left = 277.787570000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAINI'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Memo.UTF8W = (
            '[frAusencias."DATAINI"]')
        end
        object Memo6: TfrxMemoView
          Left = 361.157700000000000000
          Top = 3.779529999999994000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'At'#233':')
          ParentFont = False
        end
        object frAusenciasDATAFIM: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAFIM'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Memo.UTF8W = (
            '[frAusencias."DATAFIM"]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456709999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Obs:')
          ParentFont = False
        end
        object frAusenciasOBS: TfrxMemoView
          Left = 75.590600000000000000
          Top = 26.456709999999990000
          Width = 634.961039999999000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'OBS'
          DataSet = frAusencias
          DataSetName = 'frAusencias'
          Memo.UTF8W = (
            '[frAusencias."OBS"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = -0.220470000000000000
          Width = 718.110700000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Color = clSilver
        end
        object periodoAusencia: TfrxMemoView
          Align = baCenter
          Left = 204.094620000000000000
          Top = 39.015770000000010000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[periodoAusencia]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baCenter
          Left = 266.456865000000000000
          Top = 3.338590000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Aus'#234'ncias')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 556.590910000000000000
          Top = 7.559059999999999000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 594.858690000000000000
          Top = 7.559059999999999000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object titulo: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 253.228510000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 5.000000000000000000
          Top = 10.000000000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            'Departamento de Gen'#233'tica - Universidade de S'#227'o Paulo.')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Align = baRight
          Left = 650.079160000000000000
          Top = 9.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.220470000000000000
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
end
