object fmLanctoAusencias: TfmLanctoAusencias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Lancto. Aus'#234'ncias'
  ClientHeight = 302
  ClientWidth = 727
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
    Top = 191
    Width = 20
    Height = 13
    Caption = 'Tipo'
    FocusControl = cbTipoAusencia
  end
  object Label2: TLabel
    Left = 8
    Top = 207
    Width = 23
    Height = 13
    Caption = 'Obs:'
    FocusControl = memoObsAusencias
  end
  object Label3: TLabel
    Left = 192
    Top = 194
    Width = 52
    Height = 13
    Caption = 'Data Saida'
    FocusControl = editDataIni
  end
  object Label4: TLabel
    Left = 383
    Top = 194
    Width = 65
    Height = 13
    Caption = 'Data Retorno'
    FocusControl = editDataFim
  end
  object Label5: TLabel
    Left = 8
    Top = 11
    Width = 46
    Height = 13
    Caption = 'cadastro:'
    FocusControl = editId_Cadastro
  end
  object dbGridAusencias: TDBGrid
    Left = 8
    Top = 31
    Width = 570
    Height = 149
    DataSource = dsAusencias
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'tipo de aus'#234'ncia'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAINI'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAFIM'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'usu'#225'rio'
        Visible = True
      end>
  end
  object cbTipoAusencia: TDBComboBox
    Left = 36
    Top = 185
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    DataField = 'TIPO'
    DataSource = dsAusencias
    Enabled = False
    Items.Strings = (
      'F'#233'rias'
      'Abono'
      'Licen'#231'a M'#233'dica'
      'Licen'#231'a Pr'#234'mio'
      'Hora Extra')
    TabOrder = 1
  end
  object editDataIni: TcxDBDateEdit
    Left = 247
    Top = 186
    DataBinding.DataField = 'DATAINI'
    DataBinding.DataSource = dsAusencias
    Style.BorderStyle = ebs3D
    TabOrder = 2
    Width = 121
  end
  object editDataFim: TcxDBDateEdit
    Left = 457
    Top = 186
    DataBinding.DataField = 'DATAFIM'
    DataBinding.DataSource = dsAusencias
    Style.BorderStyle = ebs3D
    TabOrder = 3
    Width = 121
  end
  object memoObsAusencias: TDBMemo
    Left = 36
    Top = 210
    Width = 542
    Height = 56
    Ctl3D = False
    DataField = 'OBS'
    DataSource = dsAusencias
    ParentCtl3D = False
    TabOrder = 4
  end
  object btnIncluirAusencias: TBitBtn
    Left = 258
    Top = 272
    Width = 65
    Height = 25
    Caption = 'Incluir'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = btnIncluirAusenciasClick
  end
  object btnGravarAusencias: TBitBtn
    Left = 322
    Top = 272
    Width = 65
    Height = 25
    Caption = 'Gravar'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 6
    OnClick = btnGravarAusenciasClick
  end
  object btnEditarAusencias: TBitBtn
    Left = 386
    Top = 272
    Width = 65
    Height = 25
    Caption = 'Editar'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnEditarAusenciasClick
  end
  object btnExcluirAusencias: TBitBtn
    Left = 450
    Top = 272
    Width = 65
    Height = 25
    Caption = 'Excluir'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 8
    OnClick = btnExcluirAusenciasClick
  end
  object editId_Cadastro: TDBEdit
    Left = 60
    Top = 5
    Width = 101
    Height = 19
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'ID_CADGERAL'
    DataSource = dsCadGeral
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  object editNome: TDBEdit
    Left = 195
    Top = 5
    Width = 383
    Height = 19
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    DataField = 'NOME'
    DataSource = dsCadGeral
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 10
  end
  object btnPesquisarCidade: TBitBtn
    Left = 164
    Top = 2
    Width = 27
    Height = 24
    DoubleBuffered = True
    Glyph.Data = {
      BE020000424DBE02000000000000BE0100002800000010000000100000000100
      08000000000000010000120B0000120B0000620000006200000000000000FFFF
      FF00FF00FF00623C230062442D005339240072503300CB925E00DAA97600836E
      5800695A4600FFCF8900C2AC8600D4D0C9000A0A0900EDFFFF00F8FFFF0064A5
      AD003692AD0051D4FF00EEFBFF000089BC0039CAFF005CD3FF00091114000493
      C9000C96CF000FA1DC001CBFFF001EC1FF0021BCFB0021BAFA002BC2FE0031C2
      FF002882A50057D0FF005DBAE0008CDDFF00C1EDFF00D0F2FF000075AA00027F
      B600129DDD0017A1E0001CB1F2001BADEB001AA5E0001FB7F8001FB4F4001EAF
      ED003FC5FE0045ABD7004AADD7004093B8007ACEF40072BBDD008AC5DE009DCC
      E200D0EBF700006FA5000173AA000774AC00087AB5000B84C0001498D700148A
      C5001697D50018445B0044ABDE0041A0D00099D3EF00AAD0E300BFE5F7000474
      AF00056BA5000B5B88000C4B6D001680B8002182B60000578A00035A91000464
      9E00046099000454860000518800002A470000243D0002558E0002416A000351
      8800033E640006609A000E6096000D24330000447600013B650000386C00161D
      2300020202020202020202020202020202020202020202020202020202020202
      020202020202020202505853020202020202020202020202572205184B020202
      02020202020202571C120B045D0260600202020202572D4232240807615C6060
      5A02020257201345460F0D094344340A0E5F524D1725263A3539374E1A212E0C
      03565957481014273329283B192F1D11065557475738362316313F3C151B1E2A
      4C5E0257575741402C1F302B3D4F5B02020202020202024A513E495402020202
      0202020202020202020202020202020202020202020202020202020202020202
      0202020202020202020202020202020202020202020202020202020202020202
      0202}
    ParentDoubleBuffered = False
    TabOrder = 11
    OnClick = btnPesquisarCidadeClick
  end
  object btnSair: TBitBtn
    Left = 514
    Top = 272
    Width = 65
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
    TabOrder = 12
    OnClick = btnSairClick
  end
  object quCadGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_geral')
    SQLConnection = dmLGN.dbLGN
    Left = 640
    Top = 8
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
  end
  object quAusencias: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  funcionarios_ausencias'
      'where '
      '   id_cadgeral = :ai')
    SQLConnection = dmLGN.dbLGN
    Left = 680
    Top = 8
    object quAusenciasAI: TIntegerField
      FieldName = 'AI'
    end
    object quAusenciasID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
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
    object quAusenciasDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAusenciasHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quAusenciasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object pvCadGeral: TDataSetProvider
    DataSet = quCadGeral
    Left = 640
    Top = 56
  end
  object pvAusencias: TDataSetProvider
    DataSet = quAusencias
    Left = 680
    Top = 56
  end
  object cdsCadGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCadGeral'
    Left = 639
    Top = 104
    object cdsCadGeralAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCadGeralID_CADGERAL: TStringField
      DisplayLabel = 'id_cadastro:'
      FieldName = 'ID_CADGERAL'
    end
    object cdsCadGeralNOME: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
      Size = 60
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
  end
  object cdsAusencias: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsCadGeral
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvAusencias'
    Left = 680
    Top = 104
    object cdsAusenciasAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAusenciasID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsAusenciasTIPO: TStringField
      DisplayLabel = 'tipo aus'#234'ncia'
      FieldName = 'TIPO'
    end
    object cdsAusenciasDATAINI: TDateField
      DisplayLabel = 'dt. incial'
      FieldName = 'DATAINI'
    end
    object cdsAusenciasDATAFIM: TDateField
      DisplayLabel = 'dt. final'
      FieldName = 'DATAFIM'
    end
    object cdsAusenciasOBS: TStringField
      DisplayLabel = 'obs.'
      FieldName = 'OBS'
      Size = 200
    end
    object cdsAusenciasDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAusenciasHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAusenciasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object dsCadGeral: TDataSource
    AutoEdit = False
    DataSet = cdsCadGeral
    Left = 640
    Top = 152
  end
  object dsAusencias: TDataSource
    AutoEdit = False
    DataSet = cdsAusencias
    OnDataChange = dsAusenciasDataChange
    Left = 680
    Top = 152
  end
end
