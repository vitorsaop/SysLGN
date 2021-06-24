object fmRelatorioViagens: TfmRelatorioViagens
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Viagens'
  ClientHeight = 341
  ClientWidth = 539
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
    object Label3: TLabel
      Left = 7
      Top = 32
      Width = 16
      Height = 13
      Caption = 'de:'
    end
    object Label4: TLabel
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
  object quAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      '   distinct A.ID_DOCENTE, C.NOME'
      'FROM '
      '   AGENDA A'
      'INNER JOIN'
      '   CAD_GERAL C'
      'ON'
      '   (A.ID_DOCENTE = C.AI)'
      'ORDER BY'
      '   C.NOME')
    SQLConnection = dmLGN.dbLGN
    Left = 56
    Top = 120
    object quAgendaID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quAgendaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object pvAgenda: TDataSetProvider
    DataSet = quAgenda
    Left = 56
    Top = 168
  end
  object cdsAgenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAgenda'
    AfterScroll = cdsAgendaAfterScroll
    Left = 56
    Top = 216
    object cdsAgendaID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAgendaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsAgenda: TDataSource
    DataSet = cdsAgenda
    Left = 56
    Top = 264
  end
  object quCadGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CAD_GERAL')
    SQLConnection = dmLGN.dbLGN
    Left = 120
    Top = 120
    object quCadGeralAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quCadGeralID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object quCadGeralNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quCadGeralRG: TStringField
      FieldName = 'RG'
    end
    object quCadGeralCPF: TStringField
      FieldName = 'CPF'
    end
    object quCadGeralID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object quCadGeralOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quCadGeralID_FUNCAO: TIntegerField
      FieldName = 'ID_FUNCAO'
    end
    object quCadGeralID_CLASSE: TIntegerField
      FieldName = 'ID_CLASSE'
    end
    object quCadGeralFLAGDOCENTE: TIntegerField
      FieldName = 'FLAGDOCENTE'
    end
    object quCadGeralFLAGFUNCIONARIO: TIntegerField
      FieldName = 'FLAGFUNCIONARIO'
    end
    object quCadGeralFLAGALUNO: TIntegerField
      FieldName = 'FLAGALUNO'
    end
    object quCadGeralFLAGOUTROS: TIntegerField
      FieldName = 'FLAGOUTROS'
    end
    object quCadGeralSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object quCadGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object quCadGeralDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quCadGeralHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvCadGeral: TDataSetProvider
    DataSet = quCadGeral
    Left = 120
    Top = 168
  end
  object cdsCadGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCadGeral'
    Left = 120
    Top = 216
    object cdsCadGeralAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCadGeralID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object cdsCadGeralNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsCadGeralRG: TStringField
      FieldName = 'RG'
    end
    object cdsCadGeralCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsCadGeralID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object cdsCadGeralOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsCadGeralID_FUNCAO: TIntegerField
      FieldName = 'ID_FUNCAO'
    end
    object cdsCadGeralID_CLASSE: TIntegerField
      FieldName = 'ID_CLASSE'
    end
    object cdsCadGeralFLAGDOCENTE: TIntegerField
      FieldName = 'FLAGDOCENTE'
    end
    object cdsCadGeralFLAGFUNCIONARIO: TIntegerField
      FieldName = 'FLAGFUNCIONARIO'
    end
    object cdsCadGeralFLAGALUNO: TIntegerField
      FieldName = 'FLAGALUNO'
    end
    object cdsCadGeralFLAGOUTROS: TIntegerField
      FieldName = 'FLAGOUTROS'
    end
    object cdsCadGeralSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsCadGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsCadGeralDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsCadGeralHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsCadGeral: TDataSource
    AutoEdit = False
    DataSet = cdsAgenda
    Left = 120
    Top = 264
  end
  object frAgenda: TfrxDBDataset
    UserName = 'frAgenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DOCENTE=ID_DOCENTE'
      'NOME=NOME')
    DataSet = cdsAgenda
    BCDToCurrency = False
    Left = 336
    Top = 112
  end
  object frRelatorioAgendaAnalitico: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41988.592348159700000000
    ReportOptions.LastChange = 42103.989962835600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 112
    Datasets = <
      item
        DataSet = frAgenda
        DataSetName = 'frAgenda'
      end
      item
        DataSet = frAgendaDetail
        DataSetName = 'frAgendaDetail'
      end
      item
        DataSet = frAgendaTotal
        DataSetName = 'frAgendaTotal'
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
        Height = 34.015770000000010000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frAgenda
        DataSetName = 'frAgenda'
        RowCount = 0
        object Shape1: TfrxShapeView
          Top = 8.000000000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = cl3DLight
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.559059999999990000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'cadastro:')
        end
        object frAgendaNOME_DOCENTE: TfrxMemoView
          Left = 82.929190000000000000
          Top = 11.000000000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frAgenda
          DataSetName = 'frAgenda'
          Memo.UTF8W = (
            '[frAgenda."NOME"]')
        end
        object Memo4: TfrxMemoView
          Left = 459.354670000000000000
          Top = 11.338590000000010000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Custo KM total(R$:)')
          ParentFont = False
        end
        object frAgendaTotalCUSTO_TOTAL: TfrxMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000010000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'CUSTO_TOTAL'
          DataSet = frAgendaTotal
          DataSetName = 'frAgendaTotal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frAgendaTotal."CUSTO_TOTAL"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 30.236240000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frAgendaDetail
        DataSetName = 'frAgendaDetail'
        RowCount = 0
        object Shape6: TfrxShapeView
          Left = 226.771800000000000000
          Width = 195.779527559055000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Shape3: TfrxShapeView
          Width = 226.771800000000000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Shape5: TfrxShapeView
          Left = 539.897960000000000000
          Width = 177.637910000000000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Shape4: TfrxShapeView
          Left = 422.598640000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 4.535433070000010000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
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
          Left = 425.378170000000000000
          Top = 4.535433070000010000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'km total:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 541.677490000000000000
          Top = 4.535433070000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'custo (R$):')
          ParentFont = False
        end
        object frAgendaDetailNOME_VEICULO: TfrxMemoView
          Left = 45.811070000000000000
          Top = 4.535433070000010000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME_VEICULO'
          DataSet = frAgendaDetail
          DataSetName = 'frAgendaDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAgendaDetail."NOME_VEICULO"]')
          ParentFont = False
        end
        object frAgendaDetailKM_USADO: TfrxMemoView
          Left = 482.543600000000000000
          Top = 4.535433070000010000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KM_USADO'
          DataSet = frAgendaDetail
          DataSetName = 'frAgendaDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAgendaDetail."KM_USADO"]')
          ParentFont = False
        end
        object frAgendaDetailCUSTO_TOTAL: TfrxMemoView
          Left = 608.283860000000000000
          Top = 4.535433070000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTO_TOTAL'
          DataSet = frAgendaDetail
          DataSetName = 'frAgendaDetail'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frAgendaDetail."CUSTO_TOTAL"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 228.330860000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          Left = 279.023810000000000000
          Top = 3.779527559999991000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGENDAINI'
          DataSet = frAgendaDetail
          DataSetName = 'frAgendaDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAgendaDetail."DATAAGENDAINI"]')
          ParentFont = False
        end
        object frAgendaDetailDATAAGENDAFIM: TfrxMemoView
          Left = 354.716760000000000000
          Top = 3.779529999999994000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGENDAFIM'
          DataSet = frAgendaDetail
          DataSetName = 'frAgendaDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAgendaDetail."DATAAGENDAFIM"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 345.378170000000000000
          Top = 3.779529999999994000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '-')
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
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 247.559215000000000000
          Top = 7.000000000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Viagens')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 575.441250000000000000
          Top = 41.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 646.622450000000000000
          Top = 41.897650000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object titulo: TfrxMemoView
          Align = baCenter
          Left = 187.086735000000000000
          Top = 42.677180000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 597.165739999999900000
          Top = 9.779530000000023000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frAgendaTotal."CUSTO_TOTAL">,MasterData1)]')
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
        Top = 359.055350000000000000
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
    end
  end
  object quAgendaDetail: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DOCENTE'
        ParamType = ptInput
        Value = 190
      end>
    SQL.Strings = (
      'SELECT '
      '   ID_VEICULO, NOME_VEICULO, DATAAGENDAINI, DATAAGENDAFIM, '
      '  SUM(KMSALDO) AS KM_USADO, SUM(CUSTOTOTALKM) AS CUSTO_TOTAL, '
      
        '  ID_DOCENTE, KMSAIDA, KMRETORNO, SUM(CUSTOTOTALCOMBUSTIVEL) AS ' +
        'CUSTO_TOTAL_COMBUSTIVEL, '
      '  SUM(CUSTOTOTALGERAL) AS CUSTO_TOTAL_GERAL'
      'FROM '
      '   AGENDA'
      'GROUP BY '
      '   ID_DOCENTE, KMSAIDA, KMRETORNO'
      'ORDER BY'
      '   DATAAGENDAINI, DATAAGENDAFIM')
    SQLConnection = dmLGN.dbLGN
    Left = 176
    Top = 120
    object quAgendaDetailID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object quAgendaDetailNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object quAgendaDetailDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object quAgendaDetailDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object quAgendaDetailKM_USADO: TFloatField
      FieldName = 'KM_USADO'
    end
    object quAgendaDetailCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Precision = 32
      Size = 2
    end
    object quAgendaDetailID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quAgendaDetailKMSAIDA: TFloatField
      FieldName = 'KMSAIDA'
    end
    object quAgendaDetailKMRETORNO: TFloatField
      FieldName = 'KMRETORNO'
    end
    object quAgendaDetailCUSTO_TOTAL_COMBUSTIVEL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL_COMBUSTIVEL'
      Precision = 32
      Size = 2
    end
    object quAgendaDetailCUSTO_TOTAL_GERAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL_GERAL'
      Precision = 32
      Size = 2
    end
  end
  object pvAgendaDetail: TDataSetProvider
    DataSet = quAgendaDetail
    Left = 176
    Top = 168
  end
  object cdsAgendaDetail: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_DOCENTE'
    MasterFields = 'ID_DOCENTE'
    MasterSource = dsAgenda
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvAgendaDetail'
    Left = 176
    Top = 216
    object cdsAgendaDetailID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object cdsAgendaDetailNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object cdsAgendaDetailDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object cdsAgendaDetailDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object cdsAgendaDetailKM_USADO: TFloatField
      FieldName = 'KM_USADO'
    end
    object cdsAgendaDetailCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Precision = 32
      Size = 2
    end
    object cdsAgendaDetailID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAgendaDetailKMSAIDA: TFloatField
      FieldName = 'KMSAIDA'
    end
    object cdsAgendaDetailKMRETORNO: TFloatField
      FieldName = 'KMRETORNO'
    end
    object cdsAgendaDetailCUSTO_TOTAL_COMBUSTIVEL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL_COMBUSTIVEL'
      Precision = 32
      Size = 2
    end
    object cdsAgendaDetailCUSTO_TOTAL_GERAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL_GERAL'
      Precision = 32
      Size = 2
    end
  end
  object dsAgendaDetail: TDataSource
    AutoEdit = False
    DataSet = cdsAgendaDetail
    Left = 176
    Top = 264
  end
  object frAgendaDetail: TfrxDBDataset
    UserName = 'frAgendaDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_VEICULO=ID_VEICULO'
      'NOME_VEICULO=NOME_VEICULO'
      'DATAAGENDAINI=DATAAGENDAINI'
      'DATAAGENDAFIM=DATAAGENDAFIM'
      'KM_USADO=KM_USADO'
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'ID_DOCENTE=ID_DOCENTE'
      'KMSAIDA=KMSAIDA'
      'KMRETORNO=KMRETORNO'
      'CUSTO_TOTAL_COMBUSTIVEL=CUSTO_TOTAL_COMBUSTIVEL'
      'CUSTO_TOTAL_GERAL=CUSTO_TOTAL_GERAL')
    DataSet = cdsAgendaDetail
    BCDToCurrency = False
    Left = 368
    Top = 112
  end
  object quAgendaTotal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '   SUM(CUSTOTOTALGERAL) +'
      ' (SELECT'
      #9'  SUM(CUSTOTOTALGERAL)'
      '  FROM'
      #9'  combustivel_avulso'
      '  WHERE'
      #9'  ID_CADGERAL = ID_DOCENTE'
      '  GROUP BY'
      #9'  ID_CADGERAL'
      '  ORDER BY'
      '    ID_CADGERAL'
      '  ) AS CUSTO_TOTAL,'
      '   SUM(CUSTOTOTALKM),'
      '   SUM(CUSTOTOTALCOMBUSTIVEL),'
      '   ID_DOCENTE'
      'FROM'
      '   AGENDA'
      'GROUP BY'
      '   ID_DOCENTE'
      'ORDER BY'
      '   ID_DOCENTE')
    SQLConnection = dmLGN.dbLGN
    Left = 232
    Top = 120
    object quAgendaTotalCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Precision = 32
      Size = 2
    end
    object quAgendaTotalID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quAgendaTotalSUMCUSTOTOTALKM: TFMTBCDField
      FieldName = 'SUM(CUSTOTOTALKM)'
      Precision = 32
      Size = 2
    end
    object quAgendaTotalSUMCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'SUM(CUSTOTOTALCOMBUSTIVEL)'
      Precision = 32
      Size = 2
    end
  end
  object pvAgendaTotal: TDataSetProvider
    DataSet = quAgendaTotal
    Left = 232
    Top = 168
  end
  object cdsAgendaTotal: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_DOCENTE'
    MasterFields = 'ID_DOCENTE'
    MasterSource = dsAgenda
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvAgendaTotal'
    Left = 232
    Top = 216
    object cdsAgendaTotalCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Precision = 32
      Size = 2
    end
    object cdsAgendaTotalID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAgendaTotalSUMCUSTOTOTALKM: TFMTBCDField
      FieldName = 'SUM(CUSTOTOTALKM)'
      Precision = 32
      Size = 2
    end
    object cdsAgendaTotalSUMCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'SUM(CUSTOTOTALCOMBUSTIVEL)'
      Precision = 32
      Size = 2
    end
  end
  object dsAgendaTotal: TDataSource
    AutoEdit = False
    DataSet = cdsAgendaTotal
    Left = 232
    Top = 264
  end
  object frAgendaTotal: TfrxDBDataset
    UserName = 'frAgendaTotal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'ID_DOCENTE=ID_DOCENTE'
      'SUM(CUSTOTOTALKM)=CUSTO_TOTALKM'
      'SUM(CUSTOTOTALCOMBUSTIVEL)=CUSTO_TOTALCOMBUSTIVEL')
    DataSet = cdsAgendaTotal
    BCDToCurrency = False
    Left = 400
    Top = 112
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
    Left = 336
    Top = 72
  end
  object frRelatorioAgendaSintetico: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41988.592348159700000000
    ReportOptions.LastChange = 42104.004711006900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 160
    Datasets = <
      item
        DataSet = frAgenda
        DataSetName = 'frAgenda'
      end
      item
        DataSet = frAgendaDetail
        DataSetName = 'frAgendaDetail'
      end
      item
        DataSet = frAgendaTotal
        DataSetName = 'frAgendaTotal'
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
        Height = 26.456710000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frAgenda
        DataSetName = 'frAgenda'
        RowCount = 0
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clWhite
        end
        object frAgendaNOME_DOCENTE: TfrxMemoView
          Left = 3.929190000000000000
          Top = 4.000000000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frAgenda
          DataSetName = 'frAgenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAgenda."NOME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 292.630180000000000000
          Top = 3.559059999999988000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total km:')
          ParentFont = False
        end
        object frAgendaTotalCUSTO_TOTAL: TfrxMemoView
          Left = 356.622450000000000000
          Top = 3.338590000000011000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'CUSTO_TOTALKM'
          DataSet = frAgendaTotal
          DataSetName = 'frAgendaTotal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frAgendaTotal."CUSTO_TOTALKM"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 434.811380000000000000
          Top = 3.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total comb:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 513.079160000000000000
          Top = 3.559059999999988000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'CUSTO_TOTALCOMBUSTIVEL'
          DataSet = frAgendaTotal
          DataSetName = 'frAgendaTotal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frAgendaTotal."CUSTO_TOTALCOMBUSTIVEL"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 291.023810000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 434.205010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 582.945270000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 584.165740000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Geral:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 661.535870000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'CUSTO_TOTAL'
          DataSet = frAgendaTotal
          DataSetName = 'frAgendaTotal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frAgendaTotal."CUSTO_TOTAL"]')
          ParentFont = False
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
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 247.559215000000000000
          Top = 7.000000000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Viagens')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 575.441250000000000000
          Top = 41.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 646.622450000000000000
          Top = 41.897650000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object titulo: TfrxMemoView
          Align = baCenter
          Left = 187.086735000000000000
          Top = 42.677180000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 597.165739999999900000
          Top = 9.779530000000022000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frAgendaTotal."CUSTO_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 498.307360000000000000
          Top = 10.779529999999990000
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
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 1.677180000000000000
          Top = 7.779530000000022000
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
    end
  end
end
