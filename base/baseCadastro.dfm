inherited fmBaseCadastro: TfmBaseCadastro
  Caption = 'Base Cadastro'
  ClientHeight = 446
  ClientWidth = 588
  ExplicitWidth = 594
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 13
  inherited pn: TPanel
    Top = 412
    Width = 588
    ExplicitTop = 412
    ExplicitWidth = 588
  end
  object pc: TcxPageControl [2]
    Left = 6
    Top = 116
    Width = 577
    Height = 290
    ActivePage = tsEnderecos
    TabOrder = 3
    TabStop = False
    ClientRectBottom = 290
    ClientRectRight = 577
    ClientRectTop = 24
    object tsEnderecos: TcxTabSheet
      Caption = 'Endere'#231'os'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 6
        Top = 164
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
        FocusControl = editEndereco
      end
      object Label2: TLabel
        Left = 460
        Top = 164
        Width = 25
        Height = 13
        Caption = 'Num.'
        FocusControl = editNumero
      end
      object Label3: TLabel
        Left = 460
        Top = 190
        Width = 23
        Height = 13
        Caption = 'CEP:'
        FocusControl = editCEP
      end
      object Label4: TLabel
        Left = 223
        Top = 190
        Width = 33
        Height = 13
        Caption = 'Compl.'
        FocusControl = editComplemento
      end
      object Label5: TLabel
        Left = 6
        Top = 214
        Width = 37
        Height = 13
        Caption = 'Cidade:'
        FocusControl = editID_Cidade
      end
      object lbBairro: TLabel
        Left = 6
        Top = 190
        Width = 32
        Height = 13
        Caption = 'Bairro:'
      end
      object editEndereco: TDBEdit
        Left = 61
        Top = 156
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        Enabled = False
        TabOrder = 0
      end
      object editNumero: TDBEdit
        Left = 485
        Top = 157
        Width = 90
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        Enabled = False
        TabOrder = 1
      end
      object editCEP: TDBEdit
        Left = 485
        Top = 182
        Width = 90
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        Enabled = False
        TabOrder = 3
      end
      object editComplemento: TDBEdit
        Left = 260
        Top = 182
        Width = 195
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        Enabled = False
        TabOrder = 4
      end
      object editID_Cidade: TDBEdit
        Left = 61
        Top = 207
        Width = 80
        Height = 21
        DataField = 'ID_CIDADE'
        Enabled = False
        TabOrder = 5
      end
      object btnPesquisarCidade: TBitBtn
        Left = 146
        Top = 205
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
        TabOrder = 6
      end
      object btnIncluirEndereco: TBitBtn
        Left = 318
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Incluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = btnIncluirEnderecoClick
      end
      object btnGravarEndereco: TBitBtn
        Left = 382
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Gravar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 8
        OnClick = btnGravarEnderecoClick
      end
      object dbGridEnderecos: TDBGrid
        Left = 5
        Top = 4
        Width = 569
        Height = 145
        TabStop = False
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object editNomeCidade: TDBEdit
        Left = 176
        Top = 207
        Width = 399
        Height = 19
        TabStop = False
        CharCase = ecUpperCase
        Color = 10813439
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
      end
      object editBairro: TDBEdit
        Left = 61
        Top = 182
        Width = 158
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object btnEditarEndereco: TBitBtn
        Left = 446
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Editar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 11
        OnClick = btnEditarEnderecoClick
      end
      object btnExcluirEndereco: TBitBtn
        Left = 510
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 12
        OnClick = btnExcluirEnderecoClick
      end
    end
    object tsTelefone: TcxTabSheet
      Caption = 'Telefones'
      ImageIndex = 1
      object Label6: TLabel
        Left = 3
        Top = 199
        Width = 46
        Height = 13
        Caption = 'Telefone:'
        FocusControl = editTelefone
      end
      object Label7: TLabel
        Left = 237
        Top = 200
        Width = 33
        Height = 13
        Caption = 'Ramal:'
        FocusControl = editRamal
      end
      object Label8: TLabel
        Left = 372
        Top = 199
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object dbGridTelefones: TDBGrid
        Left = 5
        Top = 4
        Width = 567
        Height = 181
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object editTelefone: TDBEdit
        Left = 50
        Top = 191
        Width = 181
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE'
        Enabled = False
        TabOrder = 1
      end
      object editRamal: TDBEdit
        Left = 272
        Top = 191
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RAMAL'
        Enabled = False
        TabOrder = 2
      end
      object btnIncluirTelefone: TBitBtn
        Left = 315
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Incluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btnIncluirTelefoneClick
      end
      object btnGravarTelefone: TBitBtn
        Left = 379
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Gravar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = btnGravarTelefoneClick
      end
      object cbTipoFone: TDBComboBox
        Left = 400
        Top = 191
        Width = 172
        Height = 21
        TabOrder = 5
      end
      object btnEditarTelefone: TBitBtn
        Left = 443
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Editar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = btnEditarTelefoneClick
      end
      object btnExcluirTelefone: TBitBtn
        Left = 507
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 7
        OnClick = btnExcluirTelefoneClick
      end
    end
    object tsEmails: TcxTabSheet
      Caption = 'E-Mails'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label9: TLabel
        Left = 5
        Top = 199
        Width = 32
        Height = 13
        Caption = 'E-Mail:'
        FocusControl = editEmail
      end
      object dbGridEmail: TDBGrid
        Left = 5
        Top = 4
        Width = 565
        Height = 181
        TabStop = False
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object editEmail: TDBEdit
        Left = 39
        Top = 191
        Width = 362
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMAIL'
        Enabled = False
        TabOrder = 1
      end
      object btnIncluirEmail: TBitBtn
        Left = 313
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Incluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = btnIncluirEmailClick
      end
      object btnGravarEmail: TBitBtn
        Left = 377
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Gravar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btnGravarEmailClick
      end
      object btnEditarEmail: TBitBtn
        Left = 441
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Editar'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = btnEditarEmailClick
      end
      object btnExcluirEmail: TBitBtn
        Left = 505
        Top = 232
        Width = 65
        Height = 25
        Caption = 'Excluir'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 5
        OnClick = btnExcluirEmailClick
      end
    end
  end
end
