object frmpesqClientes: TfrmpesqClientes
  Left = 34
  Top = 93
  Width = 968
  Height = 594
  Caption = 'Pesquisa de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 41
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 837
      Top = 5
      Width = 119
      Height = 33
      Caption = 'NOVA FICHA'
      TabOrder = 0
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 502
    Width = 960
    Height = 65
    Align = alBottom
    TabOrder = 1
    object stbrodape: TStatusBar
      Left = 1
      Top = 45
      Width = 958
      Height = 19
      Panels = <
        item
          Width = 550
        end
        item
          Width = 50
        end>
    end
    object pnlinternodir: TPanel
      Left = 604
      Top = 1
      Width = 355
      Height = 44
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnanterior: TBitBtn
        Left = 58
        Top = 7
        Width = 144
        Height = 33
        Caption = '&ANTERIOR'
        TabOrder = 0
        OnClick = btnanteriorClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object btnproximo: TBitBtn
        Left = 210
        Top = 7
        Width = 144
        Height = 33
        Caption = '&PR'#211'XIMO'
        TabOrder = 1
        OnClick = btnproximoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
    end
  end
  object pnlesquerda: TPanel
    Left = 0
    Top = 41
    Width = 161
    Height = 461
    Align = alLeft
    TabOrder = 2
    object btnfiltrar: TBitBtn
      Left = 7
      Top = 6
      Width = 145
      Height = 33
      Caption = 'FI&LTRAR'
      TabOrder = 0
      OnClick = btnfiltrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
        000557777777777777750BBBBBBBBBBBBBB07F5555FFFFFFF5570BBBB0000000
        BBB07F5557777777FF570BBB077BBB770BB07F557755555775570BBBBBBBBBBB
        BBB07F5555FFFFFFF5570BBBB0000000BBB07F5557777777F5570BBBB0FFFFF0
        BBB07F5557FFFFF7F5570BBBB0000000BBB07F555777777755570BBBBBBBBBBB
        BBB07FFFFFFFFFFFFFF700000000000000007777777777777777500FFFFFFFFF
        F005577FF555FFFFF7755500FFF00000005555775FF7777777F5550F777FFFFF
        F055557F777FFF5557F5550000000FFF00555577777775FF77F5550777777000
        7055557FFFFFF777F7F555000000000000555577777777777755}
      NumGlyphs = 2
    end
    object btnlimpar: TBitBtn
      Left = 7
      Top = 42
      Width = 144
      Height = 33
      Caption = '&LIMPAR'
      TabOrder = 1
      OnClick = btnlimparClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object btnimprimir: TBitBtn
      Left = 7
      Top = 78
      Width = 144
      Height = 33
      Caption = '&IMPRIMIR'
      TabOrder = 2
      OnClick = btnimprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Memo1: TMemo
      Left = 8
      Top = 120
      Width = 140
      Height = 337
      Cursor = crArrow
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Instru'#231#227'o Inicial'
        ''
        '1) Para Editar, '
        'Inserir '
        'ou Excluir um '
        'CLIENTE '
        'clique na guia '
        '* EDI'#199#195'O * '
        ''
        '2) Para ordenar por'
        'diferente tipo de '
        'informa'#231#227'o Clique '
        'no bot'#227'o'
        '* FILTRAR * '
        ''
        '3) Quando emitir '
        'nota '
        'para CPF voc'#234' '
        'deve '
        'dexar IE sem'
        'preencher'
        ''
        '4) Para emitir nota '
        'onde'
        'o IE '#233' isento voc'#234' '
        'deve'
        'deixar IE sem '
        'preencher ou '
        'digitar ISENTO'
        ''
        '5) Campo Telefone '
        'S'#243' dever'
        'ser preenchido '
        'com '
        'um '#250'nico'
        'telefone'
        ''
        '6) QUando voc'#234' '
        'importar o cliente'
        'de outro sistema, '
        'por '
        'exemplo: '
        'Construtor,'
        'Systcom, entre '
        'outros, '
        'os campos estado '
        'e'
        'munic'#237'pio deve ser '
        'preenchido '
        'manualmente'
        'aqui neste '
        'cadastro, '
        'assim como o '
        'campo '
        'n'#250'mero deve ser '
        'preenchido em seu '
        'respectivo'
        'lugar.  ')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
      OnEnter = Memo1Enter
    end
  end
  object pnlcentro: TPanel
    Left = 161
    Top = 41
    Width = 799
    Height = 461
    Align = alClient
    Caption = 'pnlcentro'
    TabOrder = 3
    object pctdados: TPageControl
      Left = 1
      Top = 49
      Width = 797
      Height = 411
      ActivePage = tbslista
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = imgprincipal
      ParentFont = False
      Style = tsButtons
      TabOrder = 0
      object tbslista: TTabSheet
        Caption = 'LI&STAR'
        OnShow = tbslistaShow
        object dbg_clientes: TDBGrid
          Left = 0
          Top = 0
          Width = 789
          Height = 379
          Align = alClient
          DataSource = frmdados.dts_clientes
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = dbg_clientesKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'NOME'
              Width = 280
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fantasia'
              Title.Caption = 'FANTASIA'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'contato'
              Title.Caption = 'CONTATO'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#211'DIGO'
              Width = 68
              Visible = True
            end>
        end
      end
      object tbsficha: TTabSheet
        Caption = '&EDI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        OnShow = tbsfichaShow
        object Label1: TLabel
          Left = 2
          Top = 30
          Width = 49
          Height = 13
          Caption = 'C'#211'DIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 322
          Top = 57
          Width = 37
          Height = 13
          Caption = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblcodigo: TLabel
          Left = 106
          Top = 31
          Width = 52
          Height = 13
          Caption = 'lblcodigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 2
          Top = 87
          Width = 61
          Height = 13
          Caption = 'FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblcep: TLabel
          Left = 2
          Top = 163
          Width = 25
          Height = 13
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 289
          Top = 163
          Width = 51
          Height = 13
          Caption = 'ESTADO'
          FocusControl = cbxnest
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 178
          Top = 33
          Width = 61
          Height = 13
          Caption = 'CPF/CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 490
          Top = 33
          Width = 13
          Height = 13
          Caption = 'IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 460
          Top = 87
          Width = 73
          Height = 13
          Caption = 'TELEFONES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 4
          Top = 114
          Width = 38
          Height = 13
          Caption = 'EMAIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 316
          Top = 114
          Width = 29
          Height = 13
          Caption = 'SITE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 556
          Top = 114
          Width = 60
          Height = 13
          Caption = 'CONTATO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 2
          Top = 191
          Width = 69
          Height = 13
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 433
          Top = 191
          Width = 55
          Height = 13
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 578
          Top = 191
          Width = 47
          Height = 13
          Caption = 'COMPL.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 2
          Top = 217
          Width = 48
          Height = 13
          Caption = 'BAIRRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 432
          Top = 163
          Width = 66
          Height = 13
          Caption = 'MUNIC'#205'PIO'
          FocusControl = cbxnmun
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 2
          Top = 57
          Width = 105
          Height = 13
          Caption = 'INSC. MUNICIPAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 330
          Top = 217
          Width = 112
          Height = 13
          Caption = 'TRANSPORTADOR'
          FocusControl = cbxdesctransp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 2
          Top = 241
          Width = 30
          Height = 13
          Caption = 'OBS.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnconsultacep: TSpeedButton
          Left = 208
          Top = 159
          Width = 22
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3303333333333333300033333333333300033333333333300033333333333300
            0333333700073B7033333307777700B333333078F8F870333333778F8F8F8773
            333307F8F8F8F7033333078F8F8F8703333307F8F8F8F7033333778F8F8F8773
            33333078F8F87033333333077777033333333337000733333333}
          OnClick = btnconsultacepClick
        end
        object Label19: TLabel
          Left = 2
          Top = 310
          Width = 586
          Height = 13
          Caption = 
            'TODOS OS CAMPOS QUE DESTACAM-SE EM VERMELHO S'#195'O DE PREENCHIMENTO' +
            ' OBRIGAT'#211'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnsalvar: TBitBtn
          Left = 1
          Top = 338
          Width = 119
          Height = 33
          Caption = 'SALVA&R'
          TabOrder = 18
          OnClick = btnsalvarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
        end
        object edinome: TEdit
          Left = 376
          Top = 56
          Width = 393
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'EDINOME'
          OnKeyPress = edinomeKeyPress
        end
        object EDIFANTASIA: TEdit
          Left = 120
          Top = 83
          Width = 329
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          Text = 'EDIFANTASIA'
          OnKeyPress = edinomeKeyPress
        end
        object btnexcluir: TBitBtn
          Left = 284
          Top = 338
          Width = 119
          Height = 33
          Caption = '&EXCLUIR'
          TabOrder = 19
          OnClick = btnexcluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
        end
        object cbxnest: TDBLookupComboBox
          Left = 344
          Top = 159
          Width = 73
          Height = 21
          DataField = 'cod1cc'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'sigla'
          ListSource = frmdados.dts_Estados
          TabOrder = 10
          OnKeyPress = edinomeKeyPress
        end
        object edicnpj: TEdit
          Left = 251
          Top = 29
          Width = 206
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDICNPJ'
          OnKeyPress = edinomeKeyPress
        end
        object ediie: TEdit
          Left = 512
          Top = 29
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDIIE'
          OnKeyPress = edinomeKeyPress
        end
        object editelefones: TEdit
          Left = 544
          Top = 83
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 18
          TabOrder = 5
          Text = 'EDITELEFONES'
          OnKeyPress = edinomeKeyPress
        end
        object ediemail: TEdit
          Left = 120
          Top = 110
          Width = 193
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 6
          Text = 'ediemail'
          OnKeyPress = edinomeKeyPress
        end
        object edisite: TEdit
          Left = 354
          Top = 110
          Width = 191
          Height = 21
          CharCase = ecLowerCase
          TabOrder = 7
          Text = 'edisite'
          OnKeyPress = edinomeKeyPress
        end
        object edicontato: TEdit
          Left = 624
          Top = 110
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'EDICONTATO'
          OnKeyPress = edinomeKeyPress
        end
        object ediendereco: TEdit
          Left = 120
          Top = 187
          Width = 297
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 12
          Text = 'EDIENDERECO'
          OnKeyPress = edinomeKeyPress
        end
        object edinro: TEdit
          Left = 504
          Top = 187
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 13
          Text = 'EDINRO'
          OnKeyPress = edinomeKeyPress
        end
        object edicompl: TEdit
          Left = 627
          Top = 187
          Width = 142
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 14
          Text = 'EDICOMPL'
          OnKeyPress = edinomeKeyPress
        end
        object edibairro: TEdit
          Left = 120
          Top = 213
          Width = 201
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 15
          Text = 'EDIBAIRRO'
          OnKeyPress = edinomeKeyPress
        end
        object cbxnmun: TDBLookupComboBox
          Left = 504
          Top = 159
          Width = 265
          Height = 21
          DataField = 'cod2cc'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'nome'
          ListSource = frmdados.dts_Munic
          TabOrder = 11
          OnKeyPress = edinomeKeyPress
        end
        object ediim: TEdit
          Left = 120
          Top = 56
          Width = 192
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'EDIIM'
          OnKeyPress = edinomeKeyPress
        end
        object cbxdesctransp: TDBLookupComboBox
          Left = 456
          Top = 213
          Width = 313
          Height = 21
          DataField = 'cod3cc'
          DataSource = frmdados.dts_Temp
          KeyField = 'codigo'
          ListField = 'nome'
          ListSource = frmdados.dts_transportador
          TabOrder = 16
          OnKeyPress = edinomeKeyPress
        end
        object MMOObs: TMemo
          Left = 120
          Top = 240
          Width = 651
          Height = 57
          Lines.Strings = (
            'MMOObs')
          TabOrder = 17
        end
        object edicep: TMaskEdit
          Left = 120
          Top = 159
          Width = 84
          Height = 21
          EditMask = '00000\-999;1;_'
          MaxLength = 9
          TabOrder = 9
          Text = '     -   '
          OnExit = edicepExit
          OnKeyPress = edinomeKeyPress
        end
        object btnnova: TBitBtn
          Left = 142
          Top = 338
          Width = 119
          Height = 33
          Caption = '&NOVA'
          TabOrder = 20
          OnClick = btnnovaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
            3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
            B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
            33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
            000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
            033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
            BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
            33B33733333773333373B333333B3333333B7333333733333337}
          NumGlyphs = 2
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 797
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lbllocalizar: TLabel
        Left = 8
        Top = 18
        Width = 59
        Height = 13
        Caption = 'L&OCALIZAR'
      end
      object edilocalizar: TEdit
        Left = 109
        Top = 14
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = 'EDILOCALIZAR'
        OnChange = edilocalizarChange
        OnKeyPress = edilocalizarKeyPress
      end
    end
  end
  object imgprincipal: TImageList
    Left = 566
    Top = 101
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BFBFBF00BFBFBF0000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BFBFBF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008007FC00000000000003FC0000000000
      0001200000000000801000000000000000000000000000000000000000000000
      8000000000000000800000000000000000000000000000000000000000000000
      0000E000000000000000F80000000000C001F00000000000C001E00100000000
      C007C40300000000E3FFEC070000000000000000000000000000000000000000
      000000000000}
  end
  object XMLDocument1: TXMLDocument
    Left = 905
    Top = 97
    DOMVendorDesc = 'MSXML'
  end
end
