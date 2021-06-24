object fmAjustarData: TfmAjustarData
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ajustar Data'
  ClientHeight = 88
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 79
    Height = 13
    Caption = 'Atividade Inicial:'
  end
  object Label2: TLabel
    Left = 136
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Atividade Final:'
  end
  object Label3: TLabel
    Left = 260
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Ag. Inicial:'
  end
  object Label4: TLabel
    Left = 389
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Ag. Final:'
  end
  object btnSair: TBitBtn
    Left = 350
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnSairClick
  end
  object btnGravar: TBitBtn
    Left = 424
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Gravar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnGravarClick
  end
  object editDataAtividadeIni: TcxDBDateEdit
    Left = 8
    Top = 24
    DataBinding.DataField = 'DATAATIVINI'
    DataBinding.DataSource = ds
    TabOrder = 2
    Width = 110
  end
  object editDataAtividadeFim: TcxDBDateEdit
    Left = 136
    Top = 24
    DataBinding.DataField = 'DATAATIVFIM'
    DataBinding.DataSource = ds
    TabOrder = 3
    Width = 110
  end
  object editDataAgenciaIni: TcxDBDateEdit
    Left = 260
    Top = 23
    DataBinding.DataField = 'DATAAGEINI'
    DataBinding.DataSource = ds
    TabOrder = 4
    Width = 110
  end
  object editDataAgenciaFim: TcxDBDateEdit
    Left = 389
    Top = 23
    DataBinding.DataField = 'DATAAGEFIM'
    DataBinding.DataSource = ds
    TabOrder = 5
    Width = 110
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = cdsAlunos
    Left = 144
    Top = 40
  end
  object quAlunos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from alunos_atividades')
    SQLConnection = dmLGN.dbLGN
    Left = 24
    Top = 40
    object quAlunosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quAlunosID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object quAlunosID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object quAlunosID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object quAlunosID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quAlunosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object quAlunosDATAATIVINI: TDateField
      FieldName = 'DATAATIVINI'
    end
    object quAlunosDATAATIVFIM: TDateField
      FieldName = 'DATAATIVFIM'
    end
    object quAlunosDATAAGEINI: TDateField
      FieldName = 'DATAAGEINI'
    end
    object quAlunosDATAAGEFIM: TDateField
      FieldName = 'DATAAGEFIM'
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
  object pvAlunos: TDataSetProvider
    DataSet = quAlunos
    Left = 64
    Top = 40
  end
  object cdsAlunos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Ai'
    Params = <>
    ProviderName = 'pvAlunos'
    Left = 104
    Top = 40
    object cdsAlunosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsAlunosID_CADGERAL: TIntegerField
      FieldName = 'ID_CADGERAL'
    end
    object cdsAlunosID_ATIVIDADE: TIntegerField
      FieldName = 'ID_ATIVIDADE'
    end
    object cdsAlunosID_AGENCIAFIN: TIntegerField
      FieldName = 'ID_AGENCIAFIN'
    end
    object cdsAlunosID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAlunosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsAlunosDATAATIVINI: TDateField
      FieldName = 'DATAATIVINI'
    end
    object cdsAlunosDATAATIVFIM: TDateField
      FieldName = 'DATAATIVFIM'
    end
    object cdsAlunosDATAAGEINI: TDateField
      FieldName = 'DATAAGEINI'
    end
    object cdsAlunosDATAAGEFIM: TDateField
      FieldName = 'DATAAGEFIM'
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
end
