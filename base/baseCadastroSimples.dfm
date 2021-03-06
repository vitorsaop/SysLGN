object fmBaseCadastroSimples: TfmBaseCadastroSimples
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Base Cadastro Simples'
  ClientHeight = 415
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn: TPanel
    Left = 0
    Top = 381
    Width = 589
    Height = 34
    Align = alBottom
    TabOrder = 0
    ExplicitWidth = 594
    object btnPesquisar: TBitBtn
      Left = 29
      Top = 5
      Width = 90
      Height = 25
      Action = actPesquisar
      Caption = 'F3 - Pesquisar'
      DoubleBuffered = True
      Enabled = False
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
    end
    object btnEditar: TBitBtn
      Left = 118
      Top = 5
      Width = 90
      Height = 25
      Action = actEditar
      Caption = 'F4 - Editar'
      DoubleBuffered = True
      Enabled = False
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
    end
    object btnExcluir: TBitBtn
      Left = 207
      Top = 5
      Width = 90
      Height = 25
      Action = actExcluir
      Caption = 'F5 - Excluir'
      DoubleBuffered = True
      Enabled = False
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
    end
    object btnCancelar: TBitBtn
      Left = 296
      Top = 5
      Width = 90
      Height = 25
      Action = actCancelar
      Caption = 'F6 - Cancelar'
      DoubleBuffered = True
      Enabled = False
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
    end
    object btnGravar: TBitBtn
      Left = 385
      Top = 5
      Width = 90
      Height = 25
      Action = actGravar
      Caption = 'F10 - Gravar'
      DoubleBuffered = True
      Enabled = False
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
    end
    object btnSair: TBitBtn
      Left = 474
      Top = 5
      Width = 90
      Height = 25
      Action = actSair
      Caption = 'F8 - Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
    end
  end
  object btnNovo: TBitBtn
    Left = 165
    Top = 2
    Width = 89
    Height = 25
    Action = actNovo
    Caption = 'F2 - Novo'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 1
    TabStop = False
  end
  object dbNav: TcxDBNavigator
    Left = 471
    Top = 2
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
    InfoPanel.Font.Charset = DEFAULT_CHARSET
    InfoPanel.Font.Color = clDefault
    InfoPanel.Font.Height = -11
    InfoPanel.Font.Name = 'Tahoma'
    InfoPanel.Font.Style = []
    TabOrder = 2
  end
  object act: TActionList
    Images = dmImg.img
    Left = 280
    Top = 189
    object actNovo: TAction
      Caption = 'F2 - Novo'
      Hint = 'Gerar c'#243'digo de cadastro'
      ImageIndex = 5
      OnExecute = actNovoExecute
    end
    object actPesquisar: TAction
      Caption = 'F3 - Pesquisar'
      Hint = 'Pesquisar Cadastros'
      ImageIndex = 0
      OnExecute = actPesquisarExecute
    end
    object actEditar: TAction
      Caption = 'F4 - Editar'
      Hint = 'Editar Cadastro'
      ImageIndex = 1
      OnExecute = actEditarExecute
    end
    object actCancelar: TAction
      Caption = 'F6 - Cancelar'
      Hint = 'Cancelar Cadastro'
      ImageIndex = 4
      OnExecute = actCancelarExecute
    end
    object actExcluir: TAction
      Caption = 'F5 - Excluir'
      Hint = 'Excluir Cadastro'
      ImageIndex = 10
      OnExecute = actExcluirExecute
    end
    object actGravar: TAction
      Caption = 'F10 - Gravar'
      Hint = 'Gravar Cadastro'
      ImageIndex = 3
      OnExecute = actGravarExecute
    end
    object actSair: TAction
      Caption = 'F8 - Sair'
      Hint = 'Sair'
      ImageIndex = 2
      OnExecute = actSairExecute
    end
  end
end
