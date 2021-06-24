object fmCalcularCombustivel: TfmCalcularCombustivel
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Calcular custo combust'#237'vel.'
  ClientHeight = 110
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 223
    Top = 32
    Width = 85
    Height = 13
    Caption = 'Custo total comb.'
  end
  object Panel1: TPanel
    Left = 0
    Top = 62
    Width = 451
    Height = 48
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 176
    object btnSair: TBitBtn
      Left = 294
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object btnCalcular: TBitBtn
      Left = 368
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Calcular'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnCalcularClick
    end
  end
  object OvcNumericField1: TOvcNumericField
    Left = 313
    Top = 24
    Width = 130
    Height = 21
    Cursor = crIBeam
    DataType = nftExtended
    CaretOvr.Shape = csBlock
    EFColors.Disabled.BackColor = clWindow
    EFColors.Disabled.TextColor = clGrayText
    EFColors.Error.BackColor = clRed
    EFColors.Error.TextColor = clBlack
    EFColors.Highlight.BackColor = clHighlight
    EFColors.Highlight.TextColor = clHighlightText
    Options = []
    PictureMask = '###,###.##'
    TabOrder = 1
    RangeHigh = {E175587FED2AB1ECFE7F}
    RangeLow = {E175587FED2AB1ECFEFF}
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 8
  end
end
