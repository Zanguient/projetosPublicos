object frmCaixaDet: TfrmCaixaDet
  Left = 117
  Top = 18
  Width = 901
  Height = 717
  BorderIcons = []
  Caption = 'Caixa Detalhado'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 42
    Align = alTop
    TabOrder = 0
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
    object spdprinter: TSpeedButton
      Left = 5
      Top = 4
      Width = 38
      Height = 33
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF5050505050505050501F201F1F201F1F201F1F201F1F201F1F201F4040
        404040404040404040404040404040404040404040404040401F201F1F201F1F
        201F1F201F1F201F1F201F505050505050505050FFFFFFFFFFFFFFFFFFFFFFFF
        505050DFD8DFDFD8DFDFD8DF4040404040404040404040404040404040404040
        40CFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CF40404040404040404040
        4040404040404040404040DFD8DFDFD8DFDFD8DF505050FFFFFFFFFFFFFFFFFF
        505050DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFA09F
        9F707770707770707770707770707770707770707770A09F9FDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFFFFFFFFFFFFFF
        505050BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF505050FFFFFFFFFFFFFFFFFF
        505050A09F9FA09F9FA09F9FA09F9F0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000A09F9FA09F9FA09F9FA09F9F505050FFFFFFFFFFFF505050
        7077707077707077707077707077704040404040404040404040404040404040
        4040404040404040404040404040404040404040404040404040404040404040
        4040404040404040707770707770707770707770707770505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DF707770BFBFBF707770BFBFBF707770DFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        7077707077707077707077707077707077707077707077707077707077707077
        7070777070777070777070777070777070777070777070777070777070777070
        7770707770707770707770707770707770707770707770505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DF2F67FFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFA09F
        9FDFD8DFDFD8DFDFD8DF00B800DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFA09F9F505050505050505050A09F9FDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFFFFFFFF
        5050505050505050505050505050505050505050505050505050505050505050
        50505050505050DFD8DF505050DFD8DF50505050505050505050505050505050
        5050505050505050505050505050505050505050505050FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040505050BFBFBF404040DFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DF404040909790404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040707770BFBFBF404040EFF8FFEFF8FFEFF8FFEFF8
        FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEF
        F8FFEFF8FF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040707770BFBFBF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040707770BFBFBF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040404040404040404040404040
        4040404040404040404040404040404040404040404040404040404040404040
        4040404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 642
    Width = 893
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 600
    Align = alLeft
    TabOrder = 2
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
    object lbltitdatai: TLabel
      Left = 8
      Top = 58
      Width = 61
      Height = 17
      Caption = 'Venda de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 110
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
    object spdlimpar: TSpeedButton
      Left = 164
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
      Left = 164
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
    object Label18: TLabel
      Left = 9
      Top = 162
      Width = 45
      Height = 17
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label19: TLabel
      Left = 9
      Top = 215
      Width = 62
      Height = 17
      Caption = 'Vendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label20: TLabel
      Left = 9
      Top = 267
      Width = 96
      Height = 17
      Caption = 'Representante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DtpDataI: TDateTimePicker
      Left = 8
      Top = 81
      Width = 153
      Height = 25
      Date = 39647.643559745370000000
      Time = 39647.643559745370000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DtpDataF: TDateTimePicker
      Left = 8
      Top = 131
      Width = 153
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
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 376
      Width = 113
      Height = 120
      DataSource = frmDados.Dts_sVenda
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
    object cbxnomecli: TDBLookupComboBox
      Left = 8
      Top = 184
      Width = 188
      Height = 25
      DataField = 'CODCLI'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dts_Clientes
      NullValueKey = 46
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object cbxnomefun: TDBLookupComboBox
      Left = 8
      Top = 237
      Width = 189
      Height = 25
      DataField = 'COD'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dst_Funcionarios
      NullValueKey = 46
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object cbxnomerep: TDBLookupComboBox
      Left = 8
      Top = 289
      Width = 189
      Height = 25
      DataField = 'COD1'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dst_Representantes
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 692
    Height = 600
    Align = alClient
    TabOrder = 3
    object pnlficha: TPanel
      Left = 1
      Top = 1
      Width = 690
      Height = 598
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object pnlvenda: TPanel
        Left = 1
        Top = 1
        Width = 688
        Height = 240
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object dbgvenda: TDBGrid
          Left = 0
          Top = 0
          Width = 688
          Height = 160
          Align = alTop
          DataSource = frmDados.Dts_sVenda
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = dbgvendaEnter
          OnKeyPress = dbgvendaKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'DATACAD'
              Title.Caption = 'Data Cadastro'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ncli'
              Title.Caption = 'Cliente'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CCLI'
              Title.Caption = 'C'#243'digo'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NPED'
              Title.Caption = 'N.o Pedido'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'totg'
              Title.Caption = 'Total'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDESC_P'
              Title.Caption = '% Desc.'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALDESC_P'
              Title.Caption = 'Valor Desc.'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIQUIDO_P'
              Title.Caption = 'Liquido'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIN_P'
              Title.Caption = 'Dinheiro'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TROCO_P'
              Title.Caption = 'Troco'
              Width = 52
              Visible = True
            end>
        end
      end
    end
  end
  object SayPrint: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'imprime.txt'
    Left = 856
    Top = 115
  end
end
