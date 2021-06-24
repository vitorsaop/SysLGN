object fmRelatorioDespesas: TfmRelatorioDespesas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Despesas'
  ClientHeight = 113
  ClientWidth = 542
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
    CharCase = ecUpperCase
    Color = 10813439
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object gbPeriodoUso: TcxGroupBox
    Left = 60
    Top = 35
    Caption = 'per'#237'odo de uso:'
    TabOrder = 2
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
    TabOrder = 3
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
    TabOrder = 4
    OnClick = btnImprimirClick
  end
  object quDespesas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      
        #9'id_docente, c.nome, nome_veiculo, dataagendaini, dataagendafim,' +
        ' kmsaida, kmretorno, kmsaldo, custototalkm,'
      #9'custototalcombustivel,custototalgeral '
      'from '
      #9'agenda'
      'inner join'
      #9'cad_geral c'
      'on '
      #9'(id_docente = c.ai)'
      'union'
      'select '
      
        #9'id_docente, c.nome, nome_veiculo, dataagendaini, dataagendafim,' +
        ' horasaida, horachegada, horatotal, 0, custototalcombustivel,'
      #9'custototalcombustivel as custototalgeral '
      'from '
      #9'agenda_tratores'
      'inner join'
      #9'cad_geral c'
      'on '
      #9'(id_docente = c.ai)'
      'union'
      'select '
      
        #9'id_docente, c.nome, '#39'***combustivel avulso***'#39', datauso as data' +
        'agendaini, datauso as dataagendafim, 0, 0, 0, 0, custototalgeral' +
        ', custototalgeral '
      'from '
      #9'combustivel_avulso'
      'inner join'
      #9'cad_geral c'
      'on '
      #9'(id_docente = c.ai)'
      'order by'
      #9'2,4,5')
    SQLConnection = dmLGN.dbLGN
    Left = 48
    Top = 128
    object quDespesasID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quDespesasNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quDespesasNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object quDespesasDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object quDespesasDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object quDespesasKMSAIDA: TFloatField
      FieldName = 'KMSAIDA'
    end
    object quDespesasKMRETORNO: TFloatField
      FieldName = 'KMRETORNO'
    end
    object quDespesasKMSALDO: TFloatField
      FieldName = 'KMSALDO'
    end
    object quDespesasCUSTOTOTALKM: TFMTBCDField
      FieldName = 'CUSTOTOTALKM'
      Precision = 20
      Size = 2
    end
    object quDespesasCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'CUSTOTOTALCOMBUSTIVEL'
      Precision = 12
      Size = 2
    end
    object quDespesasCUSTOTOTALGERAL: TFMTBCDField
      FieldName = 'CUSTOTOTALGERAL'
      Precision = 12
      Size = 2
    end
  end
  object pvDespesas: TDataSetProvider
    DataSet = quDespesas
    Left = 48
    Top = 176
  end
  object cdsDespesas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvDespesas'
    Left = 48
    Top = 224
    object cdsDespesasID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsDespesasNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsDespesasNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object cdsDespesasDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object cdsDespesasDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object cdsDespesasKMSAIDA: TFloatField
      FieldName = 'KMSAIDA'
    end
    object cdsDespesasKMRETORNO: TFloatField
      FieldName = 'KMRETORNO'
    end
    object cdsDespesasKMSALDO: TFloatField
      FieldName = 'KMSALDO'
    end
    object cdsDespesasCUSTOTOTALKM: TFMTBCDField
      FieldName = 'CUSTOTOTALKM'
      Precision = 20
      Size = 2
    end
    object cdsDespesasCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'CUSTOTOTALCOMBUSTIVEL'
      Precision = 12
      Size = 2
    end
    object cdsDespesasCUSTOTOTALGERAL: TFMTBCDField
      FieldName = 'CUSTOTOTALGERAL'
      Precision = 12
      Size = 2
    end
  end
  object dsDespesas: TDataSource
    DataSet = cdsDespesas
    Left = 48
    Top = 272
  end
  object frDespesas: TfrxDBDataset
    UserName = 'frDespesas'
    CloseDataSource = False
    DataSet = cdsDespesas
    BCDToCurrency = False
    Left = 336
    Top = 128
  end
  object frDespesasAnalitico: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42126.568568495400000000
    ReportOptions.LastChange = 42126.894731863400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '  '
      'end.')
    Left = 376
    Top = 128
    Datasets = <
      item
        DataSet = frDespesas
        DataSetName = 'frDespesas'
      end
      item
        DataSet = frDespesasTotal
        DataSetName = 'frDespesasTotal'
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
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frDespesas."ID_DOCENTE"'
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = cl3DLight
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 6.559059999999988000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object frDespesasNOME: TfrxMemoView
          Left = 54.692950000000000000
          Top = 6.559059999999988000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frDespesas
          DataSetName = 'frDespesas'
          Memo.UTF8W = (
            '[frDespesas."NOME"]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frDespesas
        DataSetName = 'frDespesas'
        RowCount = 0
        object Shape3: TfrxShapeView
          Left = -0.220470000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Veic:')
          ParentFont = False
        end
        object frDespesasNOME_VEICULO: TfrxMemoView
          Left = 38.133890000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME_VEICULO'
          DataSet = frDespesas
          DataSetName = 'frDespesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frDespesas."NOME_VEICULO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 269.330860000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo:')
          ParentFont = False
        end
        object frDespesasDATAAGENDAINI: TfrxMemoView
          Left = 328.582870000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATAAGENDAINI'
          DataSet = frDespesas
          DataSetName = 'frDespesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frDespesas."DATAAGENDAINI"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 406.953000000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'de:')
          ParentFont = False
        end
        object frDespesasDATAAGENDAFIM: TfrxMemoView
          Left = 432.441250000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATAAGENDAFIM'
          DataSet = frDespesas
          DataSetName = 'frDespesas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frDespesas."DATAAGENDAFIM"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 541.323130000000000000
          Top = 1.000000000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R$ Total Comb:')
          ParentFont = False
        end
        object frDespesasCUSTOTOTALCOMBUSTIVEL: TfrxMemoView
          Align = baRight
          Left = 653.858689999999900000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CUSTOTOTALCOMBUSTIVEL'
          DataSet = frDespesas
          DataSetName = 'frDespesas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDespesas."CUSTOTOTALCOMBUSTIVEL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Align = baRight
          Left = 634.961039999999900000
          Top = 1.559059999999988000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDespesas."CUSTOTOTALCOMBUSTIVEL">,MasterData1)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 540.811380000000000000
          Top = 1.559059999999988000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R$ Total:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 20.000000000000000000
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
        object SysMemo2: TfrxSysMemoView
          Align = baRight
          Left = 650.079160000000000000
          Top = 19.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 13.779530000000020000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000010000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Color = cl3DLight
        end
        object Memo8: TfrxMemoView
          Align = baCenter
          Left = 156.850495000000000000
          Top = 2.338590000000000000
          Width = 404.409710000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Despesas'
            '(Ecofrota / Abastecimento ESALQ)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 563.693260000000000000
          Top = 3.559059999999999000
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
          Top = 3.559059999999999000
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
        object titulo: TfrxMemoView
          Align = baCenter
          Left = 187.086735000000000000
          Top = 37.015770000000010000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
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
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 541.693260000000000000
          Top = 4.779530000000022000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
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
        object Line1: TfrxLineView
          Left = -0.559060000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object frDespesasTotalSumCUSTOTOTALCOMBUSTIVEL: TfrxMemoView
          Align = baRight
          Left = 623.622450000000000000
          Top = 4.118119999999976000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frDespesasTotal
          DataSetName = 'frDespesasTotal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDespesasTotal."Sum(CUSTOTOTALCOMBUSTIVEL)"]')
          ParentFont = False
        end
      end
    end
  end
  object quDespesasTotal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      #9'select sum(custototalcombustivel), sum(custototalgeral) from '
      '('
      'select '
      
        #9'ai,id_docente, nome_veiculo, dataagendaini, dataagendafim, kmsa' +
        'ida, kmretorno, kmsaldo, custototalkm,'
      #9'custototalcombustivel,custototalgeral '
      'from '
      #9'agenda'
      'union'
      'select '
      
        #9'ai,id_docente, nome_veiculo, dataagendaini, dataagendafim, hora' +
        'saida, horachegada, horatotal, 0, custototalcombustivel,'
      #9'custototalcombustivel as custototalgeral '
      'from '
      #9'agenda_tratores'
      'union'
      'select '
      
        #9'ai, id_docente, '#39'combustivel avulso'#39', datauso, datauso, 0, 0, 0' +
        ', 0, custototalgeral, custototalgeral '
      'from '
      #9'combustivel_avulso'
      ') as despesastotal ')
    SQLConnection = dmLGN.dbLGN
    Left = 128
    Top = 128
    object quDespesasTotalSumCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'Sum(CUSTOTOTALCOMBUSTIVEL)'
      Precision = 32
      Size = 2
    end
    object quDespesasTotalSumCustoTotalGeral: TFMTBCDField
      FieldName = 'Sum(CustoTotalGeral)'
      Precision = 32
      Size = 2
    end
  end
  object pvDespesasTotal: TDataSetProvider
    DataSet = quDespesasTotal
    Left = 128
    Top = 176
  end
  object cdsDespesasTotal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvDespesasTotal'
    Left = 128
    Top = 224
    object cdsDespesasTotalSumCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'Sum(CUSTOTOTALCOMBUSTIVEL)'
      Precision = 32
      Size = 2
    end
    object cdsDespesasTotalSumCustoTotalGeral: TFMTBCDField
      FieldName = 'Sum(CustoTotalGeral)'
      Precision = 32
      Size = 2
    end
  end
  object frDespesasTotal: TfrxDBDataset
    UserName = 'frDespesasTotal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Sum(CUSTOTOTALCOMBUSTIVEL)=Sum(CUSTOTOTALCOMBUSTIVEL)'
      'Sum(CustoTotalGeral)=Sum(CustoTotalGeral)')
    DataSet = cdsDespesasTotal
    BCDToCurrency = False
    Left = 336
    Top = 176
  end
  object qu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select id_docente, nome, sum(custototalcombustivel) as totalcomb' +
        'ustivel from ('
      'select '
      
        #9'id_docente, c.nome as nome, dataagendaini, dataagendafim, custo' +
        'totalcombustivel'
      'from '
      #9'agenda'
      'inner join'
      #9'cad_geral c'
      'on '
      #9'(id_docente = c.ai)'
      'union'
      'select '
      
        #9'id_docente, c.nome as nome, dataagendaini, dataagendafim, custo' +
        'totalcombustivel'
      'from '
      #9'agenda_tratores'
      'inner join'
      #9'cad_geral c'
      'on '
      #9'(id_docente = c.ai)'
      'union'
      'select '
      
        #9'id_docente, c.nome as nome, datauso as dataagendaini, datauso a' +
        's dataagendafim, '
      #9'custototalgeral as custototalcombustivel'
      'from '
      #9'combustivel_avulso'
      'inner join'
      #9'cad_geral c'
      'on '
      #9'(id_docente = c.ai)'
      ') virtual '
      'group by '
      '  nome')
    SQLConnection = dmLGN.dbLGN
    Left = 224
    Top = 128
    object quid_docente: TIntegerField
      FieldName = 'id_docente'
    end
    object qunome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object quTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'TOTALCOMBUSTIVEL'
      Precision = 32
      Size = 2
    end
  end
  object pv: TDataSetProvider
    DataSet = qu
    Left = 224
    Top = 176
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pv'
    Left = 224
    Top = 232
    object cdsid_docente: TIntegerField
      FieldName = 'id_docente'
    end
    object cdsnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object cdsTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'TOTALCOMBUSTIVEL'
      Precision = 32
      Size = 2
    end
  end
  object ds: TDataSource
    DataSet = cds
    Left = 224
    Top = 288
  end
  object fr: TfrxDBDataset
    UserName = 'fr'
    CloseDataSource = False
    DataSet = cds
    BCDToCurrency = False
    Left = 336
    Top = 288
  end
  object frDespesasSintetico: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42320.576513946800000000
    ReportOptions.LastChange = 42320.579009490700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 376
    Top = 288
    Datasets = <
      item
        DataSet = fr
        DataSetName = 'fr'
      end
      item
        DataSet = frDespesasTotal
        DataSetName = 'frDespesasTotal'
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
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 20.000000000000000000
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
        object SysMemo2: TfrxSysMemoView
          Align = baRight
          Left = 650.079160000000000000
          Top = 19.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 13.779530000000020000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Color = cl3DLight
        end
        object Memo8: TfrxMemoView
          Align = baCenter
          Left = 156.850495000000000000
          Top = 2.338590000000000000
          Width = 404.409710000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Despesas'
            '(Ecofrota / Abastecimento ESALQ)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 563.693260000000000000
          Top = 3.559059999999999000
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
          Left = 457.866420000000000000
          Top = 3.559059999999999000
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
        object titulo: TfrxMemoView
          Align = baCenter
          Left = 187.086735000000000000
          Top = 37.015770000000010000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
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
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        DataSet = fr
        DataSetName = 'fr'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 52.913420000000000000
          Top = 3.779529999999994000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nome'
          DataSet = fr
          DataSetName = 'fr'
          Memo.UTF8W = (
            '[fr."nome"]')
        end
        object frTOTALCOMBUSTIVEL: TfrxMemoView
          Align = baRight
          Left = 582.047620000000000000
          Top = 3.779529999999994000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fr
          DataSetName = 'fr'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fr."TOTALCOMBUSTIVEL"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.441250000000000000
          Top = 5.779529999999994000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R$ Total Comb:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = -0.559060000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object frDespesasTotalSumCUSTOTOTALCOMBUSTIVEL: TfrxMemoView
          Align = baRight
          Left = 623.622450000000000000
          Top = 4.118120000000004000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frDespesasTotal
          DataSetName = 'frDespesasTotal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDespesasTotal."Sum(CUSTOTOTALCOMBUSTIVEL)"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 536.693260000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
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
      end
    end
  end
end
