inherited fmCadAlunos: TfmCadAlunos
  Caption = 'Cadastro de Alunos'
  ClientHeight = 415
  ClientWidth = 1123
  ExplicitWidth = 1129
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 13
  object JvEnterAsTab1: TJvEnterAsTab [0]
    Left = 720
    Top = 262
    Width = 28
    Height = 28
  end
  object Label10: TLabel [1]
    Left = 5
    Top = 14
    Width = 44
    Height = 13
    Caption = 'id_aluno:'
    FocusControl = editId_Aluno
  end
  object Label11: TLabel [2]
    Left = 5
    Top = 38
    Width = 30
    Height = 13
    Caption = 'nome:'
    FocusControl = editNome
  end
  object Label12: TLabel [3]
    Left = 5
    Top = 64
    Width = 19
    Height = 13
    Caption = 'cpf:'
    FocusControl = editCPF
  end
  object Label13: TLabel [4]
    Left = 219
    Top = 64
    Width = 14
    Height = 13
    Caption = 'rg:'
    FocusControl = editRG
  end
  object Label14: TLabel [5]
    Left = 392
    Top = 64
    Width = 48
    Height = 13
    Caption = 'num. usp:'
    FocusControl = editNumUsp
  end
  inherited pn: TPanel
    Top = 381
    Width = 1123
    TabOrder = 10
    ExplicitTop = 381
    ExplicitWidth = 1123
  end
  inherited dbnav: TDBNavigator
    DataSource = dsAlunos
    Hints.Strings = ()
  end
  inherited pc: TcxPageControl
    Top = 88
    TabOrder = 9
    ExplicitTop = 88
    inherited tsEnderecos: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 577
      ExplicitHeight = 257
      inherited editEndereco: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 1
      end
      inherited editNumero: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 2
      end
      inherited editCEP: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 4
      end
      inherited editComplemento: TDBEdit
        DataSource = dsEnderecos
      end
      inherited editID_Cidade: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 6
      end
      inherited editNomeCidade: TEdit
        TabOrder = 7
      end
      inherited btnIncluirEndereco: TBitBtn
        TabOrder = 8
      end
      inherited btnGravarEndereco: TBitBtn
        TabOrder = 9
      end
      inherited btnExcluirEndereco: TBitBtn
        TabOrder = 10
      end
      inherited dbGridEnderecos: TDBGrid
        DataSource = dsEnderecos
        TabOrder = 0
        Columns = <
          item
            Expanded = False
            FieldName = 'AI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FUNCIONARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_CIDADE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_ALUNO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Width = 321
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'HORAINC'
            Visible = False
          end>
      end
    end
    inherited tsTelefone: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 577
      ExplicitHeight = 257
      inherited Label8: TLabel
        FocusControl = cbTipoFone
      end
      inherited dbGridTelefones: TDBGrid
        Left = 3
        DataSource = dsTelefones
        Columns = <
          item
            Expanded = False
            FieldName = 'AI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FUNCIONARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_ALUNO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMAL'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DATAINC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'HORAINC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'calcNomeTipo'
            Width = 211
            Visible = True
          end>
      end
      inherited editTelefone: TDBEdit
        DataSource = dsTelefones
      end
      inherited editRamal: TDBEdit
        DataSource = dsTelefones
      end
    end
    inherited tsEmails: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 577
      ExplicitHeight = 257
      inherited dbGridEmail: TDBGrid
        DataSource = dsEmails
        Columns = <
          item
            Expanded = False
            FieldName = 'AI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_FUNCIONARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_ALUNO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'HORAINC'
            Visible = False
          end>
      end
      inherited editEmail: TDBEdit
        DataSource = dsEmails
      end
    end
    object tsAtividades: TcxTabSheet
      Caption = 'Atividades'
      ImageIndex = 3
      object Label17: TLabel
        Left = 0
        Top = 196
        Width = 59
        Height = 13
        Caption = 'Ag'#234'ncia Fin:'
        FocusControl = DBLookupAgenciaFin
      end
      object Label18: TLabel
        Left = 230
        Top = 196
        Width = 48
        Height = 13
        Caption = 'atividade:'
      end
      object dbGridAtividades: TDBGrid
        Left = 4
        Top = 4
        Width = 568
        Height = 174
        TabStop = False
        DataSource = dsAtividade_Alunos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbGridAtividadesDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NomeAtividade'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeAgencia'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAATIVINI'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAATIVFIM'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAAGEINI'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAAGEFIM'
            Visible = True
          end>
      end
      object DBLookupAgenciaFin: TDBLookupComboBox
        Left = 60
        Top = 188
        Width = 168
        Height = 21
        DataField = 'ID_AGENCIAFIN'
        DataSource = dsAtividade_Alunos
        KeyField = 'AI'
        ListField = 'NOME'
        ListSource = dsAgencia
        TabOrder = 1
      end
      object btnIncluirAtividades: TBitBtn
        Left = 299
        Top = 232
        Width = 90
        Height = 25
        Caption = 'Incluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = btnIncluirAtividadesClick
      end
      object btnGravarAtividades: TBitBtn
        Left = 388
        Top = 232
        Width = 90
        Height = 25
        Caption = 'Gravar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = btnGravarAtividadesClick
      end
      object btnExcluirAtividades: TBitBtn
        Left = 477
        Top = 232
        Width = 90
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = btnExcluirAtividadesClick
      end
      object DBLookupAtividade: TDBLookupComboBox
        Left = 279
        Top = 188
        Width = 173
        Height = 21
        DataField = 'ID_ATIVIDADE'
        DataSource = dsAtividade_Alunos
        KeyField = 'AI'
        ListField = 'NOME'
        ListSource = dsAtividade
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 454
        Top = 192
        Width = 117
        Height = 17
        Caption = 'Status da Atividade'
        DataField = 'STATUS'
        DataSource = dsAtividade_Alunos
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object editdataAtividadeIni: TcxDateEdit
        Left = 34
        Top = 48
        TabStop = False
        TabOrder = 7
        Visible = False
        OnEnter = editdataAtividadeIniEnter
        OnExit = editdataAtividadeIniExit
        Width = 121
      end
      object editdataAtividadeFim: TcxDateEdit
        Left = 161
        Top = 48
        TabStop = False
        TabOrder = 8
        Visible = False
        OnEnter = editdataAtividadeFimEnter
        OnExit = editdataAtividadeFimExit
        Width = 121
      end
      object editDataAgenciaIni: TcxDateEdit
        Left = 288
        Top = 48
        TabStop = False
        TabOrder = 9
        Visible = False
        OnEnter = editDataAgenciaIniEnter
        OnExit = editDataAgenciaIniExit
        Width = 121
      end
      object editDataAgenciaFim: TcxDateEdit
        Left = 415
        Top = 48
        TabStop = False
        TabOrder = 10
        Visible = False
        OnEnter = editDataAgenciaFimEnter
        OnExit = editDataAgenciaFimExit
        Width = 121
      end
    end
  end
  object ckStatus: TDBCheckBox [10]
    Left = 425
    Top = 12
    Width = 54
    Height = 17
    Caption = 'Status'
    Ctl3D = True
    DataField = 'STATUS'
    DataSource = dsAlunos
    ParentCtl3D = False
    TabOrder = 4
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object editId_Aluno: TDBEdit [11]
    Left = 54
    Top = 7
    Width = 106
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'ID_ALUNO'
    DataSource = dsAlunos
    TabOrder = 3
  end
  object editNome: TDBEdit [12]
    Left = 54
    Top = 31
    Width = 528
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsAlunos
    TabOrder = 5
    OnExit = editNomeExit
  end
  object editCPF: TDBEdit [13]
    Left = 54
    Top = 56
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = dsAlunos
    TabOrder = 6
    OnExit = editCPFExit
  end
  object editRG: TDBEdit [14]
    Left = 236
    Top = 56
    Width = 154
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RG'
    DataSource = dsAlunos
    TabOrder = 7
  end
  object editNumUsp: TDBEdit [15]
    Left = 446
    Top = 56
    Width = 136
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_USP'
    DataSource = dsAlunos
    TabOrder = 8
  end
  object Panel1: TPanel [16]
    Left = 1094
    Top = 0
    Width = 29
    Height = 381
    Align = alRight
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 8
      Width = 24
      Height = 22
      Glyph.Data = {
        22030000424D2203000000000000220200002800000010000000100000000100
        08000000000000010000120B0000120B00007B0000007B00000000000000FFFF
        FF00FF00FF00EFCFE700DCCFD800EBDBE500F0EBEE00F2EEF000A98A9600DFC2
        CD00B8859600AC7281009D788100F0ECED00A16E7A009A74770086595A00845C
        5C00E9DFDF00EFE9E900845B5A00835B5A00845C5B00845C5A007E5A5800CAAC
        A200AE4F2700CAA89900D8C1B5009D583200BB6B3E00F9E6DC00CEA99300A471
        4D009B715400BE520000AA490100AF5B1F00C8A78B00C7AB9400DBC1AB00D4BF
        AD00D16B0B00E9994A00D8B38A00D5BA9C00D0B089006B5B4800DCC5AA00C693
        5300C6945300CA9C5F00D7BE9D00E7A13800CA944500D1B08000D7B68600E5CF
        AF00E6DAC800EFAC4300DAB06E00DBB17100E1BB7D00E1BE8400E19F2F00EEAF
        3B00E6B96500E8CC9800EFCA7D00EDDCB600FAEDB800F3EBCB009E924A005D5C
        400066654A00737359005A6843005280390072946900316C270047994300006C
        000000680000016801000D6B0C00016A03005597570000710500047109000C78
        11000E7B1600107D1700107B1800117F1900077B110014841F00178422001A8A
        260015932700209B330033B24E0083B58D0020A83E003ABF5A0029B44C0035BD
        560040B75D0041CE6C004BE57A0051E57D006AE9910066CFFF0067D1FF005CC1
        F90052BAFF002A79BC00359BF80037A0FF001A64AE002882DB003498FA007694
        B900556C95000202025A5C5D5B59585502020202020202606467696866625F5E
        575202020202616D6C6B6A504D4E4B4C4F5453020202636E65481A241A09170E
        0B49510202026356032B1A1A1E04170C0A2F02020202024A0528201B191C170F
        08180202020202103927383D324017251D17020202020217463744423641172A
        23170202020202153A29302D262C17222117020202020214452E3F3C31351776
        76767676020202164734433E333B177670717376020202110D070613121F7976
        6F727602020202171717171717177A7676747576020202020202020202020202
        0276787776020202020202020202020202027676020202020202020202020202
        020202020202}
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 3
      Top = 29
      Width = 24
      Height = 22
      Glyph.Data = {
        0E030000424D0E030000000000000E0200002800000010000000100000000100
        08000000000000010000120B0000120B0000760000007600000000000000FFFF
        FF00FF00FF002F7B01002F7F02002E7B02002F8103002F8003002F7F03002B70
        05002862080024580700235507002F8006002F8307002B6F0A0029680B00255D
        0A00245A0A002F830900255E0C002D7F0D0028660E00286A0F0028650F002F87
        0F00286B0F00286811002B7013002B6F1300276A110025661100286B1200286A
        1200296E13002C7316002A7015002A721600286C16002C7A1900297518002A74
        18002C791A002B781A002A781B002D7F1D002B771B002F921E002D811E002D7E
        1E002D821F002D801F002D8420002D8321002E9622002E9323002F8E26002E8A
        25002D832300287820002E8B2600309128002E8E27002F8F28002E8B27002D89
        2600308E28002F8C28002F9129002F9029002F922A002F902A002D972A002B87
        28002F972D002F932C0030972E002F972E00309930002D992E002F9A30002F99
        32002C902E002F9830002B8A2D00309F35002D9331002E9C36002E9C37002D97
        36002EA03B002D9C39002D993A002FA741002D9D3F002C983D002DA444002DA5
        46002DA145002DA649002DAA4E002DA74B002CA54B002DAD54002CB158002CB0
        58002CAF58002CAD56002CAD57002CAC54002BAF59002DB55D002CB15B002DB2
        5C002CAD58002CB55E002CB460002CB15D000202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020231350202
        0202020202020202020224333F4C40320202020202020202162B3942384A4D46
        3E02020202021B1A0A303F4B5E5850514E1F0202182541271043606A756D5644
        5528142A3445471C0F2F4F617164222E5D2C0C293D3C57150807030D37686552
        4920122D5363703605080607045A5F1E0B021159736E6C674819130E09172102
        020202265C72706B74695B2321020202020202021D3A626F6654210202020202
        02020202021D1D3B210202020202020202020202020202020202020202020202
        020202020202020202020202020202020202}
      OnClick = SpeedButton2Click
    end
  end
  object quAlunos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CAD_ALUNOS')
    SQLConnection = dmLGN.dbLGN
    Left = 656
    Top = 16
    object quAlunosAI: TIntegerField
      FieldName = 'AI'
    end
    object quAlunosID_ALUNO: TStringField
      FieldName = 'ID_ALUNO'
      Size = 10
    end
    object quAlunosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object quAlunosCPF: TStringField
      FieldName = 'CPF'
    end
    object quAlunosRG: TStringField
      FieldName = 'RG'
    end
    object quAlunosID_USP: TStringField
      FieldName = 'ID_USP'
    end
    object quAlunosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object quAlunosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quAlunosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAlunosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quAlunosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object quEnderecos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CAD_ENDERECOS')
    SQLConnection = dmLGN.dbLGN
    Left = 720
    Top = 16
    object quEnderecosAI: TIntegerField
      FieldName = 'AI'
    end
    object quEnderecosID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object quEnderecosID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object quEnderecosID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object quEnderecosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object quEnderecosNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object quEnderecosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object quEnderecosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object quEnderecosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quEnderecosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object quTelefones: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CAD_TELEFONES')
    SQLConnection = dmLGN.dbLGN
    Left = 784
    Top = 16
    object quTelefonesAI: TIntegerField
      FieldName = 'AI'
    end
    object quTelefonesID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object quTelefonesID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object quTelefonesTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object quTelefonesRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 6
    end
    object quTelefonesTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object quTelefonesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quTelefonesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object quEmails: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CAD_EMAILS')
    SQLConnection = dmLGN.dbLGN
    Left = 843
    Top = 16
    object quEmailsAI: TIntegerField
      FieldName = 'AI'
    end
    object quEmailsID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object quEmailsID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object quEmailsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object quEmailsDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quEmailsHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvAlunos: TDataSetProvider
    DataSet = quAlunos
    Left = 656
    Top = 80
  end
  object pvEnderecos: TDataSetProvider
    DataSet = quEnderecos
    Left = 720
    Top = 80
  end
  object pvTelefones: TDataSetProvider
    DataSet = quTelefones
    Left = 784
    Top = 80
  end
  object pvEmails: TDataSetProvider
    DataSet = quEmails
    Left = 843
    Top = 80
  end
  object cdsAlunos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAlunos'
    AfterScroll = cdsAlunosAfterScroll
    Left = 656
    Top = 136
    object cdsAlunosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAlunosID_ALUNO: TStringField
      DisplayLabel = 'id_aluno:'
      FieldName = 'ID_ALUNO'
      Size = 10
    end
    object cdsAlunosNOME: TStringField
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
      Size = 60
    end
    object cdsAlunosCPF: TStringField
      DisplayLabel = 'cpf:'
      FieldName = 'CPF'
    end
    object cdsAlunosRG: TStringField
      DisplayLabel = 'rg:'
      FieldName = 'RG'
    end
    object cdsAlunosID_USP: TStringField
      DisplayLabel = 'num. usp:'
      FieldName = 'ID_USP'
    end
    object cdsAlunosSTATUS: TIntegerField
      DisplayLabel = 'status:'
      FieldName = 'STATUS'
    end
    object cdsAlunosOBS: TStringField
      DisplayLabel = 'obs:'
      FieldName = 'OBS'
      Size = 200
    end
    object cdsAlunosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAlunosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAlunosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object cdsEnderecos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ALUNO'
    MasterFields = 'AI'
    MasterSource = dsAlunos
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvEnderecos'
    OnNewRecord = cdsEnderecosNewRecord
    Left = 720
    Top = 136
    object cdsEnderecosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsEnderecosID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsEnderecosID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsEnderecosID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object cdsEnderecosENDERECO: TStringField
      DisplayLabel = 'endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsEnderecosNUMERO: TStringField
      DisplayLabel = 'num:'
      FieldName = 'NUMERO'
    end
    object cdsEnderecosCOMPLEMENTO: TStringField
      DisplayLabel = 'compl:'
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsEnderecosCEP: TStringField
      DisplayLabel = 'cep:'
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEnderecosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsEnderecosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object cdsTelefones: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ALUNO'
    MasterFields = 'AI'
    MasterSource = dsAlunos
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvTelefones'
    OnNewRecord = cdsTelefonesNewRecord
    Left = 784
    Top = 136
    object cdsTelefonesAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsTelefonesID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsTelefonesID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object cdsTelefonesTELEFONE: TStringField
      DisplayLabel = 'telefone:'
      FieldName = 'TELEFONE'
    end
    object cdsTelefonesRAMAL: TStringField
      DisplayLabel = 'ramal:'
      FieldName = 'RAMAL'
      Size = 6
    end
    object cdsTelefonesTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object cdsTelefonesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsTelefonesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsTelefonescalcNomeTipo: TStringField
      DisplayLabel = 'tipo fone:'
      FieldKind = fkCalculated
      FieldName = 'calcNomeTipo'
      Size = 10
      Calculated = True
    end
  end
  object cdsEmails: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ALUNO'
    MasterFields = 'AI'
    MasterSource = dsAlunos
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvEmails'
    OnNewRecord = cdsEmailsNewRecord
    Left = 843
    Top = 136
    object cdsEmailsAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsEmailsID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsEmailsID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object cdsEmailsEMAIL: TStringField
      DisplayLabel = 'e-mail:'
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsEmailsDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsEmailsHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsAlunos: TDataSource
    AutoEdit = False
    DataSet = cdsAlunos
    OnDataChange = dsAlunosDataChange
    Left = 656
    Top = 200
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    DataSet = cdsEnderecos
    Left = 720
    Top = 200
  end
  object dsTelefones: TDataSource
    AutoEdit = False
    DataSet = cdsTelefones
    Left = 784
    Top = 200
  end
  object dsEmails: TDataSource
    AutoEdit = False
    DataSet = cdsEmails
    Left = 843
    Top = 200
  end
  object JvBalloonHint1: TJvBalloonHint
    Images = dmImg.img
    UseBalloonAsApplicationHint = True
    Left = 656
    Top = 256
  end
  object quAtividades_Alunos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM ALUNOS_ATIVIDADES')
    SQLConnection = dmLGN.dbLGN
    Left = 904
    Top = 16
    object quAtividades_AlunosAI: TIntegerField
      FieldName = 'AI'
    end
    object quAtividades_AlunosID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object quAtividades_AlunosID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object quAtividades_AlunosID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object quAtividades_AlunosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object quAtividades_AlunosDATAATIVINI: TDateField
      FieldName = 'DATAATIVINI'
    end
    object quAtividades_AlunosDATAATIVFIM: TDateField
      FieldName = 'DATAATIVFIM'
    end
    object quAtividades_AlunosDATAAGEINI: TDateField
      FieldName = 'DATAAGEINI'
    end
    object quAtividades_AlunosDATAAGEFIM: TDateField
      FieldName = 'DATAAGEFIM'
    end
    object quAtividades_AlunosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAtividades_AlunosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvAtividades_Alunos: TDataSetProvider
    DataSet = quAtividades_Alunos
    Left = 904
    Top = 80
  end
  object cdsAtividades_Alunos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ALUNO'
    MasterFields = 'AI'
    MasterSource = dsAlunos
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvAtividades_Alunos'
    OnNewRecord = cdsAtividades_AlunosNewRecord
    Left = 904
    Top = 136
    object cdsAtividades_AlunosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAtividades_AlunosID_ALUNO: TIntegerField
      DisplayLabel = 'id_aluno:'
      FieldName = 'ID_ALUNO'
    end
    object cdsAtividades_AlunosID_ATIVIDADE: TIntegerField
      DisplayLabel = 'id_atividade'
      FieldName = 'ID_ATIVIDADE'
    end
    object cdsAtividades_AlunosID_AGENCIAFIN: TIntegerField
      DisplayLabel = 'id_agencia'
      FieldName = 'ID_AGENCIAFIN'
    end
    object cdsAtividades_AlunosSTATUS: TIntegerField
      DisplayLabel = 'status'
      FieldName = 'STATUS'
    end
    object cdsAtividades_AlunosDATAATIVINI: TDateField
      DisplayLabel = 'dt. in'#237'cio atv:'
      FieldName = 'DATAATIVINI'
    end
    object cdsAtividades_AlunosDATAATIVFIM: TDateField
      DisplayLabel = 'dt. fim atv:'
      FieldName = 'DATAATIVFIM'
    end
    object cdsAtividades_AlunosDATAAGEINI: TDateField
      DisplayLabel = 'dt. in'#237'cio ag'#234'ncia:'
      FieldName = 'DATAAGEINI'
    end
    object cdsAtividades_AlunosDATAAGEFIM: TDateField
      DisplayLabel = 'dt. fim ag'#234'ncia:'
      FieldName = 'DATAAGEFIM'
    end
    object cdsAtividades_AlunosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAtividades_AlunosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAtividades_AlunosNomeAgencia: TStringField
      DisplayLabel = 'ag'#234'ncia'
      FieldKind = fkLookup
      FieldName = 'NomeAgencia'
      LookupDataSet = cdsAgencia
      LookupKeyFields = 'AI'
      LookupResultField = 'NOME'
      KeyFields = 'ID_AGENCIAFIN'
      Size = 50
      Lookup = True
    end
    object cdsAtividades_AlunosNomeAtividade: TStringField
      DisplayLabel = 'atividade:'
      FieldKind = fkLookup
      FieldName = 'NomeAtividade'
      LookupDataSet = cdsAtividade
      LookupKeyFields = 'AI'
      LookupResultField = 'NOME'
      KeyFields = 'ID_ATIVIDADE'
      Size = 50
      Lookup = True
    end
  end
  object dsAtividade_Alunos: TDataSource
    AutoEdit = False
    DataSet = cdsAtividades_Alunos
    OnDataChange = dsAtividade_AlunosDataChange
    Left = 904
    Top = 200
  end
  object quAgencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CAD_AGENCIAFINANCIADORA')
    SQLConnection = dmLGN.dbLGN
    Left = 969
    Top = 15
    object quAgenciaAI: TIntegerField
      FieldName = 'AI'
    end
    object quAgenciaID_AGENCIAFIN: TStringField
      FieldName = 'ID_AGENCIAFIN'
      Size = 10
    end
    object quAgenciaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object quAgenciaDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAgenciaHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvAgencia: TDataSetProvider
    DataSet = quAgencia
    Left = 970
    Top = 79
  end
  object cdsAgencia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvAgencia'
    Left = 969
    Top = 136
    object cdsAgenciaAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAgenciaID_AGENCIAFIN: TStringField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'ID_AGENCIAFIN'
      Size = 10
    end
    object cdsAgenciaNOME: TStringField
      DisplayLabel = 'Nome:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAgenciaDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAgenciaHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsAgencia: TDataSource
    DataSet = cdsAgencia
    Left = 966
    Top = 200
  end
  object quAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CAD_ATIVIDADES')
    SQLConnection = dmLGN.dbLGN
    Left = 1034
    Top = 15
    object IntegerField1: TIntegerField
      FieldName = 'AI'
    end
    object StringField1: TStringField
      FieldName = 'ID_ATIVIDADE'
      Size = 10
    end
    object quAtividadesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DateField1: TDateField
      FieldName = 'DATAINC'
    end
    object TimeField1: TTimeField
      FieldName = 'HORAINC'
    end
    object quAtividadesFLAGESTAGIO: TIntegerField
      FieldName = 'FLAGESTAGIO'
    end
    object quAtividadesFLAGDOC: TIntegerField
      FieldName = 'FLAGDOC'
    end
    object quAtividadesFLAGPRATICA: TIntegerField
      FieldName = 'FLAGPRATICA'
    end
  end
  object pvAtividade: TDataSetProvider
    DataSet = quAtividade
    Left = 1035
    Top = 77
  end
  object cdsAtividade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvAtividade'
    Left = 1038
    Top = 135
    object IntegerField2: TIntegerField
      FieldName = 'AI'
    end
    object StringField2: TStringField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'ID_ATIVIDADE'
      Size = 10
    end
    object cdsAtividadesNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'NOME'
      Size = 50
    end
    object DateField2: TDateField
      FieldName = 'DATAINC'
    end
    object TimeField2: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAtividadesFLAGESTAGIO: TIntegerField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'FLAGESTAGIO'
    end
    object cdsAtividadesFLAGDOC: TIntegerField
      DisplayLabel = 'P'#243's D'#243'c.'
      FieldName = 'FLAGDOC'
    end
    object cdsAtividadesFLAGPRATICA: TIntegerField
      FieldName = 'FLAGPRATICA'
    end
  end
  object dsAtividade: TDataSource
    DataSet = cdsAtividade
    Left = 1038
    Top = 199
  end
  object img: TImageList
    Left = 192
    Top = 192
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      000000FF000000FF00000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF00000000000000000000000000000000007F7F7F0000FF
      00007F7F7F00000000000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      C003FFFF000000008003FFFF000000008003FCFF000000008003F8FF00000000
      8003F87F000000008003F27F000000008003C63F000000008003FF1F00000000
      8003FF9F000000008003FFCF000000008003FFE7000000008003FFF300000000
      8007FFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    AjustarTamanho = True
    PermiteVazio = True
    RaiseExcept = True
    Left = 264
    Top = 56
  end
end
