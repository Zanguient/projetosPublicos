object frmcontaspagar: Tfrmcontaspagar
  Left = 94
  Top = 55
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Contas a Pagar'
  ClientHeight = 540
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel5: TBevel
    Left = 0
    Top = 27
    Width = 784
    Height = 3
    Align = alTop
  end
  object Bevel8: TBevel
    Left = 0
    Top = 502
    Width = 784
    Height = 3
    Align = alBottom
  end
  object Bevel9: TBevel
    Left = 0
    Top = 465
    Width = 784
    Height = 3
    Align = alBottom
  end
  object Bevel10: TBevel
    Left = 0
    Top = 437
    Width = 784
    Height = 3
    Align = alBottom
  end
  object Bevel12: TBevel
    Left = 0
    Top = 408
    Width = 784
    Height = 3
    Align = alBottom
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 30
    Width = 784
    Height = 378
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    ControlType.Strings = (
      'FILTRO;CheckBox;1;0'
      'SITUACAO;ImageIndex;Original Size'
      'situacao2;ImageIndex;Original Size')
    Selected.Strings = (
      'FILTRO'#9'4'#9'S'#9#9
      'situacao2'#9'3'#9' ?'#9#9
      'DATA_VENCIMENTO'#9'9'#9'Vencimento'#9#9
      'fornecedor'#9'28'#9'Fornecedor'#9#9
      'HISTORICO'#9'33'#9'Hist'#243'rico'#9#9
      'NOTAFISCAL'#9'6'#9'NF'#9#9
      'DOCUMENTO'#9'13'#9'Documento'#9#9
      'ESPECIE'#9'10'#9'Esp'#233'cie'#9#9
      'VALOR'#9'11'#9'Valor-R$'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dscontaspagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    RowHeightPercent = 107
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnTitleButtonClick = wwDBGrid1TitleButtonClick
    OnDblClick = wwDBGrid1DblClick
    OnEnter = wwDBGrid1Enter
    OnExit = wwDBGrid1Exit
    OnKeyPress = wwDBGrid1KeyPress
    ImageList = ImageList1
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object DBEdit1: TDBEdit
    Left = 536
    Top = 176
    Width = 121
    Height = 21
    DataField = 'CODIGO'
    DataSource = dscontaspagar
    TabOrder = 1
    Visible = False
    OnChange = DBEdit1Change
  end
  object FlatPanel7: TFlatPanel
    Left = 0
    Top = 440
    Width = 784
    Height = 25
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 2
    UseDockManager = True
    object Label12: TLabel
      Left = 352
      Top = 5
      Width = 11
      Height = 13
      Caption = 'C:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 396
      Top = 5
      Width = 10
      Height = 13
      Caption = 'E:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 433
      Top = 4
      Width = 33
      Height = 13
      Caption = 'Conta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText8: TDBText
      Left = 470
      Top = 4
      Width = 142
      Height = 15
      DataField = 'conta'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel6: TBevel
      Left = 617
      Top = 2
      Width = 2
      Height = 20
    end
    object Bevel7: TBevel
      Left = 345
      Top = 2
      Width = 2
      Height = 19
    end
    object Bevel11: TBevel
      Left = 260
      Top = 3
      Width = 2
      Height = 19
    end
    object DBText6: TDBText
      Left = 369
      Top = 4
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'C'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText7: TDBText
      Left = 409
      Top = 4
      Width = 20
      Height = 15
      Alignment = taCenter
      DataField = 'E'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 6
      Top = 5
      Width = 67
      Height = 13
      Caption = 'F6 | Localizar:'
    end
    object pselecao: TFlatPanel
      Left = 622
      Top = 2
      Width = 159
      Height = 21
      Color = clRed
      ColorHighLight = clRed
      ColorShadow = clRed
      TabOrder = 0
      UseDockManager = True
      object Label19: TLabel
        Left = 8
        Top = 3
        Width = 50
        Height = 13
        Caption = 'Sele'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object rselecao: TRxCalcEdit
        Left = 64
        Top = 3
        Width = 89
        Height = 18
        AutoSize = False
        BorderStyle = bsNone
        Color = clRed
        DisplayFormat = 'R$ ###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnChange = rselecaoChange
      end
    end
    object bnf: TAdvGlowButton
      Left = 270
      Top = 1
      Width = 66
      Height = 20
      Hint = 'Nota Fiscal de Compra'
      Caption = 'NF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000001D84944415478DA
        62FCFFFF3F0325002080584044C294F385404A1E886D80D898810168EA7F0646
        867FFF19989818198088E1DFBF7F0CFFFE327C6065F97F475D86CF04245712AC
        C10810400C2017C44F3E37FB3F89A073D53510C50010402C5097D88288985561
        408BFF31FC079AFE17642310FFFDFB178881F4BFBF6036486C67E63E861B8F3E
        FC04E90108208801FFFE4B80A85FBF7F31884B09E0F5F3CD6B0FC1F4F71FBFD9
        40344000810D003A850B44FFFEFD9BE1C9C3D7606F011D017409C8C6FF10FF83
        82054A83F5FCFDCB08A201020862C0BFFF607A7DC256A243FF1FD05B20001040
        3003C0A68536EC65F801B68581616BB32BC3FD671FB16A5694E207BB0E040002
        88096200C4B437DF7F33986B8A33BCFBFE07AE98978B0D05C3C0FF3F10030002
        086A00C45F9F7FFC65F80DF4E3B79F7F506CFCFDF73F18A378E11F440D400081
        0D6084BAE0E7CFDF0CDF7F03A3EBC76F8261F0FFCF2F300D104090306040988E
        2D65B33233621AF01FE2028000021BF0EF0FD80F6055DB8F3E4051F8F9DB2FEC
        2E80C6274000810D00A63A902EC5CB330230421BA717FEFF7F0FA20102089212
        FFFEDB185ABB4F0D2868090C1D417000FDFF078EAAFF60F65F704C41722E88F8
        F7998181E93A482B400031529A9D01020C00544729AC885B7611000000004945
        4E44AE426082}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bnfClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object combo_loc: TComboBox
      Left = 78
      Top = 2
      Width = 79
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Documento'
      OnKeyPress = combo_locKeyPress
      Items.Strings = (
        'Documento'
        'Nota Fiscal')
    end
    object LOC: TwwIncrementalSearch
      Left = 160
      Top = 2
      Width = 94
      Height = 21
      DataSource = dscontaspagar
      TabOrder = 3
      OnEnter = LOCEnter
      OnExit = LOCExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Bevel2: TBevel
      Left = 261
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel3: TBevel
      Left = 461
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel4: TBevel
      Left = 685
      Top = 4
      Width = 89
      Height = 19
    end
    object Bevel1: TBevel
      Left = 109
      Top = 4
      Width = 89
      Height = 19
    end
    object Label3: TLabel
      Left = 4
      Top = 7
      Width = 99
      Height = 13
      Caption = 'Data do Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 112
      Top = 7
      Width = 83
      Height = 17
      Cursor = crHandPoint
      Hint = 'Clique aqui para alterar a data de pagamento'
      Alignment = taCenter
      DataField = 'DATA_PAGAMENTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnClick = DBText1Click
    end
    object Label4: TLabel
      Left = 228
      Top = 7
      Width = 30
      Height = 13
      Caption = 'Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 264
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'ACRESCIMO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 404
      Top = 7
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 464
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'DESCONTO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 620
      Top = 7
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 688
      Top = 7
      Width = 81
      Height = 17
      Alignment = taRightJustify
      DataField = 'VALORPAGO'
      DataSource = dscontaspagar
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 468
    Width = 784
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object Label7: TLabel
      Left = 6
      Top = 10
      Width = 50
      Height = 13
      Caption = 'F8 | Filtro:'
    end
    object Label18: TLabel
      Left = 140
      Top = 10
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label20: TLabel
      Left = 380
      Top = 10
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label21: TLabel
      Left = 599
      Top = 10
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object combo_situacao: TComboBox
      Left = 64
      Top = 6
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'A Pagar'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'A Pagar'
        'Pagas'
        'Todas')
    end
    object COMBOFORNECEDOR: TwwDBLookupCombo
      Left = 203
      Top = 6
      Width = 171
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = frmmodulo.qrfornecedor
      LookupField = 'NOME'
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = COMBOFORNECEDOREnter
      OnExit = COMBOFORNECEDORExit
      OnKeyPress = COMBOFORNECEDORKeyPress
    end
    object combo_periodo: TComboBox
      Left = 424
      Top = 6
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Vencimento'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Vencimento'
        'Emiss'#227'o'
        'Pagamento')
    end
    object DateEdit1: TDateEdit
      Left = 509
      Top = 6
      Width = 86
      Height = 21
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 3
      Text = '01/01/0001'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 611
      Top = 6
      Width = 87
      Height = 21
      GlyphKind = gkCustom
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      TabOrder = 4
      Text = '31/12/2099'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 706
      Top = 3
      Width = 71
      Height = 24
      Caption = 'Filtrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000B1300000B1301009A9C1800000A4D694343505068
        6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
        F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
        561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
        7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
        1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
        01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
        C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
        00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
        00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
        CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
        4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
        48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
        223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
        560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
        2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
        FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
        F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
        4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
        79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
        812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
        0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
        170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
        48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
        90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
        5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
        5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
        8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
        272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
        48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
        6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
        A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
        2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
        1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
        192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
        3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
        09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
        46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
        EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
        4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
        EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
        79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
        3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
        67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
        6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
        A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
        5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
        D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
        743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
        4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
        D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
        C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
        3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
        FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
        0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
        15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
        476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
        BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
        F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
        A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
        6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
        68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
        949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
        F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
        DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
        772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
        A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
        955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
        EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
        CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
        26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
        8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
        B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
        7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
        EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
        E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
        5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
        EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
        EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
        FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
        CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
        ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
        CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
        F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
        0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
        003A980000176F925FC546000002644944415478DA74D25D68150418C6F1DFCE
        D976DAF1B4CDB90F6D6DEA18A38D10A653C98430698205E2CDC0860651C47275
        DB5810DD45D408BAF0C20C0A6F6A23EAAEE6CD88820962594118139299501E3B
        C76DBAADF3B1B79B61C3B6E7FEF93FCFFBC1866A4FB07DEFD69EA10B87863F5F
        38F8E2A7B9C496435FE3206A51B1B1D7F6244FBEF2F2B96BA55CFCA75F23E2C8
        EB5F963182ADA8DC00D0D1FBF4C8E4DCDC7D6B3622F2F7218DDD83CB3889A6F5
        ABD73C333A7669654DEE17B112E3113113CB1171EA6C363089BDEB5448A464EA
        7B96934593D7AFDA94C8E86D2F2A2ACBE61F91D84C34D7412776AC03B8BE22BB
        927BF3AD94EA1D146E71EE8DACD4438D067AB854E4E72B3720D090F8FFFE941C
        997DADF100BD8369893AB2B7672CCEE5153199E7A78FDE0EE4507EC03D94903A
        7EC071F1C4E54CEC9F4E47FDAB7BC2B3C25131307537EA062603799CC7B13523
        9CA866F17DE5AE41553CDC9256FAA7EC4EF6B2CA4769ED63FC4C8609F3F801BF
        E0F73580CA776DDA7D5ADBCE84027337EF69DFD762F7D082A57C41677FAB9AFA
        9BAE526BC2F798C66C72357D4CBAEFB46D9D950E7793FDD072B9A8754F4653D7
        660D9DB5AA6BAA343E56A750B8235FF09419A3C82579FE9454DF3B5ABAAA1C6E
        53B1B39BCF92B154315591BF352F555B56539B92AC4E2A2D95CC5E9CB7F01BD2
        46FDA58CE16F744F859357C27B111AC756F007C635FBD880E8F8441CBDBD2DDA
        CE08CF09FD6AD66CFEA5AF7C10B1E57C84A6B3813F318E61ECB2CBE35E109911
        E198D02FB3F66E15D847E5049A29FD8D8BF816DF61068BFA75A003D32EB8FB20
        208D1EEC47C36AFD1F710DF7563F6E43FD3B0008F30AA90F7811AC0000000049
        454E44AE426082}
      TabOrder = 5
      OnClick = BitBtn1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 505
    Width = 784
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 4
      Width = 87
      Height = 24
      Caption = 'F2 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E14944415478DA
        62FCFFFF3F032500208058D0057AF6942AFFFDF737EACFDFBF717FFEFE91F8F3
        EF2FC3EFBF7F5E00F98B80F4B289E18BEF22AB070820466417F4EC2909FEF3F7
        DF645931654975097D064E561E865FFF7E31BCFAF28CE1F89D7D0CAFDEBC7EFE
        E7CF9FDC5971ABD7C2F4000410DC0088E6BF0B4D54ECB955C57419EE7EBAC5F0
        E2FB5386DFFF7E33F0B3F13388714A331CBDB593E1EA9DEB5F812E8B5F92B219
        6C084000810DE8DE5DA20474F66103252B2955713D8683CF77317CFBFA8DE1F7
        FF3F0C1C1CEC0CFF81F0E7BF9F0C9A7C3A0CC76EEE61B879FFEEB3DF7FFED8AE
        CBDE7D0F20809840A60035C708F08B4A298868301C79B197E1FBEF1F0CDF7E7F
        672834AE66C8D42E61F8F0F33DC3BB8F2F188E3F3FC060A1E6C8C0C8F6570A18
        1E3120BD0001043600E8F458793175861B1FAF30BCF9F486E1D3B74F0C1FBEBE
        8787CDD3FB8F187EFFFCCAF0F5F35B86279FEE3358AB5B8302361624071040E0
        580072A43958B9181E7EBE0F0CB49F0C9566AD283133357809982EDC19C5F0F4
        C33D061D6113B01E90184000415DF087E1EBEFCF0C9F7F7D62F8CDFC1B6FBCFF
        FFFB8F811118264003C07C800082B9E0E9D3F70F5578D879183E7C7FC7507828
        85E1EBAB4F0CB34256C16D06DBC6C8C420C527C7F0E8D57D90A54F41620001C4
        043560F185FB2719E4B81419FEFFFEC9C008345D48901BC5E67F7FFF3330FD63
        6490E55364D876712F580F481C2080602E58F2EF1773FAC93B07A42C955C188E
        3EDCC1F0E7DF1FB0CDFFFF821DCEC0C6C4CC60AFE4C9B0E3C216868F9FBF3C03
        063C38600002089E909216040113D29F85D212E2DCB6EA2E0C8F3FDE0706D87D
        86FFFFFE31C8082A31C8F0C9336CBFB899E1E4F52B5F81C93BFE7CC335704202
        082094A41C39CB2B18E89AC97F99FF48DA6BDA3088F349822C6778FCFE11C3CE
        F3FB183E7DF9F61CA83917A61904000288113D37FA4F7652061A12F51B9E99FE
        00BDF8179C99FEFEFBB3EC7CC37594CC0410408C94666780000300708A7F01A2
        891CF10000000049454E44AE426082}
      TabOrder = 0
      OnClick = bincluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object balterar: TAdvGlowButton
      Left = 98
      Top = 4
      Width = 87
      Height = 24
      Caption = 'F3 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        00000004000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD735200C65A
        0000AD4A0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A3100C65A
        0000CE630000B5521000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A
        3100C6630000CE630000B55A2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00B55A2100CE630000C6630000C6846300FFFFFF00FFFFFF00AD4A0000BD5A
        0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300FFFF
        FF00FFFFFF00AD4A0000CE630000B54A0000FFFFFF00FFFFFF00B5520000D673
        0000CE6B0000CE630000CE630000CE630000CE630000C6630000BD6B4200FFFF
        FF00FFFFFF00CE9C8400C6630000C6630000C6846300FFFFFF00BD5A0000DE7B
        0000D6730000CE630000A5421000CE9C8400CE9C8400CE9C8400FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AD4A0000CE630000B5521000FFFFFF00C6630000E784
        0000CE630000DE730000CE630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE630000F794
        0000B5521000B5520000DE7B0000CE6B0000BD7B5200FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE6B0800FF9C
        0800CE844200FFFFFF00B5520000E7840000CE6B0000BD633100FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00B54A0000CE630000B5521000FFFFFF00CE732100FFAD
        3100CE844A00FFFFFF00FFFFFF00C6631000E7840000E77B0000BD520000C67B
        5200C68C7300B5521000C6630000C6630000C6846300FFFFFF00CE7B3900FFBD
        6300C67B5200FFFFFF00FFFFFF00FFFFFF00B55A2100E77B0000E7840000DE7B
        0000D6730000CE6B0000C6630000AD4A1000FFFFFF00FFFFFF00CE947B00C684
        5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C8400C6631000CE6B
        0000CE6B0000BD5A0000BD6B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bexcluir: TAdvGlowButton
      Left = 186
      Top = 4
      Width = 87
      Height = 24
      Caption = 'Del | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E04944415478DA
        62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
        F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
        FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
        DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
        FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
        FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
        7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
        1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
        FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
        D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
        F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
        010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
        370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
        E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
        AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
        0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
        161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
        918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
        3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
        BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
        48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
        A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
        90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
        B7520000000049454E44AE426082}
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bpagamento: TAdvGlowButton
      Left = 274
      Top = 4
      Width = 116
      Height = 24
      Caption = 'F4 | Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002F14944415478DA
        62FCFFFF3F0321D073A4FDEB9FBF7F242BEC6B3FA1CB0104101321CDDD875BBF
        0A700970FDFBF7EF63FDAE2A3E74798000C26B40E7A196AF02DC025C32A2B20C
        C2BCC20C20434A3717A218021040380DE838D8FC55905B904B56548EE1F3AF0F
        0C724043C4F84519FEFFFFF731674D3ADC108000C26A40FB81A6AF823C825C20
        4D9F7E7E64F8F1E707C3C12B87199424951924852419FEFDFFFF3169691CD810
        8000C230A06D7F0354B31CC3E5475718EE3CBB0BD4F08F41435995E123D0256A
        32AA0C1282120CBFFFFC7E01520F10408CC8B1D0B2AFFE1BD0AF9C0A620A0CEA
        C21A0CD29C720CEBAFAC65B8FBE11683A2A422032F2B2FC3B9BBE7196E3DB9FD
        6769C24A56901E800002BB60CAA97ED5E6BD75BF847884809AE519AE006D0669
        9E7F6C1E83859C250333130B030F2B0FC3D93BE719EE3CBD0BE433B344CC0D61
        01E9050820A629A7FA6ADF7F7A7F0BA89955515C81E1D3AF4F0CBFFFFF02DBEC
        A1E3C1B0E4D462062D194D8673B7CF33DC7E7A9B21C73D87415E5C9EE1F7DFDF
        0D2003000288B16177F57F501429892B327CFAFD89E1C7DFEF0C206F3D7DF59C
        818591854113A8F9EC9D730CAFBEBE6248B44C64F8F3F72FC32F60A04EDD358D
        E1DB8F6F420001C4C2C2C4B2F0E3D78FF1CFDFBF6010171463387BF31C83A692
        3A8382843CD8CF676E9F65F8C5F40BA83981E1EDE7770C3BEF6DFFF9FAD95BF6
        AFDFBF95FCF9F74711208018810127094CA6CFFEFCF9C3202D22C520252CC5F0
        1118757C6C7C0C676E9D6578F9F52583AF8E1FC3FD377719F65F3EB80BA8F606
        104FDC9EB7FB1EC80B0001048E85EAED65B3D5C4D5532E3FBDCC200F8C3E5960
        FC9FB97586E116D0CF6A326A0C371EDFBCF7E7CFEF54A0C6E75B72765C478E76
        8000021B50BAB9409D9793F7AA95B235F3C6731B18F8B8F818AE3FBAF99F8D85
        1564E3A135691BDA70A5588000021B90BF3E9B15983056016DF1E3E2E0667AF8
        F2E11F3656364BA0E6776BD336DEC3975F0002089E905297271A020D990D8C9E
        7A6022D9CA4024000830009F3242C5F6EE54480000000049454E44AE426082}
      TabOrder = 3
      OnClick = bpagamentoClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object brelatorio: TAdvGlowButton
      Left = 392
      Top = 4
      Width = 103
      Height = 24
      Caption = 'F7 | Relat'#243'rios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002B64944415478DA
        62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
        B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
        44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
        CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
        1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
        6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
        40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
        03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
        EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
        C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
        1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
        B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
        7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
        F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
        2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
        E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
        0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
        01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
        F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
        194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
        62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
        13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
        AE426082}
      TabOrder = 4
      OnClick = brelatorioClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bextornar: TAdvGlowButton
      Left = 497
      Top = 4
      Width = 100
      Height = 24
      Caption = 'F9 | Extornar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002544944415478DA
        62FCFFFF3F03250020809848511CBB2AB82272690033B21840009164C09F5F7F
        A3FEFCFE3313590C20801891BD90772059F6DF9F7FC17FFFFE75FFFBE7AF3110
        8BFEF9F397E1EFEFBF0C205A4A409AE11F90BEFBF4DEC4CDD9BB0B407A000208
        6E40DEFE644BA0C672692E197F414E21066E566E0616261686BFFF8106FCFBC7
        F0EF1FD01020FBF7DF3F0C97EF5C62B8F3E86EEB9ED2C3350001C402D29CBB2F
        49F6DFDF7FE51A429AFEE2DC120CDFFF7C6360626466F8F30FA41982FF0135C3
        F8BF7FFF61007A850DA4172080C006009D1A2CCD23E32FCA250654F487E1D79F
        3F0C775E5E67B8FFE23E03DC0B404D5222D20C405732DC7D786FCAC1EAE36520
        BD00010433C09D9F5D80E1DBEFAF4005FF18F65DDBF71828B67655FCE642E400
        73EAB4B9F4F7F79FB3076B4EE4C2C40002081C0B405B8C3959B918181998189E
        BE7B0AB20D43332416FEAC043A3F05590C2080C02E0039EF0F3070181919C181
        045488351A0FD59E6845170308202668FC9E7DFFE53DC3F7DFDF188478854181
        14EC31C1B19F98B4011040E0680C5FE457202528DDAF2CA90C8CB67F0C5FBF7F
        65B8FDF036C3FDC7C040FC8D4807C07081F081017975CA4D469001000104F602
        D0C6B5F79EDE73606366F317151267F805846A4A6A0C4A0ACAE0E8FB074C07A0
        2804A606709AD8B47A33DC05000104F6C2BAE46D8F7FFFFAD379FEC6858D57EF
        5C65F8F8E113C3B71FDF20E101B4ED3728FEC1E90092A0402E810180004249CA
        4E1DD6B2402706FFF9F3C71DE86C63A0B3858134134803287A613430D131DC5B
        F010EC05800062A4343B0304180089C768EB99DF2E580000000049454E44AE42
        6082}
      TabOrder = 5
      OnClick = bextornarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
    end
    object bfechar: TAdvGlowButton
      Left = 706
      Top = 4
      Width = 73
      Height = 24
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002A04944415478DA
        62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
        06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
        95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
        6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
        93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
        9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
        19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
        3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
        D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
        03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
        0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
        1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
        BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
        409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
        92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
        204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
        7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
        43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
        805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
        FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
        8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
        FBDD0000000049454E44AE426082}
      TabOrder = 6
      OnClick = bfecharClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object bdesliga_filtro: TBitBtn
    Left = 166
    Top = 148
    Width = 179
    Height = 25
    Caption = 'Desligar filtro'
    TabOrder = 6
    Visible = False
    OnClick = bdesliga_filtroClick
  end
  object Panel4: TPanel
    Left = 0
    Top = 411
    Width = 784
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 7
    object Label16: TLabel
      Left = 433
      Top = 6
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'A pagar:'
    end
    object Label17: TLabel
      Left = 622
      Top = 5
      Width = 38
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pagas:'
    end
    object Label2: TLabel
      Left = 27
      Top = 6
      Width = 43
      Height = 13
      Caption = 'A vencer'
    end
    object Image2: TImage
      Left = 6
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7
        E3CAAA9BA16A508F573D8D563D996851C5A99BEEE7E3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDFC8BDA26547B17F56D4B692DAC2A5D9C2A5D1B38F
        AA7951915F47D8C6BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2CCBDA25B3BCAA6
        7CD7BA9EC29B76B58961B3855FBD9571D0B296C4A27688563DD8C6BDFFFFFFFF
        FFFFFFFFFFF4ECE4B37749CEA980D9BBA1BD9065B98B61B6885EB2835DB0825C
        AF825BCCA98CC5A478946148EFE8E4FFFFFFFFFFFFDBBC9BBE905DDFC1A7C495
        6BC19068E0CAB7FDFCFBFEFEFDE9DBCFB3845DB2845DD3B498AD7A55C7A99BFF
        FFFFFFFFFFC58F51DABB9BD4AC88C6976BC29468C09266ECDED2F9F6F3BA8A62
        B88962B78961C49C77D1B7929F6951FFFFFFFFFFFFC0823BE2C6AECFA175C498
        6AC39669C39568EDDFD3FAF6F3BE8F65BD8E64BD8E63BD9168DEC5A995553AFF
        FFFFFFFFFFC68841E3C8AFCFA279CB9C70C6996BC4976AFEFEFEFEFEFDC29568
        C09367C19367C2976CDEC4AA98583AFFFFFFFFFFFFD19D5BDFBB9EDAB292CE9F
        74CC9D71CA9B70DCBEA2DCBEA1C4986AC4986AC3976AD0AA84D7B996AB6D51FF
        FFFFFFFFFFE6C8A4CC9B67E6CAB3D3A479CF9F76CE9D73FAF7F4FAF7F4CA9D70
        CA9C70CCA076DEBFA4B8895AD2AE9AFFFFFFFFFFFFF9F0E7D29959D8B18BE5C9
        B2D5A87CD0A478E1C3A7E0C2A7CFA175D0A376DCBCA1CFAB84B37549F3EAE4FF
        FFFFFFFFFFFFFFFFF1DCC5D0914ED8B18BE5CCB7DFB99CD6AA84D5A881D8B290
        E0C1AAD3AD85B3703DE5D0BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DDC5D59B
        5ACF9F69DFBE9FE2C4ADE2C4ADDEBB9EC79661C38948E9D5BDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E7E9CBA7D7A164CE904DCC9049D09B5A
        E3C6A1F7EEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel15: TBevel
      Left = 76
      Top = 3
      Width = 2
      Height = 19
    end
    object Label15: TLabel
      Left = 107
      Top = 6
      Width = 72
      Height = 13
      Caption = 'Vencendo Hoje'
    end
    object Image6: TImage
      Left = 86
      Top = 5
      Width = 16
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AC8EC2CA6DF2AA3DE28A0DC269D
        DB249AD92297D81F92D51A8BD21584CE107DCB0C76C80870C5056BC20267C05D
        9CD647B5E5BDE2F4F3FBFDEEFAFDEDFAFDEDFAFDEEFBFDEEFBFDEEFAFDEDFAFD
        ECFAFDECFAFDEBFAFDF1FBFDAACDEA297ECAC3E7F761BEE7F3FBFDB4EEF957D9
        F457D9F456D7F257D6F157D5F156D8F350D7F44DD6F361D9F5E9FAFD4392D1B5
        D4EDFFFFFF5DC0EA9CD6F0E6F8FC8AE4F759DAF55AD9F33CA0D43CA0D453D5F1
        51D7F44FD5F3D7F5FB87BEE454A0D8FFFFFFFFFFFFE2F4FB36B1E4F2FAFDC2F1
        FA5BDBF55BD9F363DEF556CAEA54D5F153D8F493E6F7E2F3FA1B89D0DEEDF8FF
        FFFFFFFFFFFFFFFF78CCEE8BD1EFE9FAFD93E5F75BD9F346B0DC3CA0D455D6F1
        5BDAF4DDF7FC7CBFE687C3E8FFFFFFFFFFFFFFFFFFFFFFFFF6FCFE44B9E7C7E9
        F6E5F9FC5CD9F33CA0D43CA0D456D6F1C6F2FBBFE2F33AA3DCF5FAFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB8E5F770C7ECF8FDFE5DDBF33DA1D43DA1D45BD8F3
        ECFAFD67BAE4B2DCF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59C2
        EBA8DEF3ECF8FC3DA2D53DA2D5D3F4FBA1D6F05CB8E5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDAF2FB39B7E7F8FCFE93E8F89DEAF9EBF9FD
        30A9E0D7EEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF73CDEF93D7F1F2FBFDE6F9FD8ED2EF85CEEEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FAFE43BDE9F0F9FCD4EEF942B7E7
        F1F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8CD7F384D3F081D0EFACE0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFF5CC6EE68C9EEFDFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Image7: TImage
      Left = 199
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E6
        F79AA6E34C61CB354EC4334CC2455CC694A1DEE1E4F5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBFC7EF4B62D05163D3838FE6949FED949EEC828DE4
        4B5CCD3C53C3B8C0E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1CAF1465FD47483
        E2A0ABF37E8AEB5B66E35A65E27C86E99EA7F06E7BDC314AC1B8C1E9FFFFFFFF
        FFFFFFFFFFE7EAFA586FDD7787E5A2AFF45666E65564E58891EC8791EB525EE1
        515CE09EA8F16E7CDC4056C6E2E6F6FFFFFFFFFFFFA7B4F05F72DFA3B2F6596D
        EA586BE95768E7FEFEFEFEFEFE5461E45360E2525EE19EA8F14F60D097A3E0FF
        FFFFFFFFFF6A81E88D9EEF8398F35B72ED5A6FEB596DEA8F9CF0A5AEF25666E6
        5564E55461E47C88EA8490E64D63CDFFFFFFFFFFFF5C75E99FB2F6647FF15E77
        EF5C75EE5B72EDD2D8F9FEFEFE586BE95768E75666E65C6BE698A4F03B54CBFF
        FFFFFFFFFF607AEDA0B5F76683F35F7BF25E79F05E77EFFEFEFEFEFEFE5A6FEB
        596DEA586BE95E6EE89AA7F04058CFFFFFFFFFFFFF758CF290A5F287A0F7617F
        F3607DF25F7BF2FEFEFEFEFEFE5C75EE5B72ED5A6FEB8192F08897EB586FD7FF
        FFFFFFFFFFB1BFFA6B80EBA8BCFA6281F46180F4617FF3FEFEFEFEFEFE5E79F0
        5E77EF5C75EEA4B4F75C6FDCA2AEEBFFFFFFFFFFFFEBEEFE748BF68296EFA8BC
        FA6281F46281F4FEFEFEFEFEFE607DF25F7BF2A5B8F87A8CE95C73E0E6EAFAFF
        FFFFFFFFFFFFFFFFCED6FD6C85F78396F0A8BCFA89A2F76A88F56A88F588A1F7
        A7BBF97E91EB5971E4C5CEF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED7FD768D
        F96D82ED91A5F39FB3F79FB3F790A5F2677CE86880ECC8D0F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEEFEB5C2FC7C93F96B85F66983F5768EF4
        B0BDF8E9ECFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel14: TBevel
      Left = 188
      Top = 3
      Width = 2
      Height = 19
    end
    object Label22: TLabel
      Left = 219
      Top = 6
      Width = 42
      Height = 13
      Caption = 'Vencidas'
    end
    object Bevel13: TBevel
      Left = 272
      Top = 3
      Width = 2
      Height = 19
    end
    object Label23: TLabel
      Left = 303
      Top = 6
      Width = 29
      Height = 13
      Caption = 'Pagas'
    end
    object Image8: TImage
      Left = 282
      Top = 5
      Width = 15
      Height = 15
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EE
        E08FBF913A8C3E2479282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C695
        3C964B307B33B4D0B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD
        82A7DAB486CB9765BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFF
        FFFFFFFFFFE1F2E432A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E
        5AB673A4D8B268B77E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0
        785EBD7074C484D3EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FF
        FFFFFFFFFF3EB45C90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA95
        56B66C5AB87184CB9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C9
        7FEFF8F0FEFEFEEAF6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FF
        FFFFFFFFFF2DB650A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFE
        FAFCFB8BCF9868C07DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C8
        7563C56E60C36D60C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFF
        FFFFFFFFFF9ADEAC56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370
        B5E2BD6EC67DABDEB447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0
        B46CCB7969C97567C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FF
        FFFFFFFFFFFFFFFFBFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79C
        ADE0B477C78A26A03AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C7
        6858C17395D6A2A4DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A
        97DBAAE1F5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Stretch = True
      Transparent = True
    end
    object Bevel16: TBevel
      Left = 345
      Top = 3
      Width = 2
      Height = 19
    end
    object rpagar: TRxCalcEdit
      Left = 502
      Top = 2
      Width = 111
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object rpaga: TRxCalcEdit
      Left = 666
      Top = 2
      Width = 111
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object btotal: TButton
    Left = 592
    Top = 352
    Width = 75
    Height = 25
    Caption = 'totalizacao'
    TabOrder = 8
    Visible = False
    OnClick = btotalClick
  end
  object qrcontaspagar: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontaspagarCalcFields
    AfterInsert = qrcontaspagarAfterInsert
    Active = True
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 464
    Top = 208
    object qrcontaspagarFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 4
      FieldName = 'FILTRO'
    end
    object qrcontaspagarsituacao2: TIntegerField
      DisplayLabel = ' ?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontaspagarDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 9
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontaspagarfornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object qrcontaspagarHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 33
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcontaspagarNOTAFISCAL: TStringField
      DisplayLabel = 'NF'
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrcontaspagarDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 13
      FieldName = 'DOCUMENTO'
    end
    object qrcontaspagarESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie'
      DisplayWidth = 10
      FieldName = 'ESPECIE'
    end
    object qrcontaspagarVALOR: TFloatField
      DisplayLabel = 'Valor-R$'
      DisplayWidth = 11
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarSITUACAO: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontaspagarVALORPAGO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALORPAGO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarCODCONTA: TStringField
      DisplayWidth = 9
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarCODFORNECEDOR: TStringField
      DisplayWidth = 15
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrcontaspagarCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontaspagarDATA_EMISSAO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrcontaspagarDATA_PAGAMENTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcontaspagarLIQUIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQUIDO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarC: TStringField
      DisplayWidth = 1
      FieldName = 'C'
      Visible = False
      Size = 1
    end
    object qrcontaspagarE: TStringField
      DisplayWidth = 1
      FieldName = 'E'
      Visible = False
      Size = 1
    end
    object qrcontaspagarCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarconta: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'codconta'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrcontaspagarMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcontaspagarCODCAIXA: TStringField
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
  end
  object dscontaspagar: TDataSource
    DataSet = qrcontaspagar
    Left = 432
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 240
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = Alterar1Click
    end
    object Pagamento1: TMenuItem
      Caption = 'Pagamento'
      ShortCut = 115
      OnClick = Pagamento1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = Localizar1Click
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = brelatorioClick
    end
    object Filtro1: TMenuItem
      Caption = 'Filtro'
      ShortCut = 119
      OnClick = Filtro1Click
    end
    object Extornar1: TMenuItem
      Caption = 'Extornar'
      ShortCut = 120
      OnClick = Extornar1Click
    end
    object otalizar1: TMenuItem
      Caption = 'Totalizar'
      ShortCut = 121
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 432
    Top = 208
    Bitmap = {
      494C01010500090004000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000002D0000000100200000000000302A
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
      0000000000000000000000000000000000000000000000000000000000000000
      00007AC8EC002CA6DF002AA3DE0028A0DC00269DDB00249AD9002297D8001F92
      D5001A8BD2001584CE00107DCB000C76C8000870C500056BC2000267C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000047B5E500BDE2F400F3FBFD00EEFA
      FD00EDFAFD00EDFAFD00EEFBFD00EEFBFD00EEFAFD00EDFAFD00ECFAFD00ECFA
      FD00EBFAFD00F1FBFD00AACDEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3E7F70061BEE700F3FBFD00B4EEF90057D9F40057D9F40056D7F20057D6
      F10057D5F10056D8F30050D7F4004DD6F30061D9F500E9FAFD004392D1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005DC0EA009CD6F000E6F8
      FC008AE4F70059DAF5005AD9F3003CA0D4003CA0D40053D5F10051D7F4004FD5
      F300D7F5FB0087BEE40054A0D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2F4FB0036B1E400F2FAFD00C2F1FA005BDBF5005BD9F30063DE
      F50056CAEA0054D5F10053D8F40093E6F700E2F3FA001B89D000DEEDF8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000078CCEE008BD1
      EF00E9FAFD0093E5F7005BD9F30046B0DC003CA0D40055D6F1005BDAF400DDF7
      FC007CBFE60087C3E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6FCFE0044B9E700C7E9F600E5F9FC005CD9F3003CA0
      D4003CA0D40056D6F100C6F2FB00BFE2F3003AA3DC00F5FAFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8E5
      F70070C7EC00F8FDFE005DDBF3003DA1D4003DA1D4005BD8F300ECFAFD0067BA
      E400B2DCF2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C2EB00A8DEF300ECF8FC003DA2
      D5003DA2D500D3F4FB00A1D6F0005CB8E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DAF2FB0039B7E700F8FCFE0093E8F8009DEAF900EBF9FD0030A9E000D7EE
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073CDEF0093D7F100F2FB
      FD00E6F9FD008ED2EF0085CEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1FAFE0043BDE900F0F9FC00D4EEF90042B7E700F1F9FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CD7F30084D3
      F00081D0EF00ACE0F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF005CC6EE0068C9EE00FDFEFF00000000000000
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
      000000000000000000000000000000000000000000000000000000000000F1E7
      E300CAAA9B00A16A50008F573D008D563D0099685100C5A99B00EEE7E3000000
      0000000000000000000000000000000000000000000000000000E0EEE0008FBF
      91003A8C3E0024792800247628003A843E008FB99100E0EBE000000000000000
      00000000000000000000000000000000000000000000E3E6F7009AA6E3004C61
      CB00354EC400334CC200455CC60094A1DE00E1E4F50000000000000000000000
      0000A97151A9C38E68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB27C
      5AFFB17B58FFAE7957FFAD7656FFAB7554FFA97353FFA97151FFA97151A90000
      00000000000000000000DFC8BD00A2654700B17F5600D4B69200DAC2A500D9C2
      A500D1B38F00AA795100915F4700D8C6BD000000000000000000000000000000
      000000000000B5D9B600308E3400419F510086C999009AD2AA009AD1AA0082C6
      95003C964B00307B3300B4D0B600000000000000000000000000000000000000
      0000BFC7EF004B62D0005163D300838FE600949FED00949EEC00828DE4004B5C
      CD003C53C300B8C0E9000000000000000000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF0000000000000000E2CCBD00A25B3B00CAA6
      7C00D7BA9E00C29B7600B5896100B3855F00BD957100D0B29600C4A276008856
      3D00D8C6BD00000000000000000000000000B5DBBA00248E29006CBD8200A7DA
      B40086CB970065BB7C0063B97B0085CA9700A4D8B30065B67C0023712600B4D0
      B600000000000000000000000000C1CAF100465FD4007483E200A0ABF3007E8A
      EB005B66E3005A65E2007C86E9009EA7F0006E7BDC00314AC100B8C1E9000000
      0000CA946EFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFE
      FCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFEFAFFFCFCF9FFFFFFFFFFAA7353FF0000
      0000F4ECE400B3774900CEA98000D9BBA100BD906500B98B6100B6885E00B283
      5D00B0825C00AF825B00CCA98C00C5A4780094614800EFE8E40000000000E1F2
      E40032A0430071C18600A7DAB1005FBB76005BB9720058B76F0058B46E0057B4
      6E005AB67300A4D8B20068B77E00307F3400E0ECE10000000000E7EAFA00586F
      DD007787E500A2AFF4005666E6005564E5008891EC008791EB00525EE100515C
      E0009EA8F1006E7CDC004056C600E2E6F600CC976FFFFFFFFFFFFFFFFCFFFFFF
      FDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFC
      F7FFFBFBF6FFFFFFFFFFAC7554FF00000000DBBC9B00BE905D00DFC1A700C495
      6B00C1906800E0CAB700FDFCFB00FEFEFD00E9DBCF00B3845D00B2845D00D3B4
      9800AD7A5500C7A99B00000000008FD29F004BAF6300A9DCB30063C078005EBD
      700074C48400D3EBD80089CC980055B56B0057B46D005BB67300A5D9B300409A
      4D008EBB900000000000A7B4F0005F72DF00A3B2F600596DEA00586BE9005768
      E700FEFEFE00FEFEFE005461E4005360E200525EE1009EA8F1004F60D00097A3
      E000D19C73FFFFFFFFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFD
      FAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFAF6FFFBF8F4FFFFFFFFFFB07A58FF0000
      0000C58F5100DABB9B00D4AC8800C6976B00C2946800C0926600ECDED200F9F6
      F300BA8A6200B8896200B7896100C49C7700D1B792009F695100000000003EB4
      5C0090D19E008CD3990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA
      950056B66C005AB8710084CB960086C699003A8A3E00000000006A81E8008D9E
      EF008398F3005B72ED005A6FEB00596DEA008F9CF000A5AEF2005666E6005564
      E5005461E4007C88EA008490E6004D63CD00D49E75FFFFFFFFFFFEFEFCFFFDFD
      FBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7
      F2FFFBF5F2FFFFFFFFFFB27C5AFF00000000C0823B00E2C6AE00CFA17500C498
      6A00C3966900C3956800EDDFD300FAF6F300BE8F6500BD8E6400BD8E6300BD91
      6800DEC5A90095553A000000000026AF4800A5DBAE006FC97E0072C97F00EFF8
      F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8700066BD7C009FD6
      AE00227E2500000000005C75E9009FB2F600647FF1005E77EF005C75EE005B72
      ED00D2D8F900FEFEFE00586BE9005768E7005666E6005C6BE60098A4F0003B54
      CB00D5A076FFFFFFFFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9
      F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3EFFFF8F2ECFFFFFFFFFFB57E5CFF0000
      0000C6884100E3C8AF00CFA27900CB9C7000C6996B00C4976A00FEFEFE00FEFE
      FD00C2956800C0936700C1936700C2976C00DEC4AA0098583A00000000002DB6
      5000A6DCB00071CB7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFE
      FE00FAFCFB008BCF980068C07D00A0D6AD002283250000000000607AED00A0B5
      F7006683F3005F7BF2005E79F0005E77EF00FEFEFE00FEFEFE005A6FEB00596D
      EA00586BE9005E6EE8009AA7F0004058CF00D8A279FFFFFFFFFFFDFDFAFFFCFC
      FAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0
      EAFFF6ECE8FFFFFFFFFFB7815EFF00000000D19D5B00DFBB9E00DAB29200CE9F
      7400CC9D7100CA9B7000DCBEA200DCBEA100C4986A00C4986A00C3976A00D0AA
      8400D7B99600AB6D5100000000004AC46B0094D6A00090D69A0068C8750063C5
      6E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3E5008AD098008ACD
      9C003B983F0000000000758CF20090A5F20087A0F700617FF300607DF2005F7B
      F200FEFEFE00FEFEFE005C75EE005B72ED005A6FEB008192F0008897EB00586F
      D700D9A379FFFFFFFFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5
      F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EAE4FFF2E7DEFFFFFFFFFFBA8560FF0000
      0000E6C8A400CC9B6700E6CAB300D3A47900CF9F7600CE9D7300FAF7F400FAF7
      F400CA9D7000CA9C7000CCA07600DEBFA400B8895A00D2AE9A00000000009ADE
      AC0056BE6F00AEE0B6006CCB790067C7710064C66F0062C46D0061C36D0062C3
      7000B5E2BD006EC67D00ABDEB40047A85D008EC7930000000000B1BFFA006B80
      EB00A8BCFA006281F4006180F400617FF300FEFEFE00FEFEFE005E79F0005E77
      EF005C75EE00A4B4F7005C6FDC00A2AEEB00DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF00000000F9F0E700D2995900D8B18B00E5C9
      B200D5A87C00D0A47800E1C3A700E0C2A700CFA17500D0A37600DCBCA100CFAB
      8400B3754900F3EAE40000000000E4F7E90048C465007ECD8F00ADE0B4006CCB
      790069C9750067C7710067C7730067C774006AC87800ABDEB30075C3880032A0
      4200E1F1E30000000000EBEEFE00748BF6008296EF00A8BCFA006281F4006281
      F400FEFEFE00FEFEFE00607DF2005F7BF200A5B8F8007A8CE9005C73E000E6EA
      FA00DCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FF0000
      000000000000F1DCC500D0914E00D8B18B00E5CCB700DFB99C00D6AA8400D5A8
      8100D8B29000E0C1AA00D3AD8500B3703D00E5D0BD0000000000000000000000
      0000BFECCA003CC25B007ECD8F00AEE0B60091D79C0076CD820076CD820091D7
      9C00ADE0B40077C78A0026A03A00B5DFBD00000000000000000000000000CED6
      FD006C85F7008396F000A8BCFA0089A2F7006A88F5006A88F50088A1F700A7BB
      F9007E91EB005971E400C5CEF50000000000DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD000000000000000000000000F1DDC500D59B
      5A00CF9F6900DFBE9F00E2C4AD00E2C4AD00DEBB9E00C7966100C3894800E9D5
      BD000000000000000000000000000000000000000000C0ECCB0049C7680058C1
      730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B25400B6E3C1000000
      000000000000000000000000000000000000CED7FD00768DF9006D82ED0091A5
      F3009FB3F7009FB3F70090A5F200677CE8006880EC00C8D0F800000000000000
      0000A971516BDDB18DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E
      75FFD29D73FFCF9A72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516B0000
      0000000000000000000000000000FAF1E700E9CBA700D7A16400CE904D00CC90
      4900D09B5A00E3C6A100F7EEE400000000000000000000000000000000000000
      00000000000000000000E5F7E9009EE2B00054CA71003ABF5B0036BD590048C2
      6A0097DBAA00E1F5E70000000000000000000000000000000000000000000000
      000000000000EAEEFE00B5C2FC007C93F9006B85F6006983F500768EF400B0BD
      F800E9ECFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E000000280000003C0000002D00000001000100
      00000000680100000000000000000000000000000000000000000000FFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      C002000000000000C002000000000000E006000000000000F00E000000000000
      F00E000000000000F81E000000000000F81E000000000000FC3E000000000000
      FC3E000000000000FFFE000000000000FFFFE01FC03F80700001C00F801F0030
      00018007000E0010000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      000100020004000000018007000E00100001C00F801F00300001E01FC03F8070
      FFFFFFFFFFFFFFF000000000000000000000000000000000000000000000}
  end
  object Qrsoma: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(entrada) total_entrada, sum(saida) total_saida, '
      '(select sum(entrada) from c000044 where movimento = 08),'
      '(select sum(saida) from c000044 where movimento = 08)'
      'from c000044')
    Params = <>
    Left = 456
    Top = 104
  end
end
