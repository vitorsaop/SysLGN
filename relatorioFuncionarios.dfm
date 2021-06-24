object fmRelatorioFuncionarios: TfmRelatorioFuncionarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Funcion'#225'rios / Docentes / Outros.'
  ClientHeight = 141
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
  object Label4: TLabel
    Left = 8
    Top = 44
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
    Width = 330
    Height = 19
    TabStop = False
    Color = 10813439
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    ItemIndex = 0
    TabOrder = 2
    Height = 71
    Width = 105
  end
  object btnSair: TBitBtn
    Left = 377
    Top = 107
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
    TabOrder = 3
    OnClick = btnSairClick
  end
  object btnImprimir: TBitBtn
    Left = 451
    Top = 107
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
    TabOrder = 4
    OnClick = btnImprimirClick
  end
  object cbStatus: TcxComboBox
    Left = 60
    Top = 36
    TabStop = False
    Properties.Items.Strings = (
      'Ativos'
      'Inativos'
      'Ambos')
    Style.BorderStyle = ebsOffice11
    Style.ButtonTransparency = ebtNone
    TabOrder = 5
    Text = 'Ativos'
    Width = 101
  end
  object quCadastros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_geral')
    SQLConnection = dmLGN.dbLGN
    Left = 576
    Top = 56
    object quCadastrosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quCadastrosID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object quCadastrosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quCadastrosRG: TStringField
      FieldName = 'RG'
    end
    object quCadastrosCPF: TStringField
      FieldName = 'CPF'
    end
    object quCadastrosID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object quCadastrosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quCadastrosID_FUNCAO: TIntegerField
      FieldName = 'ID_FUNCAO'
    end
    object quCadastrosID_CLASSE: TIntegerField
      FieldName = 'ID_CLASSE'
    end
    object quCadastrosFLAGDOCENTE: TIntegerField
      FieldName = 'FLAGDOCENTE'
    end
    object quCadastrosFLAGFUNCIONARIO: TIntegerField
      FieldName = 'FLAGFUNCIONARIO'
    end
    object quCadastrosFLAGALUNO: TIntegerField
      FieldName = 'FLAGALUNO'
    end
    object quCadastrosFLAGOUTROS: TIntegerField
      FieldName = 'FLAGOUTROS'
    end
    object quCadastrosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object quCadastrosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object quCadastrosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quCadastrosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvCadastros: TDataSetProvider
    DataSet = quCadastros
    Left = 608
    Top = 56
  end
  object cdsCadastros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCadastros'
    AfterScroll = cdsCadastrosAfterScroll
    Left = 640
    Top = 56
    object cdsCadastrosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCadastrosID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object cdsCadastrosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsCadastrosRG: TStringField
      FieldName = 'RG'
    end
    object cdsCadastrosCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsCadastrosID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object cdsCadastrosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsCadastrosID_FUNCAO: TIntegerField
      FieldName = 'ID_FUNCAO'
    end
    object cdsCadastrosID_CLASSE: TIntegerField
      FieldName = 'ID_CLASSE'
    end
    object cdsCadastrosFLAGDOCENTE: TIntegerField
      FieldName = 'FLAGDOCENTE'
    end
    object cdsCadastrosFLAGFUNCIONARIO: TIntegerField
      FieldName = 'FLAGFUNCIONARIO'
    end
    object cdsCadastrosFLAGALUNO: TIntegerField
      FieldName = 'FLAGALUNO'
    end
    object cdsCadastrosFLAGOUTROS: TIntegerField
      FieldName = 'FLAGOUTROS'
    end
    object cdsCadastrosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsCadastrosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsCadastrosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsCadastrosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsCadastros: TDataSource
    DataSet = cdsCadastros
    Left = 672
    Top = 56
  end
  object frFuncionarios: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41791.026590694400000000
    ReportOptions.LastChange = 41872.113066435200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '               '
      'end;'
      ''
      'begin'
      'end.            ')
    Left = 576
    Top = 8
    Datasets = <
      item
        DataSet = frCadastros
        DataSetName = 'frCadastros'
      end
      item
        DataSet = frEmails
        DataSetName = 'frEmails'
      end
      item
        DataSet = frTelefones
        DataSetName = 'frTelefones'
      end>
    Variables = <
      item
        Name = ' Variaveis'
        Value = Null
      end
      item
        Name = 'Title'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object pgRelatorioFuncionarios: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'pgRelatorioFuncionariosOnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 45.606060000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Shape11: TfrxShapeView
          Left = -0.118120000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clSilver
          Frame.Color = clSilver
        end
        object Memo3: TfrxMemoView
          Align = baCenter
          Left = 255.118275000000000000
          Top = 11.559060000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            'Docentes / Funcion'#225'rios')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 31.897650000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 10.000000000000280000
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
          Top = 9.000000000000058000
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
          Top = 3.779530000000079000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 86.929190000000200000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        DataSet = frCadastros
        DataSetName = 'frCadastros'
        RowCount = 0
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 140
          Frame.Color = 140
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.779529999999994000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Id_Cadastro')
          ParentFont = False
        end
        object frCadGeralID_CADGERAL: TfrxMemoView
          Left = 3.779530000000000000
          Top = 19.677179999999990000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ID_CADGERAL'
          DataSet = frCadastros
          DataSetName = 'frCadastros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frCadastros."ID_CADGERAL"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 117.165430000000000000
          Top = 1.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object frCadGeralNOME: TfrxMemoView
          Left = 117.165430000000000000
          Top = 19.677179999999990000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frCadastros
          DataSetName = 'frCadastros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frCadastros."NOME"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 40.354360000000010000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Numero USP:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 118.165430000000000000
          Top = 40.354360000000010000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 256.992270000000000000
          Top = 40.354360000000010000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object frCadGeralCPF: TfrxMemoView
          Left = 119.047310000000000000
          Top = 61.252010000000010000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CPF'
          DataSet = frCadastros
          DataSetName = 'frCadastros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frCadastros."CPF"]')
          ParentFont = False
        end
        object frCadGeralRG: TfrxMemoView
          Left = 258.008040000000000000
          Top = 61.031540000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RG'
          DataSet = frCadastros
          DataSetName = 'frCadastros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frCadastros."RG"]')
          ParentFont = False
        end
        object frCadGeralID_USP: TfrxMemoView
          Left = 3.779530000000000000
          Top = 61.031540000000010000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_usp'
          DataSet = frCadastros
          DataSetName = 'frCadastros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frCadastros."id_usp"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 26.456710000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frEmails
        DataSetName = 'frEmails'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 1.779530000000000000
          Top = 3.677179999999993000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'E-Mail:')
          ParentFont = False
        end
        object frEmailsEMAIL: TfrxMemoView
          Left = 52.913420000000000000
          Top = 3.779529999999994000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'EMAIL'
          DataSet = frEmails
          DataSetName = 'frEmails'
          Memo.UTF8W = (
            '[frEmails."EMAIL"]')
        end
      end
      object SubdetailData1: TfrxSubdetailData
        Height = 26.456709999999990000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = frTelefones
        DataSetName = 'frTelefones'
        RowCount = 0
        object Memo5: TfrxMemoView
          Top = 3.779530000000022000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000022000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo de Telefone:')
          ParentFont = False
        end
        object frTelefonesTELEFONE: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000022000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TELEFONE'
          DataSet = frTelefones
          DataSetName = 'frTelefones'
          Memo.UTF8W = (
            '[frTelefones."TELEFONE"]')
        end
        object frTelefonesTIPO: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TIPO'
          DataSet = frTelefones
          DataSetName = 'frTelefones'
          Memo.UTF8W = (
            '[frTelefones."TIPO"]')
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 676.000000000000000000
      ClientHeight = 649.000000000000000000
      Left = 498.000000000000000000
      Top = 199.000000000000000000
      Width = 1278.000000000000000000
      ClientWidth = 1270.000000000000000000
    end
  end
  object frCadastros: TfrxDBDataset
    UserName = 'frCadastros'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AI=AI'
      'ID_CADGERAL=ID_CADGERAL'
      'NOME=NOME'
      'RG=RG'
      'CPF=CPF'
      'ID_USP=ID_USP'
      'OBS=OBS'
      'ID_FUNCAO=ID_FUNCAO'
      'ID_CLASSE=ID_CLASSE'
      'FLAGDOCENTE=FLAGDOCENTE'
      'FLAGFUNCIONARIO=FLAGFUNCIONARIO'
      'FLAGALUNO=FLAGALUNO'
      'FLAGOUTROS=FLAGOUTROS'
      'STATUS=STATUS'
      'USUARIO=USUARIO'
      'DATAINC=DATAINC'
      'HORAINC=HORAINC')
    DataSet = cdsCadastros
    BCDToCurrency = False
    Left = 704
    Top = 56
  end
  object frxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Title = 'Relat'#243'rio de Funcionarios / Docentes'
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 616
    Top = 8
  end
  object frxExcel: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 648
    Top = 8
  end
  object quEmail: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_emails')
    SQLConnection = dmLGN.dbLGN
    Left = 576
    Top = 104
    object quEmailAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quEmailID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object quEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object quEmailDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quEmailHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quEmailUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object pvEmails: TDataSetProvider
    DataSet = quEmail
    Left = 608
    Top = 104
  end
  object cdsEmails: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsCadastros
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvEmails'
    Left = 640
    Top = 104
  end
  object dsEmails: TDataSource
    DataSet = cdsEmails
    Left = 672
    Top = 104
  end
  object quTelefones: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_telefones')
    SQLConnection = dmLGN.dbLGN
    Left = 576
    Top = 152
    object quTelefonesAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quTelefonesID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object quTelefonesTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object quTelefonesRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 6
    end
    object quTelefonesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object quTelefonesOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quTelefonesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quTelefonesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object quTelefonesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvTelefones: TDataSetProvider
    DataSet = quTelefones
    Left = 608
    Top = 152
  end
  object cdsTelefones: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsCadastros
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvTelefones'
    Left = 640
    Top = 152
  end
  object dsTelefones: TDataSource
    DataSet = cdsTelefones
    Left = 672
    Top = 152
  end
  object frEmails: TfrxDBDataset
    UserName = 'frEmails'
    CloseDataSource = False
    DataSet = cdsEmails
    BCDToCurrency = False
    Left = 704
    Top = 104
  end
  object frTelefones: TfrxDBDataset
    UserName = 'frTelefones'
    CloseDataSource = False
    DataSet = cdsTelefones
    BCDToCurrency = False
    Left = 704
    Top = 152
  end
end
