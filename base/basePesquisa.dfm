object fmBasePesquisa: TfmBasePesquisa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Base Pesquisa'
  ClientHeight = 358
  ClientWidth = 686
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
  object Panel1: TPanel
    Left = 0
    Top = 321
    Width = 686
    Height = 37
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 50
      Height = 13
      Caption = 'Pesquisar:'
    end
    object Label2: TLabel
      Left = 353
      Top = 18
      Width = 31
      Height = 13
      Caption = 'Status'
      Visible = False
    end
    object editPesquisar: TEdit
      Left = 63
      Top = 12
      Width = 391
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object btnPesquisar: TBitBtn
      Left = 460
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
    object btnSelecionar: TBitBtn
      Left = 534
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnSelecionarClick
    end
    object btnSair: TBitBtn
      Left = 608
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnSairClick
    end
    object cbStatus: TcxComboBox
      Left = 381
      Top = 10
      TabStop = False
      Properties.Items.Strings = (
        'Ativos'
        'Inativos'
        'Ambos')
      Style.BorderStyle = ebsOffice11
      Style.ButtonTransparency = ebtNone
      TabOrder = 4
      Text = 'Ativos'
      Visible = False
      Width = 84
    end
  end
  object dbGridBasePesquisa: TcxGrid
    Left = 0
    Top = 0
    Width = 686
    Height = 314
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold]
    Align = alTop
    TabOrder = 1
    TabStop = False
    object dbGridBasePesquisaDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Enabled = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Enabled = False
      NavigatorButtons.Delete.Enabled = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Edit.Enabled = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Enabled = False
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Enabled = False
      NavigatorButtons.Cancel.Visible = False
      NavigatorButtons.Refresh.Enabled = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Enabled = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Enabled = False
      NavigatorButtons.GotoBookmark.Visible = False
      DataController.DataSource = ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
    end
    object dbGridBasePesquisaLevel1: TcxGridLevel
      GridView = dbGridBasePesquisaDBTableView1
    end
  end
  object ds: TDataSource
    AutoEdit = False
    Left = 24
    Top = 208
  end
end
