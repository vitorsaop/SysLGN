object fmCombustivelAvulso: TfmCombustivelAvulso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Combust'#237'vel Avulso'
  ClientHeight = 285
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 53
    Height = 13
    Caption = 'Solicitante:'
  end
  object Label2: TLabel
    Left = 8
    Top = 70
    Width = 60
    Height = 13
    Caption = 'combust'#237'vel:'
  end
  object Label3: TLabel
    Left = 272
    Top = 70
    Width = 47
    Height = 13
    Caption = 'custo litro'
  end
  object Label4: TLabel
    Left = 162
    Top = 70
    Width = 43
    Height = 13
    Caption = 'qtde (lt.)'
    FocusControl = editQtde
  end
  object Label5: TLabel
    Left = 257
    Top = 16
    Width = 38
    Height = 13
    Caption = 'dt. uso:'
  end
  object Label6: TLabel
    Left = 400
    Top = 70
    Width = 51
    Height = 13
    Caption = 'custo total'
  end
  object btnPesquisarCadastro: TBitBtn
    Left = 514
    Top = 45
    Width = 24
    Height = 24
    DoubleBuffered = True
    Enabled = False
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000975A700075C84000C6F
      9D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000670A4003F9AB8006E533B001521
      260018769F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000670A40031CDFF0050A8BF00FFDAA0007C5F
      45001B3B4C00FF00FF000052860000528600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000670A4002FBFF00028ACDF0059D2FE0078C9E700E3BB8F00D7A8
      7900283239001D7BAB0000528600005286000A587E00FF00FF00FF00FF00FF00
      FF000670A40043D0FE006CDEFF005CB4DB00AEDDF300F1FFFF00DEDBD5009B88
      73002C5F76005FBDE60065BFE000837561001716150004557F000C7BAE002998
      C80077DDFF00A3E5FF00CFF1FF00DBF0F9005AA9C800B1D8E9008BCAE500379A
      C6001AABDA004AD0FF002EB8E700D0BE9D007C563900023B5700086C9F000670
      A400CDEBF900FAFFFF00F2FCFF00DBF5FF0060BDE0000697C600008EBC000089
      B8000BA9D50034C7FA0033CFFF007EB8BF008B6B4C00014262000670A400BCDB
      EA000670A400A1D2E60093D9F70072DBFF0053D6FF0033C0F100189CCE00058C
      BC0000A0CB001FB5E40037CBFC0023B1E5001A668700025F8F00FF00FF000670
      A4000670A4000670A40026A1D20026ADE00031C2F50037C9FB0034C4F7002AB5
      E700128DBE000172A1000F7BAF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF000E85B8000C7EB2001393C5000B8DC000006C
      9F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnPesquisarCadastroClick
  end
  object btnNovo: TBitBtn
    Left = 8
    Top = 5
    Width = 89
    Height = 25
    Caption = 'Novo'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object mmOBS: TDBMemo
    Left = 8
    Top = 115
    Width = 530
    Height = 128
    Ctl3D = False
    DataField = 'OBS'
    DataSource = dsCombustivelAvulso
    ParentCtl3D = False
    TabOrder = 2
  end
  object editQtde: TDBEdit
    Left = 162
    Top = 85
    Width = 102
    Height = 21
    DataField = 'QTDE'
    DataSource = dsCombustivelAvulso
    TabOrder = 3
    OnExit = editQtdeExit
    OnKeyPress = editQtdeKeyPress
  end
  object editCustoLitro: TDBEdit
    Left = 271
    Top = 87
    Width = 117
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'CUSTOLITRO'
    DataSource = dsCombustivelAvulso
    ParentCtl3D = False
    TabOrder = 4
    OnExit = editCustoLitroExit
  end
  object btnSair: TBitBtn
    Left = 463
    Top = 253
    Width = 75
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009A66660069333400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF009A6666009A666600B9666600BB68680069333400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF009A6666009A666600C66A6B00D06A6B00D2686900C3686900693334009A66
      66009A6666009A6666009A6666009A6666009A666600FF00FF00FF00FF00FF00
      FF009A666600DE737400D7707100D56F7000D56D6E00C76A6D0069333400FEA2
      A300FCAFB000FABCBD00F9C5C600F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600E0777800DB757600DA747500DA727300CC6E71006933340039C5
      650025CF630029CC630019CB5B00F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600E57D7E00E07A7B00DF797A00DF777800D07275006933340042C4
      680030CD670033CB670024CB6000F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600EA828300E57F8000E37D7E00E6808100D3747600693334003DC2
      640029CB63002FCA640020CA5E00F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600F0878800E9818200EC969700FBDDDE00D8888A0069333400B8E1
      AC006BDC89005DD5800046D47300F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600F58C8D00EE868700F0999A00FDDCDD00DA888A0069333400FFF5
      D800FFFFE000FFFFDE00ECFDD400F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600FA919200F48E8F00F28B8C00F48C8D00DC7F800069333400FDF3
      D400FFFFDF00FFFFDD00FFFFE000F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600FE979800F9939400F8929300F9909200E085850069333400FDF3
      D400FFFFDF00FFFFDD00FFFFDF00F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600FF9B9C00FD979800FC969700FE979800E388890069333400FDF3
      D400FFFFDF00FFFFDD00FFFFDF00F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A666600FF9FA000FF9A9B00FF999A00FF9A9B00E78C8D0069333400FDF3
      D400FFFFDF00FFFFDD00FFFFDF00F9C5C6009A666600FF00FF00FF00FF00FF00
      FF009A6666009A666600E98E8F00FE999A00FF9D9E00EB8F900069333400FBF0
      D200FDFCDC00FDFCDA00FDFCDC00F9C5C6009A666600FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF009A666600B0717200D7868700DA888800693334009A66
      66009A6666009A6666009A6666009A6666009A666600FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF009A6666009A66660069333400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnSairClick
  end
  object btnGravar: TBitBtn
    Left = 388
    Top = 253
    Width = 75
    Height = 25
    Caption = 'Gravar'
    DoubleBuffered = True
    Enabled = False
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000010000FF00FF000449
      0600044C0600055B0900045D09000560090005650B0006670C0005680C00066C
      0C000A6A1500087210000A7F15000F7C1F0007831000078410000A8517000F82
      1C000796140008911300089413000F911D0008A3170008AB170007B1160008B1
      170009B2180008B419000CB31C000BB61C000EB41E0009B91A000F852200138D
      23001B9A3A0013B4230017B62B0010B92A0016AE340018B7360016BD340020B9
      2F0025AE390025BB330014C030001BBD40001DBB450024A3420028BD470021B6
      490020BE490022BC4D0032B74E002FB157002AB65B0037B6500043B964001FC1
      46002FC042002AC053002AC65B003DC45C0028C063002EC267002CC5650035C3
      630030C3690036C56A0037C26C0033C76C0036C46D0038C56F0039CB6A0038C6
      70004DC7580045C8690059CB640052C46F0052CA6D0042C8770045C9780048CA
      79005DC87D0051CC810058CC83005FD38D0061CB800066CC810071D28C0064D4
      92006FD293006BD4930072D6990084D89F008ADB980080DAA30082DBA40099E1
      AE0091E2B3009BE5BA00AAE4AF00A0E3BA00B9E9BD00A6E7C200A8E6C100ACE7
      C200AEE8C500BAEDD100BCEDD200C0EBC400C2ECCB00CBEFD000CCF2DE00D1F1
      D900D0F1DD00D2F4E100DBF4E100DCF5E500DBF7EA00E3F6E500E5F7EA00EBF9
      F100EEFAF200F2FBF300FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      030909030100000000000000000505131919191912090500000000000A0C191F
      191B191F1F1F0F010000000A20283A231B19191919191F0F0900000A322D5E24
      1919191919191F1F05000B223C2D6F2B191919191B1B191F12030B3640327B4C
      1B1B1B4A23181B1B1B03114444447A754B3B3B6D641B1B1B170521544F446A7C
      7B6861777C662B1B190B155A554450727C7C7C7C7C7C6E241B0515576344444F
      65757C7C7C784E25160500376C604040494F5C7C723D272C1100003758735F44
      40445468413239260F0000002A5D76685A534F505148310D000000000057576A
      726C67625937350000000000000000344D5752382F0000000000}
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnGravarClick
  end
  object cbCombustivel: TDBLookupComboBox
    Left = 8
    Top = 85
    Width = 145
    Height = 21
    DataField = 'ID_COMBUSTIVEL'
    DataSource = dsCombustivelAvulso
    KeyField = 'AI'
    ListField = 'COMBUSTIVEL'
    ListSource = dsCombustivel
    TabOrder = 7
    OnClick = cbCombustivelClick
    OnExit = cbCombustivelExit
  end
  object editNomeSolicitante: TDBEdit
    Left = 8
    Top = 48
    Width = 500
    Height = 19
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'CalcNomeSolicitante'
    DataSource = dsCombustivelAvulso
    ParentCtl3D = False
    TabOrder = 8
  end
  object dbNav: TcxDBNavigator
    Left = 426
    Top = 5
    Width = 112
    Height = 25
    Buttons.ConfirmDelete = False
    Buttons.PriorPage.Enabled = False
    Buttons.PriorPage.Visible = False
    Buttons.Prior.Visible = True
    Buttons.NextPage.Enabled = False
    Buttons.NextPage.Visible = False
    Buttons.Insert.Enabled = False
    Buttons.Insert.Visible = False
    Buttons.Append.Enabled = False
    Buttons.Append.Visible = False
    Buttons.Delete.Enabled = False
    Buttons.Delete.Visible = False
    Buttons.Edit.Enabled = False
    Buttons.Edit.Visible = False
    Buttons.Post.Enabled = False
    Buttons.Post.Visible = False
    Buttons.Cancel.Enabled = False
    Buttons.Cancel.Visible = False
    Buttons.Refresh.Enabled = False
    Buttons.Refresh.Visible = False
    Buttons.SaveBookmark.Enabled = False
    Buttons.SaveBookmark.Visible = False
    Buttons.GotoBookmark.Enabled = False
    Buttons.GotoBookmark.Visible = False
    Buttons.Filter.Enabled = False
    Buttons.Filter.Visible = False
    DataSource = dsCombustivelAvulso
    InfoPanel.Font.Charset = DEFAULT_CHARSET
    InfoPanel.Font.Color = clDefault
    InfoPanel.Font.Height = -11
    InfoPanel.Font.Name = 'Tahoma'
    InfoPanel.Font.Style = []
    TabOrder = 9
  end
  object editData: TcxDBDateEdit
    Left = 299
    Top = 8
    DataBinding.DataField = 'DATAUSO'
    DataBinding.DataSource = dsCombustivelAvulso
    TabOrder = 10
    Width = 121
  end
  object editCustoTotal: TDBEdit
    Left = 399
    Top = 85
    Width = 138
    Height = 21
    DataField = 'CUSTOTOTALGERAL'
    DataSource = dsCombustivelAvulso
    TabOrder = 11
  end
  object btnEditar: TBitBtn
    Left = 313
    Top = 253
    Width = 75
    Height = 25
    Caption = 'Editar'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 12
    OnClick = btnEditarClick
  end
  object quCombustivelAvulso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from combustivel_avulso')
    SQLConnection = dmLGN.dbLGN
    Left = 592
    Top = 8
    object quCombustivelAvulsoAI: TIntegerField
      FieldName = 'AI'
    end
    object quCombustivelAvulsoID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quCombustivelAvulsoID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object quCombustivelAvulsoCUSTOLITRO: TFMTBCDField
      FieldName = 'CUSTOLITRO'
      Precision = 12
      Size = 2
    end
    object quCombustivelAvulsoCUSTOTOTALGERAL: TFMTBCDField
      FieldName = 'CUSTOTOTALGERAL'
      Precision = 12
      Size = 2
    end
    object quCombustivelAvulsoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object quCombustivelAvulsoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quCombustivelAvulsoDATAUSO: TDateField
      FieldName = 'DATAUSO'
    end
  end
  object pvCombustivelAvulso: TDataSetProvider
    DataSet = quCombustivelAvulso
    Left = 592
    Top = 64
  end
  object cdsCombustivelAvulso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCombustivelAvulso'
    OnCalcFields = cdsCombustivelAvulsoCalcFields
    Left = 592
    Top = 112
    object cdsCombustivelAvulsoAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsCombustivelAvulsoID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsCombustivelAvulsoID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object cdsCombustivelAvulsoCUSTOLITRO: TFMTBCDField
      DisplayLabel = 'custo litro'
      FieldName = 'CUSTOLITRO'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsCombustivelAvulsoCUSTOTOTALGERAL: TFMTBCDField
      DisplayLabel = 'custo total'
      FieldName = 'CUSTOTOTALGERAL'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsCombustivelAvulsoQTDE: TFloatField
      DisplayLabel = 'qtde (lt.)'
      FieldName = 'QTDE'
      DisplayFormat = ',0.00'
    end
    object cdsCombustivelAvulsoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsCombustivelAvulsoCalcNomeSolicitante: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalcNomeSolicitante'
      Size = 60
      Calculated = True
    end
    object cdsCombustivelAvulsoDATAUSO: TDateField
      DisplayLabel = 'dt. uso:'
      FieldName = 'DATAUSO'
    end
  end
  object dsCombustivelAvulso: TDataSource
    AutoEdit = False
    DataSet = cdsCombustivelAvulso
    OnDataChange = dsCombustivelAvulsoDataChange
    Left = 592
    Top = 160
  end
  object quCombustivel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_combustivel')
    SQLConnection = dmLGN.dbLGN
    Left = 632
    Top = 8
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
  object quCombustivel_Valores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from combustivel_valores')
    SQLConnection = dmLGN.dbLGN
    Left = 672
    Top = 8
    object quCombustivel_ValoresAI: TIntegerField
      FieldName = 'AI'
      Required = True
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
  object pvCombustivel: TDataSetProvider
    DataSet = quCombustivel
    Left = 632
    Top = 64
  end
  object pvCombustivel_Valores: TDataSetProvider
    DataSet = quCombustivel_Valores
    Left = 672
    Top = 64
  end
  object cdsCombustivel: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvCombustivel'
    Left = 632
    Top = 112
    object cdsCombustivelAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCombustivelID_COMBUSTIVEL: TStringField
      FieldName = 'ID_COMBUSTIVEL'
      Size = 10
    end
    object cdsCombustivelCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 30
    end
  end
  object cdsCombustivel_Valores: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_COMBUSTIVEL'
    MasterFields = 'AI'
    MasterSource = dsCombustivel
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvCombustivel_Valores'
    Left = 672
    Top = 112
    object cdsCombustivel_ValoresAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCombustivel_ValoresID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object cdsCombustivel_ValoresCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 12
      Size = 2
    end
    object cdsCombustivel_ValoresDATACUSTO: TDateField
      FieldName = 'DATACUSTO'
    end
    object cdsCombustivel_ValoresSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object dsCombustivel: TDataSource
    AutoEdit = False
    DataSet = cdsCombustivel
    Left = 632
    Top = 160
  end
  object dsCombustivel_Valores: TDataSource
    AutoEdit = False
    DataSet = cdsCombustivel_Valores
    Left = 672
    Top = 160
  end
end
