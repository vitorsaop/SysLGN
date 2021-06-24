object fmRelatorioViagensTratores: TfmRelatorioViagensTratores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Tratores'
  ClientHeight = 112
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
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
  object btnSair: TBitBtn
    Left = 383
    Top = 80
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
    TabOrder = 2
    OnClick = btnSairClick
  end
  object btnImprimir: TBitBtn
    Left = 457
    Top = 80
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
    TabOrder = 3
    OnClick = btnImprimirClick
  end
  object gbPeriodoUso: TcxGroupBox
    Left = 60
    Top = 35
    Caption = 'per'#237'odo de uso:'
    TabOrder = 4
    Height = 70
    Width = 237
    object Label2: TLabel
      Left = 7
      Top = 32
      Width = 16
      Height = 13
      Caption = 'de:'
    end
    object Label3: TLabel
      Left = 119
      Top = 32
      Width = 20
      Height = 13
      Caption = 'at'#233':'
    end
    object dtViagemIni: TcxDateEdit
      Left = 23
      Top = 24
      TabOrder = 0
      Width = 94
    end
    object dtViagemFim: TcxDateEdit
      Left = 139
      Top = 24
      TabOrder = 1
      Width = 94
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 280
    Top = 136
  end
  object frRelatorioAgendaTratoresAnalitico: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41988.592348159700000000
    ReportOptions.LastChange = 42180.874049976840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 136
    Datasets = <
      item
        DataSet = frxAgendaTratores
        DataSetName = 'frxAgendaTratores'
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
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxAgendaTratores
        DataSetName = 'frxAgendaTratores'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 0.559060000000000000
          Top = 2.314963070000004000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'veiculo:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 448.157700000000000000
          Top = 2.314963070000004000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'hora total:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 562.457020000000000000
          Top = 2.314963070000004000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'custo trator (R$):')
          ParentFont = False
        end
        object frAgendaDetailNOME_VEICULO: TfrxMemoView
          Left = 47.590600000000000000
          Top = 2.314963070000004000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME_VEICULO'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxAgendaTratores."NOME_VEICULO"]')
          ParentFont = False
        end
        object frAgendaDetailKM_USADO: TfrxMemoView
          Left = 507.323130000000000000
          Top = 2.314963070000004000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'HORATOTAL'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxAgendaTratores."HORATOTAL"]')
          ParentFont = False
        end
        object frAgendaDetailCUSTO_TOTAL: TfrxMemoView
          Left = 659.063390000000000000
          Top = 2.314963070000004000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Valor_Hora_Trator'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxAgendaTratores."Valor_Hora_Trator"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 257.110390000000000000
          Top = 2.559059999999988000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'per'#237'odo:')
          ParentFont = False
        end
        object frAgendaDetailDATAAGENDAINI: TfrxMemoView
          Left = 307.803340000000000000
          Top = 2.559057560000014000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATAAGENDAINI'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxAgendaTratores."DATAAGENDAINI"]')
          ParentFont = False
        end
        object frAgendaDetailDATAAGENDAFIM: TfrxMemoView
          Left = 381.496290000000000000
          Top = 2.559059999999988000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATAAGENDAFIM'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxAgendaTratores."DATAAGENDAFIM"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 373.157700000000000000
          Top = 2.559060000000017000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Memo.UTF8W = (
            '-')
        end
        object frxImplementosNOME_IMPLEMENTO: TfrxMemoView
          Left = 48.165430000000000000
          Top = 21.236240000000010000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'IMPLEMENTO'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Memo.UTF8W = (
            '[frxAgendaTratores."IMPLEMENTO"]')
        end
        object Memo12: TfrxMemoView
          Left = 0.118120000000000000
          Top = 22.015770000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Memo.UTF8W = (
            'imple:')
        end
        object Memo4: TfrxMemoView
          Left = 562.929500000000000000
          Top = 19.456709999999990000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'custo imp. (R$):')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 659.638220000000000000
          Top = 19.236240000000010000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Valor_Hora_Implemento'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxAgendaTratores."Valor_Hora_Implemento"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 562.929500000000000000
          Top = 36.913420000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'total. (R$):')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 659.417750000000000000
          Top = 36.913420000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'Valor_Total'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxAgendaTratores."Valor_Total"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 718.110236220000000000
          ShowHint = False
          Diagonal = True
        end
        object frxAgendaTratoresLOCAL: TfrxMemoView
          Left = 181.976500000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LOCAL'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Memo.UTF8W = (
            '[frxAgendaTratores."LOCAL"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Color = clSilver
        end
        object titulo: TfrxMemoView
          Align = baCenter
          Left = 177.637910000000000000
          Top = 36.677180000000000000
          Width = 362.834880000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 555.590910000000000000
          Top = 3.779530000000001000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Imp:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 612.283860000000000000
          Top = 3.779530000000001000
          Width = 105.826840000000000000
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
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 240.000155000000000000
          Top = 3.000000000000000000
          Width = 238.110390000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Despesas de Tratores'
            '(Hora de uso / Implemento) ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 597.165739999999900000
          Top = 9.779530000000023000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxAgendaTratores."Valor_Total">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 498.307360000000000000
          Top = 10.779530000000020000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Custo Total:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 6.000000000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 1.677180000000000000
          Top = 7.779530000000023000
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
          Top = 8.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
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
          Top = 2.779530000000022000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxAgendaTratores."ID_DOCENTE"'
        object Shape1: TfrxShapeView
          Left = 1.000000000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = cl3DLight
        end
        object Memo1: TfrxMemoView
          Left = 4.779530000000000000
          Top = 3.559059999999988000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Memo.UTF8W = (
            'cadastro:')
        end
        object frAgendaNOME_DOCENTE: TfrxMemoView
          Left = 79.929190000000000000
          Top = 3.000000000000000000
          Width = 411.968770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Memo.UTF8W = (
            '[frxAgendaTratores."NOME"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 531.149970000000000000
          Top = 3.779530000000022000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'custo total. (R$):')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baRight
          Left = 638.740569999999900000
          Top = 3.000000000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxAgendaTratores."Valor_Total">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxAgendaTratores: TfrxDBDataset
    UserName = 'frxAgendaTratores'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DOCENTE=ID_DOCENTE'
      'NOME=NOME'
      'NOME_VEICULO=NOME_VEICULO'
      'IMPLEMENTO=IMPLEMENTO'
      'DATAAGENDAINI=DATAAGENDAINI'
      'DATAAGENDAFIM=DATAAGENDAFIM'
      'HORATOTAL=HORATOTAL'
      'Valor_Hora_Trator=Valor_Hora_Trator'
      'Valor_Hora_Implemento=Valor_Hora_Implemento'
      'Valor_Total=Valor_Total'
      'LOCAL=LOCAL')
    DataSet = cdsAgendaTratores
    BCDToCurrency = False
    Left = 168
    Top = 136
  end
  object quAgendaTratores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        #9'a.id_docente, c.nome, a.nome_veiculo, ci.implemento, a.id_veicu' +
        'lo, v.local, a.dataagendaini, a.dataagendafim, '
      
        #9'a.horatotal, a.custohora as valor_hora_trator, (a.custototalhor' +
        'a - a.custohora) as valor_hora_implemento,'
      #9'a.custototalhora as valor_total'
      'from '
      #9'agenda_tratores a'
      'inner join'
      #9' cad_geral c'
      'on'
      #9'(a.id_docente = c.ai)'
      'inner join'
      '                 cad_veiculos v'
      'on'
      '                 (a.id_veiculo = v.ai)'
      'inner join'
      #9' veiculos_implementos vi'
      'on'
      #9'(vi.id_agenda = a.ai)'
      'inner join'
      #9' cad_implementos ci'
      'on'
      #9'(vi.id_implemento = ci.ai)'#9#9#9
      #9)
    SQLConnection = dmLGN.dbLGN
    Left = 88
    Top = 136
    object quAgendaTratoresID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quAgendaTratoresNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quAgendaTratoresNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object quAgendaTratoresIMPLEMENTO: TStringField
      FieldName = 'IMPLEMENTO'
      Size = 30
    end
    object quAgendaTratoresDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object quAgendaTratoresDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object quAgendaTratoresHORATOTAL: TFloatField
      FieldName = 'HORATOTAL'
    end
    object quAgendaTratoresValor_Hora_Trator: TFMTBCDField
      FieldName = 'Valor_Hora_Trator'
      Precision = 12
      Size = 2
    end
    object quAgendaTratoresValor_Hora_Implemento: TFMTBCDField
      FieldName = 'Valor_Hora_Implemento'
      Precision = 13
      Size = 2
    end
    object quAgendaTratoresValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 12
      Size = 2
    end
    object quAgendaTratoresLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
  end
  object pvAgendaTratores: TDataSetProvider
    DataSet = quAgendaTratores
    Left = 88
    Top = 184
  end
  object cdsAgendaTratores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAgendaTratores'
    Left = 88
    Top = 232
    object cdsAgendaTratoresID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAgendaTratoresNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAgendaTratoresNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object cdsAgendaTratoresIMPLEMENTO: TStringField
      FieldName = 'IMPLEMENTO'
      Size = 30
    end
    object cdsAgendaTratoresDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object cdsAgendaTratoresDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object cdsAgendaTratoresHORATOTAL: TFloatField
      FieldName = 'HORATOTAL'
    end
    object cdsAgendaTratoresValor_Hora_Trator: TFMTBCDField
      FieldName = 'Valor_Hora_Trator'
      Precision = 12
      Size = 2
    end
    object cdsAgendaTratoresValor_Hora_Implemento: TFMTBCDField
      FieldName = 'Valor_Hora_Implemento'
      Precision = 13
      Size = 2
    end
    object cdsAgendaTratoresValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 12
      Size = 2
    end
    object cdsAgendaTratoresLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
  end
  object dsAgendaTratores: TDataSource
    AutoEdit = False
    DataSet = cdsAgendaTratores
    Left = 88
    Top = 280
  end
  object frRelatorioAgendaTratoresSintetico: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41988.592348159700000000
    ReportOptions.LastChange = 42179.662211423600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 184
    Datasets = <
      item
        DataSet = frxAgendaTratores
        DataSetName = 'frxAgendaTratores'
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
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Color = clSilver
        end
        object titulo: TfrxMemoView
          Align = baCenter
          Left = 177.637910000000000000
          Top = 42.677180000000000000
          Width = 362.834880000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 555.590910000000000000
          Top = 3.779530000000001000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Imp:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 612.283860000000000000
          Top = 3.779530000000001000
          Width = 105.826840000000000000
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
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 240.000155000000000000
          Top = 3.000000000000000000
          Width = 238.110390000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Despesas de Tratores'
            '(Hora de uso / Implemento) ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 75.590600000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 612.283860000000000000
          Top = 55.826771650000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxAgendaTratores."Valor_Total">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 502.732530000000000000
          Top = 56.826771650000010000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Custo Total:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 6.000000000000028000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 501.882190000000000000
          Top = 34.283481650000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Custo Total Imp:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 501.661720000000000000
          Top = 13.606301650000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Custo Total Hr:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 612.283860000000000000
          Top = 32.283481650000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxAgendaTratores."Valor_Hora_Implemento">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baRight
          Left = 612.283860000000000000
          Top = 11.606301650000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxAgendaTratores."Valor_Hora_Trator">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 1.677180000000000000
          Top = 7.779530000000023000
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
          Top = 8.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
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
          Top = 2.779530000000022000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxAgendaTratores
        DataSetName = 'frxAgendaTratores'
        RowCount = 0
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = cl3DLight
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.559059999999988000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Memo.UTF8W = (
            'cadastro:')
        end
        object frAgendaNOME_DOCENTE: TfrxMemoView
          Left = 61.929190000000000000
          Top = 3.000000000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          Memo.UTF8W = (
            '[frxAgendaTratores."NOME"]')
        end
        object frxAgendaTratoresValor_Total: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 3.023622047244089000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxAgendaTratores."Valor_Total"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 606.488560000000000000
          Top = 3.023622047244089000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 358.055350000000000000
          Top = 3.023622047244089000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hr Trator:')
          ParentFont = False
        end
        object frxAgendaTratoresValor_Hora_Trator: TfrxMemoView
          Left = 419.086890000000000000
          Top = 3.023622047244089000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxAgendaTratores."Valor_Hora_Trator"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 489.559370000000000000
          Top = 3.023622047244089000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Impl:')
          ParentFont = False
        end
        object frxAgendaTratoresValor_Hora_Implemento: TfrxMemoView
          Left = 527.134200000000000000
          Top = 3.023622050000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxAgendaTratores
          DataSetName = 'frxAgendaTratores'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxAgendaTratores."Valor_Hora_Implemento"]')
          ParentFont = False
        end
      end
    end
  end
end
