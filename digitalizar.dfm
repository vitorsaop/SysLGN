object fmDigitalizar: TfmDigitalizar
  Left = 0
  Top = 0
  BorderIcons = [biMaximize]
  BorderStyle = bsDialog
  Caption = 'Digitaliza'#231#227'o'
  ClientHeight = 605
  ClientWidth = 720
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
  object img: TImage
    Left = 133
    Top = 41
    Width = 587
    Height = 564
    Align = alClient
    ExplicitLeft = 136
    ExplicitWidth = 584
    ExplicitHeight = 561
  end
  object pnSuperior: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 41
    Align = alTop
    TabOrder = 0
    object BtnScanWithDialog: TButton
      Left = 11
      Top = 8
      Width = 98
      Height = 25
      Caption = 'Scan With Dialog'
      TabOrder = 0
      OnClick = BtnScanWithDialogClick
    end
    object BtnScanWithoutDialog: TButton
      Left = 108
      Top = 8
      Width = 106
      Height = 25
      Caption = 'Scan Without Dialog'
      TabOrder = 1
      OnClick = BtnScanWithoutDialogClick
    end
    object BitBtn2: TBitBtn
      Left = 213
      Top = 8
      Width = 110
      Height = 25
      Caption = 'Salvar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object ckProporcional: TCheckBox
      Left = 610
      Top = 16
      Width = 99
      Height = 17
      Caption = 'Ajustar Imagem'
      TabOrder = 3
      OnClick = ckProporcionalClick
    end
    object btnSair: TBitBtn
      Left = 322
      Top = 8
      Width = 95
      Height = 25
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object lbDevice: TListBox
    Left = 0
    Top = 41
    Width = 133
    Height = 564
    TabStop = False
    Align = alLeft
    ItemHeight = 13
    TabOrder = 1
  end
end
