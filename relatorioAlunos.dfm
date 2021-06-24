object fmRelatorioAlunos: TfmRelatorioAlunos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Alunos'
  ClientHeight = 175
  ClientWidth = 541
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
    Width = 30
    Height = 13
    Caption = 'aluno:'
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
  object btnSair: TBitBtn
    Left = 382
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
    TabOrder = 2
    OnClick = btnSairClick
  end
  object btnImprimir: TBitBtn
    Left = 456
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
    TabOrder = 3
    OnClick = btnImprimirClick
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
    TabOrder = 4
    Text = 'Ativos'
    Width = 101
  end
  object gbPeriodoAtividade: TcxGroupBox
    Left = 60
    Top = 35
    Caption = 'per'#237'odo atividade:'
    TabOrder = 5
    Height = 104
    Width = 236
    object Label3: TLabel
      Left = 5
      Top = 26
      Width = 48
      Height = 13
      Caption = 'atividade:'
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
    object cbAtividades: TDBLookupComboBox
      Left = 79
      Top = 18
      Width = 152
      Height = 21
      KeyField = 'ai'
      ListField = 'nome'
      ListSource = dsAtividades
      TabOrder = 0
      TabStop = False
    end
    object dtAtividadeIni: TcxDateEdit
      Left = 21
      Top = 48
      TabOrder = 1
      Width = 94
    end
    object dtAtividadeFim: TcxDateEdit
      Left = 137
      Top = 48
      TabOrder = 2
      Width = 94
    end
  end
  object gbPeriodoAgencia: TcxGroupBox
    Left = 299
    Top = 35
    Caption = 'per'#237'odo ag. finan:'
    TabOrder = 6
    Height = 104
    Width = 233
    object Label6: TLabel
      Left = 5
      Top = 55
      Width = 16
      Height = 13
      Caption = 'de:'
    end
    object Label7: TLabel
      Left = 116
      Top = 55
      Width = 20
      Height = 13
      Caption = 'at'#233':'
    end
    object Label8: TLabel
      Left = 5
      Top = 26
      Width = 70
      Height = 13
      Caption = 'ag. financeira:'
    end
    object dtAgenciaIni: TcxDateEdit
      Left = 21
      Top = 47
      TabOrder = 0
      Width = 94
    end
    object dtAgenciaFim: TcxDateEdit
      Left = 135
      Top = 47
      TabOrder = 1
      Width = 94
    end
    object cbAgenciaFin: TDBLookupComboBox
      Left = 79
      Top = 18
      Width = 150
      Height = 21
      KeyField = 'ai'
      ListField = 'nome'
      ListSource = dsAgencias
      TabOrder = 2
      TabStop = False
    end
  end
  object quDocentes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  ai, id_cadgeral, nome '
      'from '
      '  cad_geral '
      'where '
      '  flagdocente = 1')
    SQLConnection = dmLGN.dbLGN
    Left = 745
    Top = 7
    object quDocentesai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object quDocentesid_cadGeral: TStringField
      FieldName = 'id_cadGeral'
    end
    object quDocentesnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
  end
  object pvDocentes: TDataSetProvider
    DataSet = quDocentes
    Left = 745
    Top = 56
  end
  object cdsDocentes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pvDocentes'
    Left = 745
    Top = 104
    object cdsDocentesai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object cdsDocentesid_cadGeral: TStringField
      FieldName = 'id_cadGeral'
    end
    object cdsDocentesnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
  end
  object dsDocentes: TDataSource
    AutoEdit = False
    DataSet = cdsDocentes
    Left = 745
    Top = 152
  end
  object quAtividades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  ai, nome '
      'from '
      '  cad_atividades')
    SQLConnection = dmLGN.dbLGN
    Left = 784
    Top = 8
    object quAtividadesai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object quAtividadesnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object quAgencias: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  ai, nome '
      'from '
      '  cad_agenciafinanciadora')
    SQLConnection = dmLGN.dbLGN
    Left = 821
    Top = 8
    object quAgenciasai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object quAgenciasnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object pvAtividades: TDataSetProvider
    DataSet = quAtividades
    Left = 784
    Top = 56
  end
  object pvAgencias: TDataSetProvider
    DataSet = quAgencias
    Left = 821
    Top = 56
  end
  object cdsAtividades: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAtividades'
    Left = 784
    Top = 104
    object cdsAtividadesai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object cdsAtividadesnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object cdsAgencias: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAgencias'
    Left = 821
    Top = 104
    object cdsAgenciasai: TIntegerField
      FieldName = 'ai'
      Required = True
    end
    object cdsAgenciasnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object dsAtividades: TDataSource
    AutoEdit = False
    DataSet = cdsAtividades
    Left = 784
    Top = 152
  end
  object dsAgencias: TDataSource
    AutoEdit = False
    DataSet = cdsAgencias
    Left = 821
    Top = 152
  end
  object frAlunos: TfrxDBDataset
    UserName = 'frAlunos'
    CloseDataSource = False
    DataSet = cdsAlunos
    BCDToCurrency = False
    Left = 228
    Top = 144
  end
  object frRelatorioAlunos: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41881.817351226900000000
    ReportOptions.LastChange = 42029.948910648150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 196
    Top = 144
    Datasets = <
      item
        DataSet = frAlunos
        DataSetName = 'frAlunos'
      end
      item
        DataSet = frAtividades_Alunos
        DataSetName = 'frAtividades_Alunos'
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
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Color = clSilver
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 255.118275000000000000
          Top = 10.000000000000000000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Alunos')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 575.441250000000000000
          Top = 44.779530000000000000
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
          Top = 44.897650000000000000
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
          Left = 4.559060000000000000
          Top = 47.456710000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
        end
        object periodoAtividade: TfrxMemoView
          Left = 4.000000000000000000
          Top = 4.779530000000001000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[periodoAtividade]')
          ParentFont = False
        end
        object periodoAgencia: TfrxMemoView
          Left = 4.000000000000000000
          Top = 26.456710000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[periodoAgencia]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 60.472480000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frAlunos
        DataSetName = 'frAlunos'
        RowCount = 0
        object Shape1: TfrxShapeView
          Top = 0.220470000000006000
          Width = 718.110700000000000000
          Height = 56.692950000000010000
          ShowHint = False
          Color = 140
        end
        object Memo3: TfrxMemoView
          Left = 5.559059999999999000
          Top = 6.559055120000010000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID_Aluno:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 220.448980000000000000
          Top = 6.559055120000010000
          Width = 49.133890000000000000
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
        object Memo5: TfrxMemoView
          Left = 5.559059999999999000
          Top = 32.236240000000010000
          Width = 30.236240000000000000
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
        object Memo6: TfrxMemoView
          Left = 220.787570000000000000
          Top = 32.236240000000010000
          Width = 37.795300000000000000
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
        object Memo7: TfrxMemoView
          Left = 491.575140000000000000
          Top = 32.236240000000010000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Num.USP:')
          ParentFont = False
        end
        object frAlunosID_CadGeral: TfrxMemoView
          Left = 77.370130000000000000
          Top = 6.559055120000010000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_CadGeral'
          DataSet = frAlunos
          DataSetName = 'frAlunos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAlunos."ID_CadGeral"]')
          ParentFont = False
        end
        object frAlunosNome: TfrxMemoView
          Left = 275.244280000000000000
          Top = 6.559055120000010000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Nome'
          DataSet = frAlunos
          DataSetName = 'frAlunos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAlunos."Nome"]')
          ParentFont = False
        end
        object frAlunosRG: TfrxMemoView
          Left = 42.354360000000000000
          Top = 32.015770000000010000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RG'
          DataSet = frAlunos
          DataSetName = 'frAlunos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAlunos."RG"]')
          ParentFont = False
        end
        object frAlunosCPF: TfrxMemoView
          Left = 277.685220000000000000
          Top = 32.236240000000010000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CPF'
          DataSet = frAlunos
          DataSetName = 'frAlunos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAlunos."CPF"]')
          ParentFont = False
        end
        object frAlunosID_USP: TfrxMemoView
          Left = 565.929500000000000000
          Top = 32.236240000000010000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_USP'
          DataSet = frAlunos
          DataSetName = 'frAlunos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAlunos."ID_USP"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 31.897650000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
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
          Left = 650.079159999999900000
          Top = 9.000000000000000000
          Width = 68.031540000000010000
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
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        Height = 83.149660000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frAtividades_Alunos
        DataSetName = 'frAtividades_Alunos'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 5.779530000000000000
          Top = 30.236220470000010000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Atividade:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 5.204700000000000000
          Top = 3.779527559999991000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ag'#234'ncia Fin:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 5.559059999999999000
          Top = 56.692913389999970000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Docente:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 423.834880000000000000
          Top = 3.779527559999991000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo de:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 423.039580000000000000
          Top = 30.236220470000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 553.590910000000000000
          Top = 56.692913389999970000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situa'#231#227'o:')
          ParentFont = False
        end
        object frAtividades_AlunosDATAAGEINI: TfrxMemoView
          Left = 510.677490000000000000
          Top = 3.779527559999991000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGEINI'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Memo.UTF8W = (
            '[frAtividades_Alunos."DATAAGEINI"]')
        end
        object frAtividades_AlunosDATAAGEFIM: TfrxMemoView
          Left = 633.181510000000000000
          Top = 3.779527559999991000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGEFIM'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Memo.UTF8W = (
            '[frAtividades_Alunos."DATAAGEFIM"]')
        end
        object frAtividades_AlunosDATAATIVINI: TfrxMemoView
          Left = 510.795610000000000000
          Top = 30.236220472440920000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAATIVINI'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Memo.UTF8W = (
            '[frAtividades_Alunos."DATAATIVINI"]')
        end
        object frAtividades_AlunosDATAATIVFIM: TfrxMemoView
          Left = 633.181510000000000000
          Top = 30.236220472440920000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAATIVFIM'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Memo.UTF8W = (
            '[frAtividades_Alunos."DATAATIVFIM"]')
        end
        object Memo13: TfrxMemoView
          Left = 598.338900000000000000
          Top = 3.779527559999991000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'at'#233':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 600.165740000000000000
          Top = 30.236220470000010000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'at'#233':')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          ShiftMode = smDontShift
          Left = 634.961040000000000000
          Top = 56.692950000000030000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = 'STATUS'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
        end
        object frAtividades_AlunosnomeAgencia: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779529999999994000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nomeAgencia'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Memo.UTF8W = (
            '[frAtividades_Alunos."nomeAgencia"]')
        end
        object frAtividades_AlunosnomeDocente: TfrxMemoView
          Left = 98.267780000000000000
          Top = 60.472479999999990000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nomeDocente'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Memo.UTF8W = (
            '[frAtividades_Alunos."nomeDocente"]')
        end
        object frAtividades_AlunosnomeAtividade: TfrxMemoView
          Left = 98.267780000000000000
          Top = 30.236239999999980000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nomeAtividade'
          DataSet = frAtividades_Alunos
          DataSetName = 'frAtividades_Alunos'
          Memo.UTF8W = (
            '[frAtividades_Alunos."nomeAtividade"]')
        end
      end
    end
  end
  object frAtividades_Alunos: TfrxDBDataset
    UserName = 'frAtividades_Alunos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AI=AI'
      'ID_CADGERAL=ID_CADGERAL'
      'ID_ATIVIDADE=ID_ATIVIDADE'
      'nomeAtividade=nomeAtividade'
      'ID_AGENCIAFIN=ID_AGENCIAFIN'
      'nomeAgencia=nomeAgencia'
      'ID_DOCENTE=ID_DOCENTE'
      'nomeDocente=nomeDocente'
      'STATUS=STATUS'
      'DATAATIVINI=DATAATIVINI'
      'DATAATIVFIM=DATAATIVFIM'
      'DATAAGEINI=DATAAGEINI'
      'DATAAGEFIM=DATAAGEFIM'
      'DATAINC=DATAINC'
      'HORAINC=HORAINC'
      'USUARIO=USUARIO')
    DataSet = cdsAlunos_Atividades
    BCDToCurrency = False
    Left = 260
    Top = 144
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 294
    Top = 144
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Title = 'Relat'#243'rio de Alunos'
    Author = 'FastReport'
    Subject = 'Exportar Relat'#243'rio PDF'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 328
    Top = 144
  end
  object quAlunos_Atividades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from alunos_atividades')
    SQLConnection = dmLGN.dbLGN
    Left = 704
    Top = 9
    object quAlunos_AtividadesAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quAlunos_AtividadesID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object quAlunos_AtividadesID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object quAlunos_AtividadesID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object quAlunos_AtividadesID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quAlunos_AtividadesSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object quAlunos_AtividadesDATAATIVINI: TDateField
      FieldName = 'DATAATIVINI'
    end
    object quAlunos_AtividadesDATAATIVFIM: TDateField
      FieldName = 'DATAATIVFIM'
    end
    object quAlunos_AtividadesDATAAGEINI: TDateField
      FieldName = 'DATAAGEINI'
    end
    object quAlunos_AtividadesDATAAGEFIM: TDateField
      FieldName = 'DATAAGEFIM'
    end
    object quAlunos_AtividadesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAlunos_AtividadesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quAlunos_AtividadesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object pvAlunos_Atividades: TDataSetProvider
    DataSet = quAlunos_Atividades
    Left = 704
    Top = 57
  end
  object cdsAlunos_Atividades: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsAlunos
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvAlunos_Atividades'
    Left = 704
    Top = 105
    object cdsAlunos_AtividadesAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsAlunos_AtividadesID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsAlunos_AtividadesID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object cdsAlunos_AtividadesnomeAtividade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeAtividade'
      LookupDataSet = cdsAtividades
      LookupKeyFields = 'ai'
      LookupResultField = 'nome'
      KeyFields = 'ID_ATIVIDADE'
      Lookup = True
    end
    object cdsAlunos_AtividadesID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object cdsAlunos_AtividadesnomeAgencia: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeAgencia'
      LookupDataSet = cdsAgencias
      LookupKeyFields = 'ai'
      LookupResultField = 'nome'
      KeyFields = 'ID_AGENCIAFIN'
      Lookup = True
    end
    object cdsAlunos_AtividadesID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAlunos_AtividadesnomeDocente: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeDocente'
      LookupDataSet = cdsDocentes
      LookupKeyFields = 'ai'
      LookupResultField = 'nome'
      KeyFields = 'ID_DOCENTE'
      Size = 60
      Lookup = True
    end
    object cdsAlunos_AtividadesSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsAlunos_AtividadesDATAATIVINI: TDateField
      FieldName = 'DATAATIVINI'
    end
    object cdsAlunos_AtividadesDATAATIVFIM: TDateField
      FieldName = 'DATAATIVFIM'
    end
    object cdsAlunos_AtividadesDATAAGEINI: TDateField
      FieldName = 'DATAAGEINI'
    end
    object cdsAlunos_AtividadesDATAAGEFIM: TDateField
      FieldName = 'DATAAGEFIM'
    end
    object cdsAlunos_AtividadesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAlunos_AtividadesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAlunos_AtividadesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object dsAlunos_atividades: TDataSource
    DataSet = cdsAlunos_Atividades
    Left = 704
    Top = 153
  end
  object quAlunos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '       ai, id_cadgeral, nome, rg, cpf, id_usp, obs'
      'from'
      '       cad_geral')
    SQLConnection = dmLGN.dbLGN
    Left = 664
    Top = 8
    object quAlunosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quAlunosID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object quAlunosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quAlunosRG: TStringField
      FieldName = 'RG'
    end
    object quAlunosCPF: TStringField
      FieldName = 'CPF'
    end
    object quAlunosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quAlunosID_USP: TStringField
      FieldName = 'ID_USP'
    end
  end
  object pvAlunos: TDataSetProvider
    DataSet = quAlunos
    Left = 664
    Top = 56
  end
  object cdsAlunos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAlunos'
    AfterScroll = cdsAlunosAfterScroll
    Left = 664
    Top = 104
    object cdsAlunosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsAlunosID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object cdsAlunosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAlunosRG: TStringField
      FieldName = 'RG'
    end
    object cdsAlunosCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsAlunosID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object cdsAlunosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object dsAlunos: TDataSource
    DataSet = cdsAlunos
    Left = 664
    Top = 152
  end
  object fr: TfrxReport
    Version = '4.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42029.863395590300000000
    ReportOptions.LastChange = 42029.951586261600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 144
    Datasets = <
      item
        DataSet = frAividades
        DataSetName = 'frAtividaes'
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
        Height = 102.047310000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frAtividaes."NOME"'
        KeepTogether = True
        object Shape1: TfrxShapeView
          Top = 0.779529999999994100
          Width = 718.110700000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Color = 140
        end
        object Memo3: TfrxMemoView
          Left = 5.559060000000000000
          Top = 7.118115119999999000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID_Aluno:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 217.448980000000000000
          Top = 7.118115119999999000
          Width = 49.133890000000000000
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
        object Memo5: TfrxMemoView
          Left = 5.559060000000000000
          Top = 32.795300000000000000
          Width = 30.236240000000000000
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
        object Memo6: TfrxMemoView
          Left = 217.787570000000000000
          Top = 32.795300000000000000
          Width = 37.795300000000000000
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
        object Memo7: TfrxMemoView
          Left = 491.575140000000000000
          Top = 32.795300000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Num.USP:')
          ParentFont = False
        end
        object frAtividaesID_CADGERAL: TfrxMemoView
          Left = 69.590600000000000000
          Top = 7.559059999999988000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_CADGERAL'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAtividaes."ID_CADGERAL"]')
          ParentFont = False
        end
        object frAtividaesNOME: TfrxMemoView
          Left = 272.126160000000000000
          Top = 7.559059999999988000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAtividaes."NOME"]')
          ParentFont = False
        end
        object frAtividaesRG: TfrxMemoView
          Left = 43.811070000000000000
          Top = 33.015770000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'RG'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAtividaes."RG"]')
          ParentFont = False
        end
        object frAtividaesCPF: TfrxMemoView
          Left = 264.567100000000000000
          Top = 33.236240000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CPF'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAtividaes."CPF"]')
          ParentFont = False
        end
        object frAtividaesID_USP: TfrxMemoView
          Left = 565.929500000000000000
          Top = 33.015770000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_USP'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAtividaes."ID_USP"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 5.779530000000000000
          Top = 55.692950000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Obs:')
          ParentFont = False
        end
        object frAtividaesOBS: TfrxMemoView
          Left = 44.133890000000000000
          Top = 55.692950000000000000
          Width = 661.417750000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'OBS'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frAtividaes."OBS"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 79.370130000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frAividades
        DataSetName = 'frAtividaes'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 4.354360000000000000
          Top = 30.236222910000090000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Atividade:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999966000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ag'#234'ncia Fin:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 4.133890000000000000
          Top = 56.692915830000120000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Docente:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 422.409710000000000000
          Top = 3.779529999999966000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo de:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 421.614410000000000000
          Top = 30.236222910000090000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Per'#237'odo de:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 596.913730000000000000
          Top = 3.779529999999966000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'at'#233':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 597.740570000000000000
          Top = 30.236222909999980000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'at'#233':')
          ParentFont = False
        end
        object frAtividaesnomeAtividade: TfrxMemoView
          Left = 95.149660000000000000
          Top = 30.236240000000120000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nomeAtividade'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Memo.UTF8W = (
            '[frAtividaes."nomeAtividade"]')
        end
        object frAtividaesnomeAgencia: TfrxMemoView
          Left = 95.488250000000000000
          Top = 3.779529999999966000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nomeAgencia'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Memo.UTF8W = (
            '[frAtividaes."nomeAgencia"]')
        end
        object frAtividaesnomeDocente: TfrxMemoView
          Left = 94.488250000000000000
          Top = 56.692950000000000000
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nomeDocente'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Memo.UTF8W = (
            '[frAtividaes."nomeDocente"]')
        end
        object frAtividaesDATAATIVINI: TfrxMemoView
          Left = 507.457020000000000000
          Top = 4.236240000000009000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAATIVINI'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Memo.UTF8W = (
            '[frAtividaes."DATAATIVINI"]')
        end
        object frAtividaesDATAAGEFIM: TfrxMemoView
          Left = 632.181510000000000000
          Top = 4.236240000000009000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGEFIM'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Memo.UTF8W = (
            '[frAtividaes."DATAAGEFIM"]')
        end
        object frAtividaesDATAAGEINI: TfrxMemoView
          Left = 506.457020000000000000
          Top = 30.236240000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGEINI'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Memo.UTF8W = (
            '[frAtividaes."DATAAGEINI"]')
        end
        object frAtividaesDATAAGEFIM1: TfrxMemoView
          Left = 631.181510000000000000
          Top = 30.236240000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATAAGEFIM'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Memo.UTF8W = (
            '[frAtividaes."DATAAGEFIM"]')
        end
        object Memo14: TfrxMemoView
          Left = 610.283860000000000000
          Top = 55.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situa'#231#227'o:')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          ShiftMode = smDontShift
          Left = 691.653990000000000000
          Top = 55.692986609999990000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = 'STATUS'
          DataSet = frAividades
          DataSetName = 'frAtividaes'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Shape2: TfrxShapeView
          Width = 718.110700000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Color = clSilver
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 255.118275000000000000
          Top = 10.000000000000000000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Alunos')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 575.441250000000000000
          Top = 44.779530000000000000
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
          Top = 44.897650000000000000
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
          Left = 4.559060000000000000
          Top = 47.456710000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
        end
        object periodoAtividade: TfrxMemoView
          Left = 4.000000000000000000
          Top = 4.779530000000001000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[periodoAtividade]')
          ParentFont = False
        end
        object periodoAgencia: TfrxMemoView
          Left = 4.000000000000000000
          Top = 26.456710000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[periodoAgencia]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 415.748300000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.000000000000000000
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
          Top = 6.000000000000000000
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
          Top = 0.779530000000022500
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object qu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      
        '   c.ai, c.id_cadgeral, c.nome, c.rg, c.cpf, c.id_usp, c.obs,c.s' +
        'tatus,'
      '   a.id_atividade, a.id_agenciafin, a.id_docente, a.status,'
      '   a.dataativini, a.dataativfim, a.dataageini, a.dataagefim'
      'from'
      '   cad_geral c'
      'inner join '
      '   alunos_atividades a'
      'on'
      '   (c.ai = a.id_cadgeral)')
    SQLConnection = dmLGN.dbLGN
    Left = 568
    Top = 16
    object quAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object quNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quRG: TStringField
      FieldName = 'RG'
    end
    object quCPF: TStringField
      FieldName = 'CPF'
    end
    object quID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object quOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object quID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object quID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quDATAATIVINI: TDateField
      FieldName = 'DATAATIVINI'
    end
    object quDATAATIVFIM: TDateField
      FieldName = 'DATAATIVFIM'
    end
    object quDATAAGEINI: TDateField
      FieldName = 'DATAAGEINI'
    end
    object quDATAAGEFIM: TDateField
      FieldName = 'DATAAGEFIM'
    end
    object quSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object pv: TDataSetProvider
    DataSet = qu
    Left = 569
    Top = 56
  end
  object cds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'pv'
    Left = 570
    Top = 96
    object cdsAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsRG: TStringField
      FieldName = 'RG'
    end
    object cdsCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object cdsOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object cdsnomeAtividade: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeAtividade'
      LookupDataSet = cdsAtividades
      LookupKeyFields = 'ai'
      LookupResultField = 'nome'
      KeyFields = 'ID_ATIVIDADE'
      Lookup = True
    end
    object cdsID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object cdsnomeAgencia: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeAgencia'
      LookupDataSet = cdsAgencias
      LookupKeyFields = 'ai'
      LookupResultField = 'nome'
      KeyFields = 'ID_AGENCIAFIN'
      Lookup = True
    end
    object cdsID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsnomeDocente: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeDocente'
      LookupDataSet = cdsDocentes
      LookupKeyFields = 'ai'
      LookupResultField = 'nome'
      KeyFields = 'ID_DOCENTE'
      Lookup = True
    end
    object cdsDATAATIVINI: TDateField
      FieldName = 'DATAATIVINI'
    end
    object cdsDATAATIVFIM: TDateField
      FieldName = 'DATAATIVFIM'
    end
    object cdsDATAAGEINI: TDateField
      FieldName = 'DATAAGEINI'
    end
    object cdsDATAAGEFIM: TDateField
      FieldName = 'DATAAGEFIM'
    end
    object cdsSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object frAividades: TfrxDBDataset
    UserName = 'frAtividaes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AI=AI'
      'ID_CADGERAL=ID_CADGERAL'
      'NOME=NOME'
      'RG=RG'
      'CPF=CPF'
      'ID_USP=ID_USP'
      'OBS=OBS'
      'ID_ATIVIDADE=ID_ATIVIDADE'
      'nomeAtividade=nomeAtividade'
      'ID_AGENCIAFIN=ID_AGENCIAFIN'
      'nomeAgencia=nomeAgencia'
      'ID_DOCENTE=ID_DOCENTE'
      'nomeDocente=nomeDocente'
      'DATAATIVINI=DATAATIVINI'
      'DATAATIVFIM=DATAATIVFIM'
      'DATAAGEINI=DATAAGEINI'
      'DATAAGEFIM=DATAAGEFIM'
      'STATUS=STATUS')
    DataSet = cds
    BCDToCurrency = False
    Left = 96
    Top = 144
  end
  object ds: TDataSource
    DataSet = cds
    Left = 571
    Top = 136
  end
end
