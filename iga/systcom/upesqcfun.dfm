object frmPesqcfun: TfrmPesqcfun
  Left = 65
  Top = 16
  Width = 901
  Height = 709
  BorderIcons = []
  Caption = 'Pesquisa de Comiss'#227'o do Funcion'#225'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 42
    Align = alTop
    TabOrder = 3
    object spdconfirma: TSpeedButton
      Left = 851
      Top = 4
      Width = 38
      Height = 33
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = spdconfirmaClick
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 634
    Width = 893
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 592
    Align = alLeft
    TabOrder = 1
    object Bevel3: TBevel
      Left = 4
      Top = 532
      Width = 193
      Height = 114
      Visible = False
    end
    object Bevel4: TBevel
      Left = 4
      Top = 49
      Width = 193
      Height = 120
    end
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 199
      Height = 48
      Align = alTop
    end
    object Label3: TLabel
      Left = 57
      Top = 12
      Width = 79
      Height = 22
      Caption = 'Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 540
      Width = 66
      Height = 17
      Caption = 'C'#243'digo de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 8
      Top = 589
      Width = 21
      Height = 17
      Caption = 'At'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object spdlimpar: TSpeedButton
      Left = 160
      Top = 127
      Width = 33
      Height = 33
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007770707070707070700000007777
        7777777777777000000077707770707777707000000077777777077777777000
        000077707778787777707000000077777070707070777000000071F077777777
        77707000000011F778877777777770000000711F11F070707070700000007718
        1777777777777000000077811F777777777770000000811771F7777777777000
        0000187777177777777770000000777777777777777770000000777777777777
        777770000000}
      OnClick = spdlimparClick
    end
    object spdfiltrar: TSpeedButton
      Left = 160
      Top = 75
      Width = 33
      Height = 33
      Flat = True
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333333330033003300300003333
        3333300330033003000033303333333333333333000033000333333333333333
        000030F000333333333333330000330F000333333333333300003330F0000000
        73333333000033330F0078887033333300003333300788FF8703333300003333
        30788888F877333300003333308888888F80333300003333307888888F803333
        000033333078FF8888803333000033333777FF88887733330000333333077888
        8703333300003333333077777033333300003333333370007333333300003333
        33333333333333330000}
      OnClick = spdfiltrarClick
    end
    object lbltitdatai: TLabel
      Left = 8
      Top = 56
      Width = 19
      Height = 17
      Caption = 'De'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 113
      Width = 21
      Height = 17
      Caption = 'At'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel6: TBevel
      Left = 4
      Top = 169
      Width = 193
      Height = 214
    end
    object Label8: TLabel
      Left = 8
      Top = 176
      Width = 76
      Height = 17
      Caption = 'Funcion'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DtpDataI: TDateTimePicker
      Left = 8
      Top = 77
      Width = 137
      Height = 25
      Date = 39647.643559745370000000
      Time = 39647.643559745370000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DtpDataF: TDateTimePicker
      Left = 8
      Top = 134
      Width = 137
      Height = 25
      Date = 39647.643731724540000000
      Time = 39647.643731724540000000
      DateMode = dmUpDown
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edicodigoi: TEdit
      Left = 8
      Top = 560
      Width = 129
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'edicodigoi'
      Visible = False
      OnKeyPress = edicodigoiKeyPress
    end
    object edicodigof: TEdit
      Left = 8
      Top = 610
      Width = 129
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'edicodigof'
      Visible = False
      OnKeyPress = edicodigofKeyPress
    end
    object cbxnomefun: TDBLookupComboBox
      Left = 8
      Top = 198
      Width = 185
      Height = 25
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnDropDown = cbxnomefunDropDown
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 692
    Height = 592
    Align = alClient
    TabOrder = 0
    object Bevel2: TBevel
      Left = 1
      Top = 49
      Width = 690
      Height = 48
      Align = alTop
    end
    object Bevel5: TBevel
      Left = 1
      Top = 97
      Width = 690
      Height = 49
      Align = alTop
    end
    object lbltitdesc: TLabel
      Left = 4
      Top = 50
      Width = 96
      Height = 17
      Caption = 'Classificar Por'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 172
      Top = 50
      Width = 59
      Height = 17
      Caption = 'Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 276
      Top = 439
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object lbltotval: TLabel
      Left = 491
      Top = 439
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbltotval'
    end
    object Label4: TLabel
      Left = 276
      Top = 455
      Width = 87
      Height = 13
      Caption = 'Total Vlr Comiss'#227'o'
    end
    object lbltotvalvlrc: TLabel
      Left = 474
      Top = 455
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbltotvalvlrc'
    end
    object Bevel7: TBevel
      Left = 1
      Top = 1
      Width = 690
      Height = 48
      Align = alTop
    end
    object spdrelatorios176: TSpeedButton
      Left = 12
      Top = 10
      Width = 33
      Height = 30
      Hint = 'Relat'#243'rios'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spdrelatorios176Click
    end
    object dbgcfun: TDBGrid
      Left = 2
      Top = 100
      Width = 679
      Height = 333
      DataSource = frmDados.Dts_Comissao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = dbgcfunEnter
      OnExit = dbgcfunExit
      OnKeyDown = dbgcfunKeyDown
      OnKeyPress = dbgcfunKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DATAFEC'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nfun'
          Title.Caption = 'Nome do Funcion'#225'rio'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERVICO'
          Title.Caption = 'Detalhe / Servi'#231'o'
          Width = 272
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCOMF'
          Title.Caption = '%'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VCOMF'
          Title.Caption = 'Vlr %'
          Width = 60
          Visible = True
        end>
    end
    object edicodprod: TEdit
      Left = 139
      Top = 560
      Width = 78
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'edicodprod'
      Visible = False
      OnChange = edidescChange
    end
    object cbxclassificar: TComboBox
      Left = 4
      Top = 69
      Width = 165
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 17
      ParentFont = False
      TabOrder = 0
      Text = 'cbxclassificar'
      OnClick = cbxclassificarClick
      OnKeyDown = cbxclassificarKeyDown
      OnKeyPress = cbxclassificarKeyPress
    end
    object edidesc: TEdit
      Left = 172
      Top = 69
      Width = 285
      Height = 25
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'EDIDESC'
      OnChange = edidescChange
      OnKeyPress = edidescKeyPress
    end
  end
  object imgfichadetalhe: TImageList
    Left = 839
    Top = 538
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F00
      1F001F000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F0000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000007C007C007C007C007C007C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F000000000000000000000000000000000000000000000000001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F001F0000000000000000000000000000000000000000001F001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3DE07FEF3D0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000000000
      0000000000000000E07FE07FE07F0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C0000000000001F001F001F001F001F001F00
      1F001F001F001F000000007C007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000000000
      0000000000000000EF3DE07FEF3D000000000000000000000000000000000000
      1F001F0000000000000000000000000000000000000000001F001F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000007C007C007C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1F000000000000000000000000000000000000000000000000001F0000000000
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
      000000000000000000000000FFFFFF00F01FFFFFFFFF0000F83FE7F8FFF80000
      EC6FE7F8FFF80000FEFF81FF81FF0000BFFB81FC81FC0000FFFFE7FCFFFC0000
      7FFDE7FFFFFF0000FFFFFFFCFFFC00007FFDFEFCF7FC0000FFE3FE7FE7FF0000
      07C180138013000007C180138013000007C1FE7FE7FF000007E3FEF8F7F80000
      07EFFFF8FFF80000FABFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end