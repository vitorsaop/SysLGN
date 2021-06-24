object fmReservaAgenda: TfmReservaAgenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Uso de ve'#237'culo'
  ClientHeight = 427
  ClientWidth = 1026
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
  object Label2: TLabel
    Left = 8
    Top = 73
    Width = 49
    Height = 13
    Caption = 'motorista:'
  end
  object Label4: TLabel
    Left = 8
    Top = 110
    Width = 66
    Height = 13
    Caption = 'dt. uso inicial:'
  end
  object Label5: TLabel
    Left = 120
    Top = 110
    Width = 61
    Height = 13
    Caption = 'dt. uso final:'
  end
  object lbVeiculo: TLabel
    Left = 8
    Top = 37
    Width = 108
    Height = 13
    Caption = 've'#237'culo departamento:'
  end
  object Label1: TLabel
    Left = 8
    Top = 147
    Width = 45
    Height = 13
    Caption = 'km. sa'#237'da'
    FocusControl = editKMSaida
  end
  object Label6: TLabel
    Left = 127
    Top = 147
    Width = 56
    Height = 13
    Caption = 'km retorno:'
    FocusControl = editKMRetorno
  end
  object Label7: TLabel
    Left = 444
    Top = 1
    Width = 47
    Height = 13
    Caption = 'custo KM:'
    FocusControl = editCustoKM
  end
  object Label8: TLabel
    Left = 8
    Top = 184
    Width = 65
    Height = 13
    Caption = 'Respons'#225'vel:'
  end
  object Label9: TLabel
    Left = 233
    Top = 110
    Width = 36
    Height = 13
    Caption = 'hr '#237'nicio'
  end
  object Label10: TLabel
    Left = 345
    Top = 110
    Width = 37
    Height = 13
    Caption = 'hr. final'
  end
  object Label11: TLabel
    Left = 290
    Top = 1
    Width = 82
    Height = 13
    Caption = 'tipos de viagens:'
  end
  object Label3: TLabel
    Left = 384
    Top = 37
    Width = 56
    Height = 13
    Caption = 'combustivel'
    FocusControl = editCombustivel
  end
  object Label12: TLabel
    Left = 504
    Top = 37
    Width = 45
    Height = 13
    Caption = 'Vlr. (litro)'
    FocusControl = editValorLitro
  end
  object btnNovo: TBitBtn
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Action = actNovo
    Caption = 'Novo'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object editDataIni: TcxDBDateEdit
    Left = 8
    Top = 125
    DataBinding.DataField = 'DATAAGENDAINI'
    DataBinding.DataSource = dsAgenda
    Style.BorderStyle = ebs3D
    TabOrder = 1
    Width = 105
  end
  object editDataFim: TcxDBDateEdit
    Left = 120
    Top = 125
    DataBinding.DataField = 'DATAAGENDAFIM'
    DataBinding.DataSource = dsAgenda
    Style.BorderStyle = ebs3D
    TabOrder = 2
    Width = 105
  end
  object btnGravar: TBitBtn
    Left = 432
    Top = 399
    Width = 75
    Height = 25
    Action = actGravar
    Caption = 'Gravar'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object btnPesquisarMotorista: TBitBtn
    Left = 555
    Top = 86
    Width = 24
    Height = 24
    Action = actPesqusarMotoristas
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object btnPesquisarVeiculo: TBitBtn
    Left = 355
    Top = 49
    Width = 24
    Height = 24
    Action = actPesquisarVeiculos
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 5
  end
  object btnSair: TBitBtn
    Left = 506
    Top = 399
    Width = 75
    Height = 25
    Action = actSair
    Caption = 'Sair'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
  end
  object ckVeiculoOutros: TDBCheckBox
    Left = 188
    Top = 24
    Width = 97
    Height = 17
    Caption = 've'#237'culo outros:'
    DataField = 'FLAG_VEICULOPROPRIO'
    DataSource = dsAgenda
    TabOrder = 7
    ValueChecked = '0'
    ValueUnchecked = '1'
    Visible = False
    OnClick = ckVeiculoOutrosClick
  end
  object editNomeVeiculo: TEdit
    Left = 8
    Top = 52
    Width = 338
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 8
  end
  object editNomeMotorista: TEdit
    Left = 8
    Top = 87
    Width = 541
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 9
  end
  object editKMSaida: TDBEdit
    Left = 8
    Top = 163
    Width = 112
    Height = 19
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'KMSAIDA'
    DataSource = dsAgenda
    ParentCtl3D = False
    TabOrder = 10
  end
  object editKMRetorno: TDBEdit
    Left = 127
    Top = 163
    Width = 112
    Height = 19
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'KMRETORNO'
    DataSource = dsAgenda
    ParentCtl3D = False
    TabOrder = 11
  end
  object btnPesquisarDocente: TBitBtn
    Left = 555
    Top = 198
    Width = 24
    Height = 24
    Action = actPesqusiarDocente
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 12
  end
  object editNomeDocente: TEdit
    Left = 8
    Top = 200
    Width = 541
    Height = 19
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
  end
  object editCustoKM: TDBEdit
    Left = 444
    Top = 13
    Width = 134
    Height = 21
    DataField = 'CUSTOKM'
    DataSource = dsTipoViagem
    ReadOnly = True
    TabOrder = 14
  end
  object cbTipo: TDBLookupComboBox
    Left = 289
    Top = 13
    Width = 145
    Height = 21
    KeyField = 'AI'
    ListField = 'NOME'
    ListFieldIndex = 1
    ListSource = dsTipoViagem
    TabOrder = 15
  end
  object btnEditar: TBitBtn
    Left = 358
    Top = 399
    Width = 75
    Height = 25
    Action = actEditar
    Caption = 'Editar'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 16
    Visible = False
  end
  object editHoraIni: TDBEdit
    Left = 232
    Top = 125
    Width = 103
    Height = 19
    Ctl3D = False
    DataField = 'HORAAGENDAINI'
    DataSource = dsAgenda
    ParentCtl3D = False
    TabOrder = 17
  end
  object editHoraFim: TDBEdit
    Left = 345
    Top = 125
    Width = 103
    Height = 19
    Ctl3D = False
    DataField = 'HORAAGENDAFIM'
    DataSource = dsAgenda
    ParentCtl3D = False
    TabOrder = 18
  end
  object pc: TcxPageControl
    Left = 8
    Top = 226
    Width = 570
    Height = 164
    ActivePage = tsObs
    TabOrder = 19
    ClientRectBottom = 164
    ClientRectRight = 570
    ClientRectTop = 24
    object tsObs: TcxTabSheet
      Caption = 'Observa'#231#227'o'
      object mmOBS: TDBMemo
        Left = 3
        Top = 3
        Width = 564
        Height = 128
        Ctl3D = False
        DataField = 'OBS'
        DataSource = dsAgenda
        ParentCtl3D = False
        TabOrder = 0
      end
    end
  end
  object editCombustivel: TDBEdit
    Left = 384
    Top = 52
    Width = 117
    Height = 19
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'calcCombustivel'
    DataSource = dsCad_Veiculos
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 20
  end
  object editValorLitro: TDBEdit
    Left = 505
    Top = 52
    Width = 73
    Height = 19
    CharCase = ecUpperCase
    Color = 10549500
    Ctl3D = False
    DataField = 'calcValorCombustivel'
    DataSource = dsCad_Veiculos
    ParentCtl3D = False
    TabOrder = 21
  end
  object quAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from agenda')
    SQLConnection = dmLGN.dbLGN
    Left = 640
    Top = 8
    object quAgendaAI: TIntegerField
      FieldName = 'AI'
    end
    object quAgendaID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object quAgendaNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object quAgendaFLAG_VEICULOPROPRIO: TIntegerField
      FieldName = 'FLAG_VEICULOPROPRIO'
    end
    object quAgendaID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
    end
    object quAgendaNOME_MOTORISTA: TStringField
      FieldName = 'NOME_MOTORISTA'
      Size = 60
    end
    object quAgendaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object quAgendaDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object quAgendaDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object quAgendaDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object quAgendaHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object quAgendaID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object quAgendaHORAAGENDAINI: TTimeField
      FieldName = 'HORAAGENDAINI'
    end
    object quAgendaHORAAGENDAFIM: TTimeField
      FieldName = 'HORAAGENDAFIM'
    end
    object quAgendaKMSAIDA: TFloatField
      FieldName = 'KMSAIDA'
    end
    object quAgendaKMRETORNO: TFloatField
      FieldName = 'KMRETORNO'
    end
    object quAgendaKMSALDO: TFloatField
      FieldName = 'KMSALDO'
    end
    object quAgendaID_TIPOVIAGEM: TIntegerField
      FieldName = 'ID_TIPOVIAGEM'
    end
    object quAgendaCUSTOKM: TFMTBCDField
      FieldName = 'CUSTOKM'
      Precision = 12
      Size = 2
    end
    object quAgendaFLAG_CANCELAR: TIntegerField
      FieldName = 'FLAG_CANCELAR'
    end
    object quAgendaID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object quAgendaCUSTOLITRO: TFMTBCDField
      FieldName = 'CUSTOLITRO'
      Precision = 12
      Size = 2
    end
    object quAgendaCUSTOTOTALKM: TFMTBCDField
      FieldName = 'CUSTOTOTALKM'
      Precision = 12
      Size = 2
    end
    object quAgendaCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'CUSTOTOTALCOMBUSTIVEL'
      Precision = 12
      Size = 2
    end
    object quAgendaCUSTOTOTALGERAL: TFMTBCDField
      FieldName = 'CUSTOTOTALGERAL'
      Precision = 12
      Size = 2
    end
    object quAgendaFLAG_CUSTOALTERADO: TIntegerField
      FieldName = 'FLAG_CUSTOALTERADO'
    end
  end
  object pvAgenda: TDataSetProvider
    DataSet = quAgenda
    Left = 640
    Top = 56
  end
  object cdsAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvAgenda'
    Left = 640
    Top = 104
    object cdsAgendaAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsAgendaID_VEICULO: TIntegerField
      DisplayLabel = 'id_veic:'
      FieldName = 'ID_VEICULO'
    end
    object cdsAgendaNOME_VEICULO: TStringField
      FieldName = 'NOME_VEICULO'
      Size = 30
    end
    object cdsAgendaFLAG_VEICULOPROPRIO: TIntegerField
      FieldName = 'FLAG_VEICULOPROPRIO'
    end
    object cdsAgendaID_MOTORISTA: TIntegerField
      DisplayLabel = 'id_mot:'
      FieldName = 'ID_MOTORISTA'
    end
    object cdsAgendaNOME_MOTORISTA: TStringField
      FieldName = 'NOME_MOTORISTA'
      Size = 60
    end
    object cdsAgendaOBS: TStringField
      DisplayLabel = 'observa'#231#245'es'
      FieldName = 'OBS'
      Size = 200
    end
    object cdsAgendaDATAAGENDAINI: TDateField
      FieldName = 'DATAAGENDAINI'
    end
    object cdsAgendaDATAAGENDAFIM: TDateField
      FieldName = 'DATAAGENDAFIM'
    end
    object cdsAgendaID_DOCENTE: TIntegerField
      FieldName = 'ID_DOCENTE'
    end
    object cdsAgendaHORAAGENDAINI: TTimeField
      FieldName = 'HORAAGENDAINI'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgendaHORAAGENDAFIM: TTimeField
      FieldName = 'HORAAGENDAFIM'
      DisplayFormat = 'hh:mm'
    end
    object cdsAgendaKMSAIDA: TFloatField
      DisplayLabel = 'km. sa'#237'da'
      FieldName = 'KMSAIDA'
    end
    object cdsAgendaKMRETORNO: TFloatField
      DisplayLabel = 'km retorno:'
      FieldName = 'KMRETORNO'
    end
    object cdsAgendaKMSALDO: TFloatField
      FieldName = 'KMSALDO'
    end
    object cdsAgendaID_TIPOVIAGEM: TIntegerField
      FieldName = 'ID_TIPOVIAGEM'
    end
    object cdsAgendaCUSTOKM: TFMTBCDField
      FieldName = 'CUSTOKM'
      Precision = 12
      Size = 2
    end
    object cdsAgendaDATAINC: TDateField
      FieldName = 'DATAINC'
    end
    object cdsAgendaHORAINC: TTimeField
      FieldName = 'HORAINC'
    end
    object cdsAgendaFLAG_CANCELAR: TIntegerField
      FieldName = 'FLAG_CANCELAR'
    end
    object cdsAgendaID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object cdsAgendaCUSTOLITRO: TFMTBCDField
      FieldName = 'CUSTOLITRO'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsAgendaCUSTOTOTALKM: TFMTBCDField
      FieldName = 'CUSTOTOTALKM'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsAgendaCUSTOTOTALCOMBUSTIVEL: TFMTBCDField
      FieldName = 'CUSTOTOTALCOMBUSTIVEL'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsAgendaCUSTOTOTALGERAL: TFMTBCDField
      FieldName = 'CUSTOTOTALGERAL'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
    object cdsAgendaFLAG_CUSTOALTERADO: TIntegerField
      FieldName = 'FLAG_CUSTOALTERADO'
    end
  end
  object dsAgenda: TDataSource
    AutoEdit = False
    DataSet = cdsAgenda
    OnDataChange = dsAgendaDataChange
    Left = 640
    Top = 152
  end
  object quCad_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  ai, nome '
      'from '
      '   cad_geral '
      'where '
      '   (flagfuncionario = 1) and (status = 1)')
    SQLConnection = dmLGN.dbLGN
    Left = 688
    Top = 8
    object quCad_GeralAI: TIntegerField
      FieldName = 'AI'
    end
    object quCad_GeralNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object pvCad_Geral: TDataSetProvider
    DataSet = quCad_Geral
    Left = 688
    Top = 56
  end
  object cdsCad_Geral: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvCad_Geral'
    Left = 688
    Top = 104
    object cdsCad_GeralAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsCad_GeralNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsCad_Geral: TDataSource
    AutoEdit = False
    DataSet = cdsCad_Geral
    Left = 688
    Top = 152
  end
  object dsCad_Veiculos: TDataSource
    AutoEdit = False
    DataSet = cdsCad_Veiculos
    Left = 782
    Top = 152
  end
  object cdsCad_Veiculos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Ai'
    Params = <>
    ProviderName = 'pvCad_Veiculos'
    OnCalcFields = cdsCad_VeiculosCalcFields
    Left = 781
    Top = 104
    object cdsCad_VeiculosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object cdsCad_VeiculosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsCad_VeiculosID_VEICULO: TStringField
      FieldName = 'ID_VEICULO'
    end
    object cdsCad_VeiculosID_TIPOVEICULO: TIntegerField
      FieldName = 'ID_TIPOVEICULO'
    end
    object cdsCad_VeiculosID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object cdsCad_VeiculosAUTONOMIA: TFMTBCDField
      FieldName = 'AUTONOMIA'
      Precision = 12
      Size = 2
    end
    object cdsCad_VeiculoscalcCombustivel: TStringField
      DisplayLabel = 'combustivel'
      FieldKind = fkCalculated
      FieldName = 'calcCombustivel'
      Size = 30
      Calculated = True
    end
    object cdsCad_VeiculoscalcValorCombustivel: TFloatField
      DisplayLabel = 'R$ Litro:'
      FieldKind = fkCalculated
      FieldName = 'calcValorCombustivel'
      DisplayFormat = ',0.00'
      Calculated = True
    end
  end
  object pvCad_Veiculos: TDataSetProvider
    DataSet = quCad_Veiculos
    Left = 783
    Top = 56
  end
  object quCad_Veiculos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_veiculos')
    SQLConnection = dmLGN.dbLGN
    Left = 784
    Top = 8
    object quCad_VeiculosAI: TIntegerField
      FieldName = 'AI'
      Required = True
    end
    object quCad_VeiculosNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object quCad_VeiculosID_VEICULO: TStringField
      FieldName = 'ID_VEICULO'
    end
    object quCad_VeiculosID_TIPOVEICULO: TIntegerField
      FieldName = 'ID_TIPOVEICULO'
    end
    object quCad_VeiculosID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
    end
    object quCad_VeiculosAUTONOMIA: TFMTBCDField
      FieldName = 'AUTONOMIA'
      Precision = 12
      Size = 2
    end
  end
  object act: TActionList
    Images = dmImg.img
    Left = 229
    Top = 280
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 5
      OnExecute = actNovoExecute
    end
    object actGravar: TAction
      Caption = 'Gravar'
      ImageIndex = 3
      OnExecute = actGravarExecute
    end
    object actPesquisarVeiculos: TAction
      Hint = 'Pesquisar Veiculos'
      ImageIndex = 0
      OnExecute = actPesquisarVeiculosExecute
    end
    object actPesqusarMotoristas: TAction
      Hint = 'Pesquisar Motoristas'
      ImageIndex = 0
      OnExecute = actPesqusarMotoristasExecute
    end
    object actPesqusiarDocente: TAction
      ImageIndex = 0
      OnExecute = actPesqusiarDocenteExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 2
      OnExecute = actSairExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 1
      OnExecute = actEditarExecute
    end
  end
  object quDocente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  ai, id_cadgeral, nome'
      'from'
      '  cad_geral')
    SQLConnection = dmLGN.dbLGN
    Left = 736
    Top = 8
    object quDocenteAI: TIntegerField
      FieldName = 'AI'
    end
    object quDocenteID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object quDocenteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object pvDocente: TDataSetProvider
    DataSet = quDocente
    Left = 736
    Top = 56
  end
  object cdsDocente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Ai'
    Params = <>
    ProviderName = 'pvDocente'
    Left = 737
    Top = 104
    object cdsDocenteAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsDocenteID_CADGERAL: TStringField
      FieldName = 'ID_CADGERAL'
    end
    object cdsDocenteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsDocente: TDataSource
    AutoEdit = False
    DataSet = cdsDocente
    Left = 738
    Top = 152
  end
  object quTipoViagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_tipoviagem')
    SQLConnection = dmLGN.dbLGN
    Left = 832
    Top = 8
    object quTipoViagemAI: TIntegerField
      FieldName = 'AI'
    end
    object quTipoViagemID_TIPOVIAGEM: TStringField
      FieldName = 'ID_TIPOVIAGEM'
      Size = 10
    end
    object quTipoViagemNOME: TStringField
      FieldName = 'NOME'
    end
    object quTipoViagemCUSTOKM: TFMTBCDField
      FieldName = 'CUSTOKM'
      Precision = 12
      Size = 2
    end
  end
  object cdsTipoViagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvTipoViagem'
    Left = 832
    Top = 104
    object cdsTipoViagemAI: TIntegerField
      FieldName = 'AI'
    end
    object cdsTipoViagemID_TIPOVIAGEM: TStringField
      DisplayLabel = 'id_tipo viagem:'
      FieldName = 'ID_TIPOVIAGEM'
      Size = 10
    end
    object cdsTipoViagemNOME: TStringField
      DisplayLabel = 'nome'
      FieldName = 'NOME'
    end
    object cdsTipoViagemCUSTOKM: TFMTBCDField
      DisplayLabel = 'custo km'
      FieldName = 'CUSTOKM'
      DisplayFormat = ',0.00'
      Precision = 12
      Size = 2
    end
  end
  object pvTipoViagem: TDataSetProvider
    DataSet = quTipoViagem
    Left = 832
    Top = 56
  end
  object dsTipoViagem: TDataSource
    AutoEdit = False
    DataSet = cdsTipoViagem
    Left = 832
    Top = 152
  end
  object quCombustivel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cad_combustivel')
    SQLConnection = dmLGN.dbLGN
    Left = 880
    Top = 8
    object quCombustivelAI: TIntegerField
      FieldName = 'AI'
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
  object pvCombustivel: TDataSetProvider
    DataSet = quCombustivel
    Left = 880
    Top = 56
  end
  object cdsCombustivel: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AI'
    Params = <>
    ProviderName = 'pvCombustivel'
    Left = 880
    Top = 104
    object cdsCombustivelAI: TIntegerField
      FieldName = 'AI'
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
  object dsCombustivel: TDataSource
    AutoEdit = False
    DataSet = cdsCombustivel
    Left = 880
    Top = 152
  end
  object quCombustivel_Valores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  combustivel_valores')
    SQLConnection = dmLGN.dbLGN
    Left = 928
    Top = 8
    object quCombustivel_ValoresAI: TIntegerField
      FieldName = 'AI'
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
  object pvCombustivel_Valores: TDataSetProvider
    DataSet = quCombustivel_Valores
    Left = 928
    Top = 56
  end
  object cdsCombustivel_Valores: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_COMBUSTIVEL'
    MasterFields = 'AI'
    MasterSource = dsCombustivel
    PacketRecords = 0
    Params = <>
    ProviderName = 'pvCombustivel_Valores'
    Left = 928
    Top = 104
    object cdsCombustivel_ValoresAI: TIntegerField
      FieldName = 'AI'
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
  object dsCombustivel_Valores: TDataSource
    AutoEdit = False
    DataSet = cdsCombustivel_Valores
    Left = 928
    Top = 152
  end
end
