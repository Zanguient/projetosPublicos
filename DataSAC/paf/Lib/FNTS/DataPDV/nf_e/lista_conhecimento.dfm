object frmlista_conhecimento: Tfrmlista_conhecimento
  Left = 192
  Top = 410
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'CONHECIMENTO DE TRANSPORTE | Relat'#243'rios'
  ClientHeight = 149
  ClientWidth = 417
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 16
    Top = 40
    Width = 385
    Height = 2
  end
  object Label2: TLabel
    Left = 16
    Top = 53
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 193
    Top = 50
    Width = 9
    Height = 13
    Caption = 'a '
  end
  object Label4: TLabel
    Left = 16
    Top = 86
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Situa'#231#227'o:'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 114
    Width = 417
    Height = 3
    Align = alBottom
  end
  object combo_relatorio: TComboBox
    Left = 93
    Top = 11
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'RELA'#199#195'O')
  end
  object DateEdit1: TDateEdit
    Left = 93
    Top = 48
    Width = 97
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
    TabOrder = 1
    OnKeyPress = combo_relatorioKeyPress
  end
  object DateEdit2: TDateEdit
    Left = 205
    Top = 48
    Width = 97
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
    TabOrder = 2
    OnKeyPress = combo_relatorioKeyPress
  end
  object combo_situacao: TComboBox
    Left = 93
    Top = 81
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'TODOS'
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'TODOS'
      'ATIVOS'
      'CANCELADOS')
  end
  object Panel1: TPanel
    Left = 0
    Top = 117
    Width = 417
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object bimprimir: TAdvGlowButton
      Left = 47
      Top = 3
      Width = 98
      Height = 24
      Caption = 'Imprimir'
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
      OfficeHint.Picture.Data = {
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
      TabOrder = 0
      OnClick = bimprimirClick
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
    object bitbtn1: TAdvGlowButton
      Left = 154
      Top = 3
      Width = 102
      Height = 24
      Caption = 'Editar'
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
    object bcancelar: TAdvGlowButton
      Left = 266
      Top = 3
      Width = 102
      Height = 24
      Caption = 'ESC | Fechar'
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
        650041646F626520496D616765526561647971C9653C000002E74944415478DA
        62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
        FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
        5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
        6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
        2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
        721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
        1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
        0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
        4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
        3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
        3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
        9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
        7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
        DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
        865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
        9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
        68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
        73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
        8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
        2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
        0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
        01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
        9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
        008C5756165E6F8C750000000049454E44AE426082}
      TabOrder = 2
      OnClick = bcancelarClick
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
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 224
    Top = 18
  end
  object fxnota: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 39686.545316296290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure MasterData2OnAfterCalcHeight(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure Memo21OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 192
    Top = 18
    Datasets = <
      item
        DataSet = fsnota
        DataSetName = 'fsnota'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 38.795300000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 34.692950000000010000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 19.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 117.440940000000000000
          Top = 19.897650000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REMETENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 552.512060000000000000
          Top = 19.897650000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CFOP')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 639.252320000000000000
          Top = 19.897650000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DO FRETE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 0.779529999999994100
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina: [Page]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 60.252010000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DATA')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 366.614410000000000000
          Top = 18.897650000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DESTINAT'#195#129'RIO')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 328.819110000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Top = 10.779530000000020000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ELPRO SOFTWARES')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 10.779530000000020000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'www.elpro.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 10.779530000000020000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'suporte@elpro.com.br')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Com'#195#169'rcio Plus! 7')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Emiss'#195#163'o: [Date]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 306.141930000000000000
          Top = 41.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 34.015770000000010000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 20.559060000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        OnAfterCalcHeight = 'MasterData2OnAfterCalcHeight'
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = fsnota
        DataSetName = 'fsnota'
        RowCount = 0
        OnMasterDetail = 'MasterData2OnMasterDetail'
        object Line8: TfrxLineView
          Top = 18.897650000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 366.330860000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'destinatario'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."destinatario"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 54.440940000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."DATA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 645.362617000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo14OnAfterData'
          OnAfterPrint = 'Memo14OnAfterPrint'
          OnBeforePrint = 'Memo14OnBeforePrint'
          ShowHint = False
          DataField = 'FRETE_TOTAL'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota."FRETE_TOTAL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 118.692950000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'remetente'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."remetente"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."NUMERO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 551.252320000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CFOP'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."CFOP"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 146.252010000000000000
          Top = 3.314958190000027000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '######'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData2)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 3.314958190000027000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'QUANTIDADE DE NOTAS:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 620.425480000000000000
          Top = 1.535428190000004000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsnota."FRETE_TOTAL">,MasterData2)]'
            ' ')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 471.882190000000000000
          Top = 3.314958190000027000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL:')
          ParentFont = False
        end
      end
    end
  end
  object fsnota: TfrxDBDataset
    UserName = 'fsnota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NUMERO=NUMERO'
      'DATA=DATA'
      'remetente=remetente'
      'destinatario=destinatario'
      'CFOP=CFOP'
      'CODREMETENTE=CODREMETENTE'
      'CODDESTINATARIO=CODDESTINATARIO'
      'SITUACAO=SITUACAO'
      'TIPO=TIPO'
      'CONSIG_NOME=CONSIG_NOME'
      'CONSIG_ENDERECO=CONSIG_ENDERECO'
      'CONSIG_CIDADE=CONSIG_CIDADE'
      'CONSIG_UF=CONSIG_UF'
      'CONSIG_TIPO=CONSIG_TIPO'
      'CONSIG_CALCULADO=CONSIG_CALCULADO'
      'REDE_NOME=REDE_NOME'
      'REDE_ENDERECO=REDE_ENDERECO'
      'REDE_CIDADE=REDE_CIDADE'
      'REDE_UF=REDE_UF'
      'REDE_TIPO=REDE_TIPO'
      'REDE_CNPJ=REDE_CNPJ'
      'CARGA_NATUREZA=CARGA_NATUREZA'
      'CARGA_NF=CARGA_NF'
      'CARGA_VALOR=CARGA_VALOR'
      'CARGA_QTDE=CARGA_QTDE'
      'CARGA_VOL_QTDE=CARGA_VOL_QTDE'
      'CARGA_VOL_ESPECIE=CARGA_VOL_ESPECIE'
      'CARGA_MARCA1=CARGA_MARCA1'
      'CARGA_MARCA2=CARGA_MARCA2'
      'FRETE_PESO=FRETE_PESO'
      'FRETE_VALOR=FRETE_VALOR'
      'FRETE_ADICIONAL=FRETE_ADICIONAL'
      'FRETE_SEGURO=FRETE_SEGURO'
      'FRETE_DESPACHO=FRETE_DESPACHO'
      'FRETE_OUTROS=FRETE_OUTROS'
      'FRETE_TOTAL=FRETE_TOTAL'
      'FRETE_TARIFA=FRETE_TARIFA'
      'FRETE_BASE=FRETE_BASE'
      'FRETE_ALIQUOTA=FRETE_ALIQUOTA'
      'FRETE_ICMS=FRETE_ICMS'
      'FRETE_PRONT=FRETE_PRONT'
      'FRETE_APOLICE=FRETE_APOLICE'
      'FRETE_CIA=FRETE_CIA'
      'FRETE_CARREGAR=FRETE_CARREGAR'
      'FRETE_DESCARREGAR=FRETE_DESCARREGAR'
      'CODVEICULO=CODVEICULO'
      'CODTRANSPORTADOR=CODTRANSPORTADOR'
      'OBS=OBS'
      'CODFILIAL=CODFILIAL'
      'LOCAL=LOCAL'
      'MOTIVO=MOTIVO'
      'VEICULO_LOCAL=VEICULO_LOCAL'
      'VEICULO_UF=VEICULO_UF'
      'MODELO=MODELO'
      'ESPECIE=ESPECIE'
      'SERIE=SERIE'
      'MODELO_NF=MODELO_NF'
      'ESPECIE_NF=ESPECIE_NF'
      'SERIE_NF=SERIE_NF'
      'DATA_NF=DATA_NF'
      'VALOR_CONHECIMENTO=VALOR_CONHECIMENTO'
      'INF1=INF1'
      'INF2=INF2'
      'INF3=INF3'
      'INF4=INF4'
      'INF5=INF5')
    DataSet = qrnota
    BCDToCurrency = False
    Left = 160
    Top = 18
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 8
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000068')
    Params = <>
    Left = 128
    Top = 18
    object qrnotaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnotaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnotaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnotaremetente: TStringField
      DisplayLabel = 'REMETENTE'
      DisplayWidth = 32
      FieldKind = fkLookup
      FieldName = 'remetente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codremetente'
      Size = 60
      Lookup = True
    end
    object qrnotadestinatario: TStringField
      DisplayLabel = 'DESTINAT'#193'RIO'
      DisplayWidth = 37
      FieldKind = fkLookup
      FieldName = 'destinatario'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'CODDESTINATARIO'
      Size = 60
      Lookup = True
    end
    object qrnotaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrnotaCODREMETENTE: TStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrnotaCODDESTINATARIO: TStringField
      FieldName = 'CODDESTINATARIO'
      Size = 6
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object qrnotaCONSIG_NOME: TStringField
      FieldName = 'CONSIG_NOME'
      Size = 60
    end
    object qrnotaCONSIG_ENDERECO: TStringField
      FieldName = 'CONSIG_ENDERECO'
      Size = 60
    end
    object qrnotaCONSIG_CIDADE: TStringField
      FieldName = 'CONSIG_CIDADE'
      Size = 30
    end
    object qrnotaCONSIG_UF: TStringField
      FieldName = 'CONSIG_UF'
      Size = 2
    end
    object qrnotaCONSIG_TIPO: TStringField
      FieldName = 'CONSIG_TIPO'
      Size = 10
    end
    object qrnotaCONSIG_CALCULADO: TStringField
      FieldName = 'CONSIG_CALCULADO'
      Size = 30
    end
    object qrnotaREDE_NOME: TStringField
      FieldName = 'REDE_NOME'
      Size = 60
    end
    object qrnotaREDE_ENDERECO: TStringField
      FieldName = 'REDE_ENDERECO'
      Size = 60
    end
    object qrnotaREDE_CIDADE: TStringField
      FieldName = 'REDE_CIDADE'
      Size = 30
    end
    object qrnotaREDE_UF: TStringField
      FieldName = 'REDE_UF'
      Size = 2
    end
    object qrnotaREDE_TIPO: TStringField
      FieldName = 'REDE_TIPO'
      Size = 10
    end
    object qrnotaREDE_CNPJ: TStringField
      FieldName = 'REDE_CNPJ'
      Size = 25
    end
    object qrnotaCARGA_NATUREZA: TStringField
      FieldName = 'CARGA_NATUREZA'
      Size = 30
    end
    object qrnotaCARGA_NF: TStringField
      FieldName = 'CARGA_NF'
      Size = 6
    end
    object qrnotaCARGA_VALOR: TFloatField
      FieldName = 'CARGA_VALOR'
    end
    object qrnotaCARGA_QTDE: TFloatField
      FieldName = 'CARGA_QTDE'
    end
    object qrnotaCARGA_VOL_QTDE: TFloatField
      FieldName = 'CARGA_VOL_QTDE'
    end
    object qrnotaCARGA_VOL_ESPECIE: TStringField
      FieldName = 'CARGA_VOL_ESPECIE'
      Size = 25
    end
    object qrnotaCARGA_MARCA1: TStringField
      FieldName = 'CARGA_MARCA1'
      Size = 30
    end
    object qrnotaCARGA_MARCA2: TStringField
      FieldName = 'CARGA_MARCA2'
      Size = 30
    end
    object qrnotaFRETE_PESO: TFloatField
      FieldName = 'FRETE_PESO'
    end
    object qrnotaFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
    end
    object qrnotaFRETE_ADICIONAL: TFloatField
      FieldName = 'FRETE_ADICIONAL'
    end
    object qrnotaFRETE_SEGURO: TFloatField
      FieldName = 'FRETE_SEGURO'
    end
    object qrnotaFRETE_DESPACHO: TFloatField
      FieldName = 'FRETE_DESPACHO'
    end
    object qrnotaFRETE_OUTROS: TFloatField
      FieldName = 'FRETE_OUTROS'
    end
    object qrnotaFRETE_TOTAL: TFloatField
      FieldName = 'FRETE_TOTAL'
    end
    object qrnotaFRETE_TARIFA: TFloatField
      FieldName = 'FRETE_TARIFA'
    end
    object qrnotaFRETE_BASE: TFloatField
      FieldName = 'FRETE_BASE'
    end
    object qrnotaFRETE_ALIQUOTA: TIntegerField
      FieldName = 'FRETE_ALIQUOTA'
    end
    object qrnotaFRETE_ICMS: TFloatField
      FieldName = 'FRETE_ICMS'
    end
    object qrnotaFRETE_PRONT: TStringField
      FieldName = 'FRETE_PRONT'
      Size = 30
    end
    object qrnotaFRETE_APOLICE: TStringField
      FieldName = 'FRETE_APOLICE'
      Size = 30
    end
    object qrnotaFRETE_CIA: TStringField
      FieldName = 'FRETE_CIA'
      Size = 40
    end
    object qrnotaFRETE_CARREGAR: TStringField
      FieldName = 'FRETE_CARREGAR'
      Size = 60
    end
    object qrnotaFRETE_DESCARREGAR: TStringField
      FieldName = 'FRETE_DESCARREGAR'
      Size = 60
    end
    object qrnotaCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Size = 6
    end
    object qrnotaCODTRANSPORTADOR: TStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object qrnotaOBS: TBlobField
      FieldName = 'OBS'
    end
    object qrnotaCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrnotaLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 40
    end
    object qrnotaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
    object qrnotaVEICULO_LOCAL: TStringField
      FieldName = 'VEICULO_LOCAL'
      Size = 30
    end
    object qrnotaVEICULO_UF: TStringField
      FieldName = 'VEICULO_UF'
      Size = 2
    end
    object qrnotaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrnotaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrnotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrnotaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 10
    end
    object qrnotaESPECIE_NF: TStringField
      FieldName = 'ESPECIE_NF'
      Size = 10
    end
    object qrnotaSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 10
    end
    object qrnotaDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
    end
    object qrnotaVALOR_CONHECIMENTO: TFloatField
      FieldName = 'VALOR_CONHECIMENTO'
    end
    object qrnotaINF1: TStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrnotaINF2: TStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrnotaINF3: TStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrnotaINF4: TStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrnotaINF5: TStringField
      FieldName = 'INF5'
      Size = 80
    end
  end
  object qrnota_item: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODNOTA'
    SQL.Strings = (
      'select * from c000062')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dsnota
    IndexFieldNames = 'CODNOTA Asc'
    Left = 256
    Top = 18
    object qrnota_itemCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Required = True
      Size = 6
    end
    object qrnota_itemCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrnota_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrnota_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrnota_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrnota_itemIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrnota_itemICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrnota_itemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrnota_itemCODGRADE: TStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrnota_itemSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrnota_itemVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrnota_itemCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrnota_itemCST: TStringField
      FieldName = 'CST'
      Size = 4
    end
    object qrnota_itemVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnota_itemICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrnota_itemBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrnota_itemMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrnota_itemBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnota_itemICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrnota_itemISENTO: TFloatField
      FieldName = 'ISENTO'
    end
    object qrnota_itemCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object qrnota_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnota_itemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrnota_itemproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = ZQuery1
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'codproduto'
      Size = 40
      Lookup = True
    end
  end
  object fsnota_item: TfrxDBDataset
    UserName = 'fsnota_item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'IPI=IPI'
      'ICMS=ICMS'
      'CFOP=CFOP'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'VALOR_IPI=VALOR_IPI'
      'CLASSIFICACAO_FISCAL=CLASSIFICACAO_FISCAL'
      'CST=CST'
      'VALOR_ICMS=VALOR_ICMS'
      'ICMS_REDUZIDO=ICMS_REDUZIDO'
      'BASE_CALCULO=BASE_CALCULO'
      'MARGEM_AGREGADA=MARGEM_AGREGADA'
      'BASE_SUB=BASE_SUB'
      'ICMS_SUB=ICMS_SUB'
      'ISENTO=ISENTO'
      'CODLANCAMENTO=CODLANCAMENTO'
      'DESCONTO=DESCONTO'
      'SUBTOTAL=SUBTOTAL'
      'produto=produto')
    DataSet = qrnota_item
    BCDToCurrency = False
    Left = 312
    Top = 66
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 56
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 304
    Top = 18
  end
end