inherited fmCadGeral: TfmCadGeral
  Caption = 'Cadastro de Geral (Func. / Docente / Alunos/ Outros)'
  ClientHeight = 412
  ClientWidth = 1324
  ExplicitLeft = -479
  ExplicitWidth = 1330
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  object JvEnterAsTab1: TJvEnterAsTab [0]
    Left = 702
    Top = 256
    Width = 28
    Height = 28
  end
  object Label11: TLabel [1]
    Left = 5
    Top = 39
    Width = 30
    Height = 13
    Caption = 'nome:'
    FocusControl = editNome
  end
  object Label12: TLabel [2]
    Left = 5
    Top = 64
    Width = 19
    Height = 13
    Caption = 'cpf:'
    FocusControl = editCPF
  end
  object Label13: TLabel [3]
    Left = 217
    Top = 64
    Width = 14
    Height = 13
    Caption = 'rg:'
    FocusControl = editRG
  end
  object Label14: TLabel [4]
    Left = 396
    Top = 64
    Width = 48
    Height = 13
    Caption = 'num. usp:'
    FocusControl = editNumUSP
  end
  object Label10: TLabel [5]
    Left = 6
    Top = 14
    Width = 35
    Height = 13
    Caption = 'id_cad:'
  end
  inherited pn: TPanel
    Top = 378
    Width = 1324
    TabOrder = 11
    ExplicitTop = 378
    ExplicitWidth = 1324
  end
  inherited btnNovo: TBitBtn
    TabOrder = 0
  end
  inherited pc: TcxPageControl
    Top = 86
    Width = 580
    Height = 285
    TabOrder = 10
    ExplicitTop = 86
    ExplicitWidth = 580
    ExplicitHeight = 285
    ClientRectBottom = 285
    ClientRectRight = 580
    inherited tsEnderecos: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 580
      ExplicitHeight = 261
      inherited editEndereco: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 2
      end
      inherited editNumero: TDBEdit
        Top = 155
        DataSource = dsEnderecos
        TabOrder = 3
        ExplicitTop = 155
      end
      inherited editCEP: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 6
      end
      inherited editComplemento: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 5
      end
      inherited editID_Cidade: TDBEdit
        DataSource = dsEnderecos
        TabOrder = 8
      end
      inherited btnPesquisarCidade: TBitBtn
        TabOrder = 7
        OnClick = btnPesquisarCidadeClick
      end
      inherited btnIncluirEndereco: TBitBtn
        TabOrder = 1
      end
      inherited btnGravarEndereco: TBitBtn
        TabOrder = 9
      end
      inherited dbGridEnderecos: TDBGrid
        Left = 3
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
            FieldName = 'ID_CADGERAL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_CIDADE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Width = 303
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Width = 85
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
          end
          item
            Expanded = False
            FieldName = 'NOMECIDADE'
            Width = 238
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CalcUF'
            Visible = False
          end>
      end
      inherited editNomeCidade: TDBEdit
        Left = 178
        DataField = 'NOMECIDADE'
        DataSource = dsEnderecos
        TabOrder = 12
        ExplicitLeft = 178
      end
      inherited editBairro: TDBEdit
        DataField = 'BAIRRO'
        DataSource = dsEnderecos
        TabOrder = 4
      end
      inherited btnExcluirEndereco: TBitBtn
        TabOrder = 10
      end
    end
    inherited tsTelefone: TcxTabSheet
      ExplicitWidth = 580
      ExplicitHeight = 261
      inherited Label6: TLabel
        Left = 5
        Top = 153
        ExplicitLeft = 5
        ExplicitTop = 153
      end
      inherited Label7: TLabel
        Left = 239
        Top = 154
        ExplicitLeft = 239
        ExplicitTop = 154
      end
      inherited Label8: TLabel
        Left = 374
        Top = 153
        FocusControl = cbTipoFone
        ExplicitLeft = 374
        ExplicitTop = 153
      end
      object Label22: TLabel [3]
        Left = 5
        Top = 171
        Width = 23
        Height = 13
        Caption = 'Obs:'
      end
      inherited dbGridTelefones: TDBGrid
        Height = 135
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
            FieldName = 'TELEFONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMAL'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 233
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
          end
          item
            Expanded = False
            FieldName = 'calcNomeTipo'
            Visible = False
          end>
      end
      inherited editTelefone: TDBEdit
        Left = 52
        Top = 145
        DataSource = dsTelefones
        ExplicitLeft = 52
        ExplicitTop = 145
      end
      inherited editRamal: TDBEdit
        Left = 274
        Top = 145
        DataSource = dsTelefones
        ExplicitLeft = 274
        ExplicitTop = 145
      end
      inherited btnIncluirTelefone: TBitBtn
        TabOrder = 5
      end
      inherited btnGravarTelefone: TBitBtn
        TabOrder = 6
      end
      inherited cbTipoFone: TDBComboBox
        Top = 145
        Style = csDropDownList
        DataField = 'TIPO'
        DataSource = dsTelefones
        Items.Strings = (
          'Residencial'
          'Celular'
          'Trabalho'
          'Outros')
        TabOrder = 3
        ExplicitTop = 145
      end
      inherited btnEditarTelefone: TBitBtn
        TabOrder = 7
      end
      inherited btnExcluirTelefone: TBitBtn
        TabOrder = 8
      end
      object memoObsTelefone: TDBMemo
        Left = 52
        Top = 171
        Width = 520
        Height = 56
        Ctl3D = False
        DataField = 'OBS'
        DataSource = dsTelefones
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    inherited tsEmails: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 580
      ExplicitHeight = 261
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
    object tsAusencias: TcxTabSheet
      Caption = 'Aus'#234'ncias'
      ImageIndex = 3
      object Label15: TLabel
        Left = 5
        Top = 154
        Width = 20
        Height = 13
        Caption = 'Tipo'
        FocusControl = cbTipoAusencia
      end
      object Label16: TLabel
        Left = 189
        Top = 154
        Width = 52
        Height = 13
        Caption = 'Data Saida'
        FocusControl = editDataIni
      end
      object Label17: TLabel
        Left = 380
        Top = 154
        Width = 65
        Height = 13
        Caption = 'Data Retorno'
        FocusControl = editDataFim
      end
      object Label18: TLabel
        Left = 5
        Top = 170
        Width = 23
        Height = 13
        Caption = 'Obs:'
        FocusControl = memoObsAusencias
      end
      object dbGridAusencias: TDBGrid
        Left = 5
        Top = 4
        Width = 570
        Height = 135
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
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINI'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFIM'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Title.Caption = 'obs'
            Width = 429
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Caption = 'usu'#225'rio'
            Visible = True
          end>
      end
      object btnIncluirAusencias: TBitBtn
        Left = 319
        Top = 232
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
        Left = 383
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Gravar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = btnGravarAusenciasClick
      end
      object memoObsAusencias: TDBMemo
        Left = 33
        Top = 170
        Width = 542
        Height = 56
        Ctl3D = False
        DataField = 'OBS'
        DataSource = dsAusencias
        ParentCtl3D = False
        TabOrder = 4
      end
      object editDataIni: TcxDBDateEdit
        Left = 244
        Top = 146
        DataBinding.DataField = 'DATAINI'
        DataBinding.DataSource = dsAusencias
        Style.BorderStyle = ebs3D
        TabOrder = 2
        Width = 121
      end
      object editDataFim: TcxDBDateEdit
        Left = 454
        Top = 146
        DataBinding.DataField = 'DATAFIM'
        DataBinding.DataSource = dsAusencias
        Style.BorderStyle = ebs3D
        TabOrder = 3
        Width = 121
      end
      object cbTipoAusencia: TDBComboBox
        Left = 33
        Top = 145
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
          'Hora Extra'
          'Outros')
        TabOrder = 1
      end
      object btnEditarAusencias: TBitBtn
        Left = 447
        Top = 232
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
        Left = 511
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 8
        OnClick = btnExcluirAusenciasClick
      end
    end
    object tsAtividade: TcxTabSheet
      Caption = 'Atividade'
      ImageIndex = 5
      object Label20: TLabel
        Left = 0
        Top = 180
        Width = 59
        Height = 13
        Caption = 'Ag'#234'ncia Fin:'
        FocusControl = DBLookupAgenciaFin
      end
      object Label21: TLabel
        Left = 230
        Top = 180
        Width = 48
        Height = 13
        Caption = 'atividade:'
        FocusControl = DBLookupAtividade
      end
      object docente: TLabel
        Left = 0
        Top = 207
        Width = 44
        Height = 13
        Caption = 'Docente:'
        FocusControl = editID_Docente
      end
      object DBLookupAgenciaFin: TDBLookupComboBox
        Left = 60
        Top = 172
        Width = 168
        Height = 21
        DataField = 'ID_AGENCIAFIN'
        DataSource = dsAtividade_Alunos
        KeyField = 'AI'
        ListField = 'NOME'
        ListSource = dsAgencia
        TabOrder = 1
      end
      object DBLookupAtividade: TDBLookupComboBox
        Left = 279
        Top = 172
        Width = 173
        Height = 21
        DataField = 'ID_ATIVIDADE'
        DataSource = dsAtividade_Alunos
        KeyField = 'AI'
        ListField = 'NOME'
        ListSource = dsAtividade
        TabOrder = 2
      end
      object DBCheckBox2: TDBCheckBox
        Left = 454
        Top = 176
        Width = 117
        Height = 17
        Caption = 'Status da Atividade'
        DataField = 'STATUS'
        DataSource = dsAtividade_Alunos
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dbGridAtividades: TDBGrid
        Left = 3
        Top = 3
        Width = 568
        Height = 157
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
        OnDblClick = dbGridAtividadesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'LKNOMEATIVIDADE'
            Width = 184
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LKNOMEAGENCIA'
            Width = 193
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAATIVFIM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAAGEINI'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAAGEFIM'
            Visible = True
          end>
      end
      object btnIncluirAtividades: TBitBtn
        Left = 314
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Incluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = btnIncluirAtividadesClick
      end
      object btnGravarAtividades: TBitBtn
        Left = 378
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Gravar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = btnGravarAtividadesClick
      end
      object editID_Docente: TDBEdit
        Left = 61
        Top = 200
        Width = 80
        Height = 21
        DataField = 'ID_DOCENTE'
        DataSource = dsAtividade_Alunos
        Enabled = False
        TabOrder = 6
      end
      object btnPesquisarDocente: TBitBtn
        Left = 145
        Top = 198
        Width = 27
        Height = 24
        DoubleBuffered = True
        Enabled = False
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
        TabOrder = 7
        OnClick = btnPesquisarDocenteClick
      end
      object editNomeDocente: TDBEdit
        Left = 176
        Top = 200
        Width = 395
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Color = 10813439
        Ctl3D = False
        DataField = 'LKNOMEDOCENTE'
        DataSource = dsAtividade_Alunos
        ParentCtl3D = False
        TabOrder = 8
      end
      object btnEditarAtividades: TBitBtn
        Left = 442
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Editar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 9
        OnClick = btnEditarAtividadesClick
      end
      object btnExcluirAtividades: TBitBtn
        Left = 506
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 10
        OnClick = btnExcluirAtividadesClick
      end
    end
    object tsAdicionais: TcxTabSheet
      Caption = 'Dados Adicionais'
      ImageIndex = 4
      object Label19: TLabel
        Left = 3
        Top = 7
        Width = 21
        Height = 13
        Caption = 'obs:'
        FocusControl = memoOBS
      end
      object memoOBS: TDBMemo
        Left = 46
        Top = 7
        Width = 526
        Height = 89
        Ctl3D = False
        DataField = 'OBS'
        DataSource = dsCadGeral
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
  object editId_Cad: TDBEdit [9]
    Left = 54
    Top = 7
    Width = 106
    Height = 19
    TabStop = False
    CharCase = ecUpperCase
    Ctl3D = False
    DataField = 'ID_CADGERAL'
    DataSource = dsCadGeral
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object editNome: TDBEdit [10]
    Left = 54
    Top = 31
    Width = 459
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsCadGeral
    TabOrder = 5
  end
  object editRG: TDBEdit [11]
    Left = 233
    Top = 56
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RG'
    DataSource = dsCadGeral
    TabOrder = 7
  end
  object editCPF: TDBEdit [12]
    Left = 54
    Top = 56
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = dsCadGeral
    TabOrder = 6
  end
  object editNumUSP: TDBEdit [13]
    Left = 445
    Top = 56
    Width = 140
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_USP'
    DataSource = dsCadGeral
    TabOrder = 8
  end
  object ckStatus: TDBCheckBox [14]
    Left = 267
    Top = 2
    Width = 54
    Height = 17
    Caption = 'Status'
    Ctl3D = True
    DataField = 'STATUS'
    DataSource = dsCadGeral
    ParentCtl3D = False
    TabOrder = 1
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object ckDocente: TDBCheckBox [15]
    Left = 521
    Top = 2
    Width = 61
    Height = 17
    TabStop = False
    Caption = 'Docente'
    DataField = 'FLAGDOCENTE'
    DataSource = dsCadGeral
    TabOrder = 12
    ValueChecked = '1'
    ValueUnchecked = '0'
    OnClick = ckDocenteClick
  end
  object ckOutros: TDBCheckBox [16]
    Left = 521
    Top = 32
    Width = 60
    Height = 17
    TabStop = False
    Caption = 'Outros'
    DataField = 'FLAGOUTROS'
    DataSource = dsCadGeral
    TabOrder = 9
    ValueChecked = '1'
    ValueUnchecked = '0'
    OnClick = ckOutrosClick
  end
  object ckAluno: TDBCheckBox [17]
    Left = 521
    Top = 17
    Width = 49
    Height = 17
    TabStop = False
    Caption = 'Aluno'
    DataField = 'FLAGALUNO'
    DataSource = dsCadGeral
    TabOrder = 4
    ValueChecked = '1'
    ValueUnchecked = '0'
    OnClick = ckAlunoClick
  end
  inherited dbNav: TcxDBNavigator
    Left = 400
    Top = 1
    DataSource = dsCadGeral
    ExplicitLeft = 400
    ExplicitTop = 1
  end
  inherited act: TActionList
    Left = 224
    Top = 192
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
  object quEnderecos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '   cad_enderecos'
      'where '
      '   id_cadgeral = :ai')
    SQLConnection = dmLGN.dbLGN
    Left = 696
    Top = 8
    object quEnderecosAI: TIntegerField
      FieldName = 'AI'
    end
    object quEnderecosID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object quEnderecosID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object quEnderecosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object quEnderecosNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object quEnderecosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object quEnderecosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object quEnderecosUSUARIO: TStringField
      FieldName = 'USUARIO'
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
    Params = <
      item
        DataType = ftInteger
        Name = 'AI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  cad_telefones'
      'where'
      '  id_cadgeral = :ai')
    SQLConnection = dmLGN.dbLGN
    Left = 752
    Top = 8
    object quTelefonesAI: TIntegerField
      FieldName = 'AI'
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
    object quTelefonesOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quTelefonesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object quTelefonesTIPO: TStringField
      DisplayLabel = 'tipo:'
      FieldName = 'TIPO'
      Size = 10
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
      '   cad_emails'
      'where id_cadgeral = :ai')
    SQLConnection = dmLGN.dbLGN
    Left = 808
    Top = 8
    object quEmailsAI: TIntegerField
      FieldName = 'AI'
    end
    object quEmailsID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object quEmailsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object quEmailsUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object quEmailsDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quEmailsHORAINC: TTimeField
      FieldName = 'HORAINC'
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
      'select '
      '  * '
      'from '
      '  funcionarios_ausencias'
      'where id_cadgeral = :ai')
    SQLConnection = dmLGN.dbLGN
    Left = 864
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
    object quAusenciasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quAusenciasDATAINI: TDateField
      FieldName = 'DATAINI'
    end
    object quAusenciasDATAFIM: TDateField
      FieldName = 'DATAFIM'
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
    Top = 72
  end
  object pvEnderecos: TDataSetProvider
    DataSet = quEnderecos
    Left = 696
    Top = 72
  end
  object pvTelefones: TDataSetProvider
    DataSet = quTelefones
    Left = 752
    Top = 72
  end
  object pvEmails: TDataSetProvider
    DataSet = quEmails
    Left = 808
    Top = 72
  end
  object pvAusencias: TDataSetProvider
    DataSet = quAusencias
    Left = 864
    Top = 72
  end
  object cdsCadGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvCadGeral'
    AfterOpen = cdsCadGeralAfterOpen
    AfterScroll = cdsCadGeralAfterScroll
    Left = 640
    Top = 136
    object cdsCadGeralAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsCadGeralID_CADGERAL: TStringField
      DisplayLabel = 'id_cadastro:'
      FieldName = 'ID_CADGERAL'
    end
    object cdsCadGeralNOME: TStringField
      Tag = 1
      DisplayLabel = 'nome:'
      FieldName = 'NOME'
      Size = 60
    end
    object cdsCadGeralRG: TStringField
      DisplayLabel = 'rg:'
      FieldName = 'RG'
    end
    object cdsCadGeralCPF: TStringField
      DisplayLabel = 'cpf:'
      FieldName = 'CPF'
      OnValidate = cdsCadGeralCPFValidate
    end
    object cdsCadGeralID_USP: TStringField
      DisplayLabel = 'num. usp:'
      FieldName = 'ID_USP'
    end
    object cdsCadGeralOBS: TStringField
      DisplayLabel = 'obs'
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
    object cdsCadGeralFLAGOUTROS: TIntegerField
      FieldName = 'FLAGOUTROS'
    end
    object cdsCadGeralFLAGALUNO: TIntegerField
      FieldName = 'FLAGALUNO'
    end
    object cdsCadGeralSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsCadGeralDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsCadGeralHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsCadGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object cdsEnderecos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsCadGeral
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvEnderecos'
    OnNewRecord = cdsEnderecosNewRecord
    Left = 696
    Top = 136
    object cdsEnderecosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsEnderecosID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsEnderecosID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsEnderecosENDERECO: TStringField
      Tag = 1
      DisplayLabel = 'endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsEnderecosNUMERO: TStringField
      DisplayLabel = 'numero:'
      FieldName = 'NUMERO'
    end
    object cdsEnderecosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsEnderecosCOMPLEMENTO: TStringField
      DisplayLabel = 'compl:'
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsEnderecosUSUARIO: TStringField
      FieldName = 'USUARIO'
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
    object cdsEnderecosCalcNomeCidade: TStringField
      DisplayLabel = 'cidade:'
      FieldKind = fkCalculated
      FieldName = 'CalcNomeCidade'
      Size = 60
      Calculated = True
    end
    object cdsEnderecosCalcUF: TStringField
      DisplayLabel = 'uf:'
      FieldKind = fkCalculated
      FieldName = 'CalcUF'
      Size = 2
      Calculated = True
    end
    object cdsEnderecosNOMECIDADE: TStringField
      DisplayLabel = 'cidade:'
      FieldKind = fkLookup
      FieldName = 'NOMECIDADE'
      LookupDataSet = cdsCidades
      LookupKeyFields = 'AI'
      LookupResultField = 'CIDADE'
      KeyFields = 'ID_CIDADE'
      Size = 50
      Lookup = True
    end
  end
  object cdsTelefones: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsCadGeral
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvTelefones'
    AfterOpen = cdsTelefonesAfterOpen
    OnNewRecord = cdsTelefonesNewRecord
    Left = 752
    Top = 136
    object cdsTelefonesAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsTelefonesID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsTelefonesTELEFONE: TStringField
      Tag = 1
      DisplayLabel = 'telefone:'
      FieldName = 'TELEFONE'
    end
    object cdsTelefonesRAMAL: TStringField
      DisplayLabel = 'ramal:'
      FieldName = 'RAMAL'
      Size = 6
    end
    object cdsTelefonesTIPO: TStringField
      Tag = 1
      DisplayLabel = 'tipo:'
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsTelefonesOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsTelefonesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsTelefonesDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsTelefonesHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object cdsEmails: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsCadGeral
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvEmails'
    OnNewRecord = cdsEmailsNewRecord
    Left = 808
    Top = 136
    object cdsEmailsAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsEmailsID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsEmailsEMAIL: TStringField
      Tag = 1
      DisplayLabel = 'e-mail:'
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsEmailsUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsEmailsDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsEmailsHORAINC: TTimeField
      FieldName = 'HORAINC'
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
    OnNewRecord = cdsAusenciasNewRecord
    Left = 864
    Top = 136
    object cdsAusenciasAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAusenciasID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsAusenciasTIPO: TStringField
      Tag = 1
      DisplayLabel = 'tipo de aus'#234'ncia:'
      FieldName = 'TIPO'
    end
    object cdsAusenciasDATAINI: TDateField
      Tag = 1
      DisplayLabel = 'dt. inicial:'
      FieldName = 'DATAINI'
    end
    object cdsAusenciasDATAFIM: TDateField
      Tag = 1
      DisplayLabel = 'dt. retorno:'
      FieldName = 'DATAFIM'
    end
    object cdsAusenciasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsAusenciasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsAusenciasDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAusenciasHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsCadGeral: TDataSource
    AutoEdit = False
    DataSet = cdsCadGeral
    OnDataChange = dsCadGeralDataChange
    Left = 639
    Top = 200
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    DataSet = cdsEnderecos
    Left = 696
    Top = 200
  end
  object dsTelefones: TDataSource
    AutoEdit = False
    DataSet = cdsTelefones
    Left = 752
    Top = 200
  end
  object dsEmails: TDataSource
    AutoEdit = False
    DataSet = cdsEmails
    Left = 808
    Top = 200
  end
  object dsAusencias: TDataSource
    AutoEdit = False
    DataSet = cdsAusencias
    OnDataChange = dsAusenciasDataChange
    Left = 864
    Top = 200
  end
  object JvBalloonHint1: TJvBalloonHint
    Images = dmImg.img
    UseBalloonAsApplicationHint = True
    Left = 637
    Top = 256
  end
  object quAtividades_Alunos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  alunos_atividades'
      'where'
      '  id_cadgeral = :ai')
    SQLConnection = dmLGN.dbLGN
    Left = 936
    Top = 8
    object quAtividades_AlunosAI: TIntegerField
      FieldName = 'AI'
    end
    object quAtividades_AlunosID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
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
    object quAtividades_AlunosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object quAtividades_AlunosID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
  end
  object pvAtividades_Alunos: TDataSetProvider
    DataSet = quAtividades_Alunos
    Left = 936
    Top = 72
  end
  object cdsAtividades_Alunos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CADGERAL'
    MasterFields = 'AI'
    MasterSource = dsCadGeral
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvAtividades_Alunos'
    OnNewRecord = cdsAtividades_AlunosNewRecord
    Left = 936
    Top = 136
    object cdsAtividades_AlunosAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAtividades_AlunosID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsAtividades_AlunosID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object cdsAtividades_AlunosID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object cdsAtividades_AlunosID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAtividades_AlunosSTATUS: TIntegerField
      Tag = 1
      DisplayLabel = 'status da atividade'
      FieldName = 'STATUS'
    end
    object cdsAtividades_AlunosDATAATIVINI: TDateField
      DisplayLabel = 'dt. ativ. inicial:'
      FieldName = 'DATAATIVINI'
    end
    object cdsAtividades_AlunosDATAATIVFIM: TDateField
      DisplayLabel = 'dt. ativ. final:'
      FieldName = 'DATAATIVFIM'
    end
    object cdsAtividades_AlunosDATAAGEINI: TDateField
      DisplayLabel = 'dt. ag'#234'ncia ini:'
      FieldName = 'DATAAGEINI'
    end
    object cdsAtividades_AlunosDATAAGEFIM: TDateField
      DisplayLabel = 'dt. ag'#234'ncia final:'
      FieldName = 'DATAAGEFIM'
    end
    object cdsAtividades_AlunosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAtividades_AlunosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAtividades_AlunosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsAtividades_AlunosLKNOMEATIVIDADE: TStringField
      Tag = 1
      DisplayLabel = 'atividade:'
      FieldKind = fkLookup
      FieldName = 'LKNOMEATIVIDADE'
      LookupDataSet = cdsAtividade
      LookupKeyFields = 'AI'
      LookupResultField = 'NOME'
      KeyFields = 'ID_ATIVIDADE'
      Size = 50
      Lookup = True
    end
    object cdsAtividades_AlunosLKNOMEAGENCIA: TStringField
      Tag = 1
      DisplayLabel = 'ag'#234'ncia fin:'
      FieldKind = fkLookup
      FieldName = 'LKNOMEAGENCIA'
      LookupDataSet = cdsAgencia
      LookupKeyFields = 'AI'
      LookupResultField = 'NOME'
      KeyFields = 'ID_AGENCIAFIN'
      Size = 50
      Lookup = True
    end
    object cdsAtividades_AlunosLKNOMEDOCENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'LKNOMEDOCENTE'
      LookupDataSet = cdsDocentes
      LookupKeyFields = 'AI'
      LookupResultField = 'NOME'
      KeyFields = 'ID_DOCENTE'
      Size = 60
      Lookup = True
    end
  end
  object dsAtividade_Alunos: TDataSource
    AutoEdit = False
    DataSet = cdsAtividades_Alunos
    OnDataChange = dsAtividade_AlunosDataChange
    Left = 936
    Top = 200
  end
  object quAgencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_agenciafinanciadora')
    SQLConnection = dmLGN.dbLGN
    Left = 1001
    Top = 7
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
    object quAgenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object pvAgencia: TDataSetProvider
    DataSet = quAgencia
    Left = 1002
    Top = 71
  end
  object cdsAgencia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvAgencia'
    Left = 1001
    Top = 136
    object cdsAgenciaAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAgenciaID_AGENCIAFIN: TStringField
      FieldName = 'ID_AGENCIAFIN'
      Size = 10
    end
    object cdsAgenciaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAgenciaDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAgenciaHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAgenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object dsAgencia: TDataSource
    AutoEdit = False
    DataSet = cdsAgencia
    Left = 998
    Top = 200
  end
  object quAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_atividades')
    SQLConnection = dmLGN.dbLGN
    Left = 1066
    Top = 7
    object quAtividadeAI: TIntegerField
      FieldName = 'AI'
    end
    object quAtividadeID_ATIVIDADE: TStringField
      FieldName = 'ID_ATIVIDADE'
      Size = 10
    end
    object quAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object quAtividadeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object quAtividadeUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object quAtividadeDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAtividadeHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object pvAtividade: TDataSetProvider
    DataSet = quAtividade
    Left = 1067
    Top = 69
  end
  object cdsAtividade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvAtividade'
    Left = 1070
    Top = 135
    object cdsAtividadeAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAtividadeID_ATIVIDADE: TStringField
      FieldName = 'ID_ATIVIDADE'
      Size = 10
    end
    object cdsAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAtividadeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object cdsAtividadeUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsAtividadeDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAtividadeHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
  end
  object dsAtividade: TDataSource
    AutoEdit = False
    DataSet = cdsAtividade
    Left = 1070
    Top = 199
  end
  object img: TImageList
    Left = 192
    Top = 192
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000BB77BB77BB77BB77
      BB77BB77BB77BB77BB77BB77FF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F00000000000000000000000000000000E003
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F0000000000000000000000000000E003E003
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F0000000000000000000000000000E003E003
      E003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000E003E0030000
      E003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F0000000000000000EF3DE003EF3D00000000
      E003E00300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      0000E003E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      00000000E0030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      000000000000E003000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      0000000000000000E00300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B35600000000000000000000
      00000000000000000000BB77FF7F000000000000000000000000000000000000
      00000000000000000000E003E003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B356B356B356B356B356B356
      B356B356B356B356B356B3560000000000000000000000000000000000000000
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
    Top = 192
  end
  object quCidades: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_cidades')
    SQLConnection = dmLGN.dbLGN
    Left = 1128
    Top = 8
    object quCidadesAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quCidadesID_UF: TIntegerField
      FieldName = 'ID_UF'
    end
    object quCidadesUF: TStringField
      FieldName = 'UF'
      Size = 4
    end
    object quCidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
  end
  object pvCidades: TDataSetProvider
    DataSet = quCidades
    Left = 1128
    Top = 69
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvCidades'
    Left = 1128
    Top = 136
    object cdsCidadesAI: TIntegerField
      DisplayLabel = 'id_cidade:'
      FieldName = 'AI'
      Required = True
    end
    object cdsCidadesID_UF: TIntegerField
      DisplayLabel = 'id_uf:'
      FieldName = 'ID_UF'
    end
    object cdsCidadesUF: TStringField
      DisplayLabel = 'uf:'
      FieldName = 'UF'
      Size = 4
    end
    object cdsCidadesCIDADE: TStringField
      DisplayLabel = 'cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = cdsCidades
    Left = 1128
    Top = 200
  end
  object quDocentes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ai, nome '
      'from'
      '  cad_geral '
      'where '
      '  (flagdocente=1)')
    SQLConnection = dmLGN.dbLGN
    Left = 1184
    Top = 8
    object quDocentesAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quDocentesNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object pvDocentes: TDataSetProvider
    DataSet = quDocentes
    Left = 1184
    Top = 69
  end
  object cdsDocentes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvDocentes'
    Left = 1184
    Top = 136
    object cdsDocentesAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsDocentesNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsDocentes: TDataSource
    AutoEdit = False
    DataSet = cdsDocentes
    Left = 1184
    Top = 200
  end
  object quOficios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pBuscar'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pbuscar'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '   oficios'
      'where '
      '   (id_destinatario = :pbuscar) or (id_solicitante = :pbuscar)')
    SQLConnection = dmLGN.dbLGN
    Left = 1240
    Top = 8
    object quOficiosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quOficiosID_LGN: TStringField
      FieldName = 'ID_LGN'
      Size = 10
    end
    object quOficiosID_DESTINATARIO: TIntegerField
      FieldName = 'ID_DESTINATARIO'
    end
    object quOficiosASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 100
    end
    object quOficiosID_SOLICITANTE: TIntegerField
      FieldName = 'ID_SOLICITANTE'
    end
    object quOficiosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quOficiosDATAOFICIO: TDateField
      FieldName = 'DATAOFICIO'
    end
    object quOficiosDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quOficiosHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quOficiosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object pvOficios: TDataSetProvider
    DataSet = quOficios
    Left = 1242
    Top = 69
  end
  object cdsOficios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvOficios'
    Left = 1243
    Top = 136
  end
end
