object frmFinanceira: TfrmFinanceira
  Left = 185
  Top = 184
  Width = 786
  Height = 490
  Caption = 'FINANCEIRA | Movimento'
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
  object Bevel1: TBevel
    Left = 0
    Top = 35
    Width = 778
    Height = 0
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 33
    Width = 778
    Height = 2
    Align = alTop
  end
  object Bevel3: TBevel
    Left = 0
    Top = 429
    Width = 778
    Height = 2
    Align = alBottom
  end
  object Bevel4: TBevel
    Left = 0
    Top = 401
    Width = 778
    Height = 2
    Align = alBottom
  end
  object Bevel5: TBevel
    Left = 0
    Top = 383
    Width = 778
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 10
      Width = 53
      Height = 13
      Caption = 'Financeira:'
    end
    object Label2: TLabel
      Left = 246
      Top = 10
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 471
      Top = 10
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label4: TLabel
      Left = 574
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object ed_cod_financeira: TRzButtonEdit
      Left = 58
      Top = 7
      Width = 51
      Height = 21
      FocusColor = 12713983
      TabOrder = 0
      OnKeyPress = ed_cod_financeiraKeyPress
      OnButtonClick = ed_cod_financeiraButtonClick
    end
    object ed_financeira: TRzEdit
      Left = 111
      Top = 7
      Width = 128
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object combo_periodo: TComboBox
      Left = 290
      Top = 7
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Pagamento'
      OnKeyPress = combo_periodoKeyPress
      Items.Strings = (
        'Pagamento'
        'Venda')
    end
    object DateEdit1: TDateEdit
      Left = 378
      Top = 7
      Width = 87
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
      Text = '01/01/0000'
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 482
      Top = 6
      Width = 87
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
      OnEnter = DateEdit2Enter
      OnExit = DateEdit2Exit
      OnKeyPress = DateEdit2KeyPress
    end
    object blocalizar: TAdvGlowButton
      Left = 704
      Top = 5
      Width = 65
      Height = 22
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
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002514944415478DA
        62FCFFFF3F032500208058608C43F7FF32FDFBF76FEA9FBFFF7DFEFEFD2BF5E7
        EF3F86DF7FFE3EFBF3E7EF96DFBFFF66475A8AFCC36600400031825C7010A4F9
        EFBF7DFCECFFED05B91819589880AE02A21F7FFE333C7EF383E1D1EBEF077FFF
        F9E394EA2C8361084000318188BF7FFF4DE563FF672FC6C3C8F0E3F75F86375F
        FE32BC04E26FBFFE312888723288F1B3DAFFFCF5672A3617000410D800A0337D
        843819193EFF0469FACFF0E7DF7FA0A1FF19BE02D9EFBEFF659016E664001AE0
        83CD008000021B00F4AB14339005D2FC17A419E850B02140FCF5E73F06365666
        865FBFFE486133002080C081F8EBF71F867FFF59C19AFE0135FFFD8FA0FF8369
        06869F4035D8004000815D0034FDD98FDFFF8081C708B599014EB3B230327CFB
        F19BE1CFAF5FAFB0190010404C50176C79F0F21B032F3B13031B3323D8E92017
        B003350B7032335CB9FB8641FCEB0581BDAD3EEAE806000410D800600065DF7F
        F1E5E0D5871F1880DE6510E36501863C0B031B303A4F5D7BC1F0E5ED0B0667A9
        971C3F7F7E3BB2A1C20AC51080006284A5C4099BEF3101E37A2A30D1F8FC0206
        EA1F60740203F7B9C8F7ABBF9CF82F2BCA689A313CBB799AE1D6995D6F7EFFFE
        611333E5FA4D903E8000622494947734B8B2FDFAF563B9889C4690BC9625C3E3
        1B2719AE9DD9F92669D60351903C400031114AEB1E0DBB7F019D1EF9E0DAF175
        37CEEC601093510606FA4F11983C400031129B99E6A72BB3FDF9F37339332B7B
        D0B72FEF3B7296BCAB04890304102329B9715A9C28F3DFBF7FC47397BE7F0613
        030820464AB333408001004AB837A11ECA28F10000000049454E44AE426082}
      TabOrder = 5
      OnClick = blocalizarClick
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
    object combo_situacao: TComboBox
      Left = 624
      Top = 7
      Width = 71
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Todas'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'Todas'
        'Aberto'
        'Baixada')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 431
    Width = 778
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 90
      Height = 25
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
      Left = 101
      Top = 3
      Width = 90
      Height = 25
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
      Left = 192
      Top = 3
      Width = 87
      Height = 25
      Caption = 'F4 | Excluir'
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
    object bitbtn5: TAdvGlowButton
      Left = 549
      Top = 3
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
      TabOrder = 3
      OnClick = bitbtn5Click
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
    object bfechar: TAdvGlowButton
      Left = 698
      Top = 3
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
      TabOrder = 4
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
    object bliquidar: TAdvGlowButton
      Left = 357
      Top = 3
      Width = 124
      Height = 24
      Caption = 'F5 | Baixar'
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
        650041646F626520496D616765526561647971C9653C0000033A4944415478DA
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
        818591854113A8F9EC9D730CEF5E3C65E0F8CEC0F0F91B30507F7F67F8C0F093
        E137279B10400031BB243829FEFCFDD300649A10B720C3E91B67194404851984
        F98419A405A519CEDC3EC7F0F9CD4B06114E26062B63330667530F861F2CAF18
        5EBEBDC9F0F2C13369800062626064A8FCF3EF0FC383970F189EBC79C260AB6D
        C3C0CAC4060EB033B7CE32BCFCF282E1E3B3670C061AFA0C7F99FE32E84BBA32
        FC65FCCD60A16BC5F0EFF7AF10800062AA766C78FEEBF7AF392A62AA0C779EDF
        6378F8F21150331FC3E99B67186E3EB9C520C62DCEF0E6E32B0656461E063FCD
        5C706C153BCF625016D30331390002081C0BBFFEFCEA79F8EEC15F50A0DD7A7A
        8BE1F4ADD30CD71EDDF8CFC4C8B4F3C6A31BD56F3FBEFA71F5D931868EDD8990
        54BA2B91E1EEAB4B20E60F8000821AF0FBDE8BF72F37AF3AB1F21F28CAAE3DBC
        FE879585C50C18D2596BD236B4011352EF894BC718D8185818365F9EC6C0060C
        DC23170E82B44E05082078424A5D9E68084C5DB3819AEA8189642B7A0AB5C891
        EA00525940CC0BC49F8178DA8929CF2A00020C00148B47725AC4E10000000000
        49454E44AE426082}
      TabOrder = 5
      OnClick = bliquidarClick
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
  object grid: TwwDBGrid
    Left = 0
    Top = 35
    Width = 778
    Height = 348
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODBANCO'#9'6'#9'C'#243'digo'#9'F'#9'Financeira'
      'BANCO'#9'28'#9'Nome'#9'F'#9'Financeira'
      'BORDERO'#9'7'#9'Border'#244#9'F'#9'Financeira'
      'PROPOSTA'#9'11'#9'Proposta'#9'F'#9'Financeira'
      'DATA'#9'10'#9'Data'#9'F'#9'Venda'
      'CODVENDA'#9'6'#9'N'#250'mero'#9'F'#9'Venda'
      'NOME'#9'29'#9'Cliente'#9'F'#9'Venda'
      'VALOR'#9'10'#9'VALOR'#9#9
      'DATA_PGTO'#9'9'#9'Pagamento'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsfinanceira
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 403
    Width = 778
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 5
      Width = 123
      Height = 13
      Caption = 'Quantidade de Registros:'
    end
    object Label6: TLabel
      Left = 616
      Top = 6
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object rqtde: TRzNumericEdit
      Left = 135
      Top = 2
      Width = 56
      Height = 21
      TabOrder = 0
      DisplayFormat = ',0;(,0)'
    end
    object rtotal: TRzNumericEdit
      Left = 647
      Top = 2
      Width = 122
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 385
    Width = 778
    Height = 16
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 4
    object Label7: TLabel
      Left = 8
      Top = 1
      Width = 62
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object DBText1: TDBText
      Left = 80
      Top = 1
      Width = 665
      Height = 16
      DataField = 'OBS'
      DataSource = dsfinanceira
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object qrfinanceira: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select c000123.*,'
      'c000007.nome,'
      'c000013.banco'
      'from'
      'c000123,'
      'c000007,'
      'c000013'
      'where'
      'c000123.codcliente = c000007.codigo and'
      'c000123.codbanco = c000013.numero'
      'order by'
      'data')
    Params = <>
    Left = 488
    Top = 104
    object qrfinanceiraCODBANCO: TStringField
      DisplayWidth = 10
      FieldName = 'CODBANCO'
      Size = 10
    end
    object qrfinanceiraBANCO: TStringField
      DisplayWidth = 50
      FieldName = 'BANCO'
      Size = 50
    end
    object qrfinanceiraDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
    end
    object qrfinanceiraCODCLIENTE: TStringField
      DisplayWidth = 10
      FieldName = 'CODCLIENTE'
      Size = 10
    end
    object qrfinanceiraVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrfinanceiraSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
    end
    object qrfinanceiraDATA_PGTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_PGTO'
    end
    object qrfinanceiraVALOR_PAGO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_PAGO'
    end
    object qrfinanceiraBORDERO: TStringField
      DisplayWidth = 10
      FieldName = 'BORDERO'
      Size = 10
    end
    object qrfinanceiraPROPOSTA: TStringField
      DisplayWidth = 20
      FieldName = 'PROPOSTA'
    end
    object qrfinanceiraOBS: TStringField
      DisplayWidth = 100
      FieldName = 'OBS'
      Size = 100
    end
    object qrfinanceiraCODVENDA: TStringField
      DisplayWidth = 10
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrfinanceiraNOME: TStringField
      DisplayWidth = 80
      FieldName = 'NOME'
      Size = 80
    end
    object qrfinanceiraCODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object dsfinanceira: TDataSource
    DataSet = qrfinanceira
    Left = 520
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 296
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 115
      OnClick = bexcluirClick
    end
    object Baixar1: TMenuItem
      Caption = 'Baixar'
      ShortCut = 116
      OnClick = bliquidarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = bitbtn5Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object query: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 552
    Top = 104
  end
  object fxfinanceira: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39758.671900127300000000
    ReportOptions.LastChange = 39758.751544768520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure frmListaOnShow(Sender: TfrxComponent);'
      'begin'
      '  conexao.Connected := true;'
      '  qrbanco.open;'
      '  combo_banco.Clear;'
      
        '  combo_banco.items.add('#39'Todas'#39');                               ' +
        '                                             '
      '  qrbanco.first;'
      '  while not qrbanco.eof do'
      '  begin'
      
        '     combo_banco.Items.add(qrbanco.fieldbyname('#39'banco'#39').asstring' +
        ');'
      '     qrbanco.next;                                   '
      '  end;'
      '  combo_banco.itemindex := 0;'
      ''
      '  eddata1.text := '#39'01/01/1900'#39';'
      
        '  eddata2.text := '#39'31/12/2100'#39';                                 ' +
        '                                     '
      'end;'
      ''
      ''
      ''
      'procedure ComboBox1OnChange(Sender: TfrxComponent);'
      'begin'
      '  qrcliente.close;'
      '  qrcliente.sql.clear;'
      '  qrcliente.sql.add('#39'select * from c000007'#39');'
      
        '  qrcliente.sql.add('#39'where nome like "'#39'+combo_cliente.text+'#39'%" O' +
        'RDER BY NOME'#39');'
      '  qrcliente.open;'
      '  qrcliente.first;'
      '  while not qrcliente.eof do'
      '  begin'
      
        '    combo_cliente.items.add(qrcliente.fieldbyname('#39'nome'#39').asstri' +
        'ng);'
      
        '    qrcliente.next;                                             ' +
        '         '
      '  end;'
      'end;'
      ''
      'procedure combo_clienteOnExit(Sender: TfrxComponent);'
      'begin'
      
        '   if combo_cliente.text = '#39#39' then combo_cliente.text := '#39'TODOS'#39 +
        ';'
      'end;'
      ''
      
        'procedure combo_clienteOnKeyPress(Sender: TfrxComponent; var Key' +
        ': Char);'
      'begin'
      
        '  if key = #13 then combo_periodo.setfocus;                     ' +
        '                                                                ' +
        '                                                                ' +
        '    '
      'end;'
      ''
      
        'procedure MaskEdit1OnKeyPress(Sender: TfrxComponent; var Key: Ch' +
        'ar);'
      'begin'
      
        '  if key = #13 then edData2.setfocus;                           ' +
        '                                                              '
      'end;'
      ''
      
        'procedure Combo_PeriodoOnKeyPress(Sender: TfrxComponent; var Key' +
        ': Char);'
      'begin'
      '  if key = #13 then edData1.setfocus;'
      'end;'
      ''
      
        'procedure edData2OnKeyPress(Sender: TfrxComponent; var Key: Char' +
        ');'
      'begin'
      '  if key = #13 then bOk.setfocus;'
      'end;'
      ''
      
        'procedure combo_situacaoOnKeyPress(Sender: TfrxComponent; var Ke' +
        'y: Char);'
      'begin'
      '  if key = #13 then combo_cliente.setfocus;'
      'end;'
      ''
      
        'procedure combo_bancoOnKeyPress(Sender: TfrxComponent; var Key: ' +
        'Char);'
      'begin'
      '  if key = #13 then combo_situacao.setfocus;'
      'end;'
      ''
      '(**************************************************************)'
      
        '(*******************  BLOCO DE ALTER'#199#195'O ***********************)' +
        '    '
      'procedure BitBtn1OnClick(Sender: TfrxComponent);'
      
        'var banco, cliente, situacao, periodo : string;                 ' +
        '                                                                ' +
        '                         '
      'begin'
      '  if combo_banco.itemIndex = 0 then'
      '     banco := '#39#39
      '  else'
      '     banco := '#39' and c000013.banco = "'#39'+combo_banco.text+'#39'"'#39';'
      '  '
      ''
      '  if combo_cliente.itemIndex = 0 then'
      '     cliente := '#39#39
      '  else'
      '     cliente := '#39' and c000007.nome = "'#39'+combo_cliente.text+'#39'"'#39';'
      '  '
      '  if combo_situacao.itemIndex = 0 then situacao := '#39#39';'
      
        '  if combo_situacao.itemIndex = 1 then situacao := '#39' and c000123' +
        '.situacao = 1'#39';'
      
        '  if combo_situacao.itemIndex = 2 then situacao := '#39' and c000123' +
        '.situacao = 2'#39';'
      ''
      
        '  if combo_periodo.itemIndex = 0 then periodo := '#39' and data betw' +
        'een :datai and :dataf'#39';'
      
        '  if combo_periodo.itemIndex = 1 then periodo := '#39' and data_pgto' +
        ' between :datai and :dataf'#39';'
      ''
      '  qrfinanceira.close;'
      '  qrfinanceira.sql.clear;'
      '  qrfinanceira.sql.add('#39'select'#39');      '
      '  qrfinanceira.sql.add('#39'c000123.*,'#39');  '
      '  qrfinanceira.sql.add('#39'c000007.nome,'#39');  '
      '  qrfinanceira.sql.add('#39'c000013.banco'#39');  '
      '  qrfinanceira.sql.add('#39'from'#39');  '
      '  qrfinanceira.sql.add('#39'c000123,'#39');  '
      '  qrfinanceira.sql.add('#39'c000007,'#39');  '
      '  qrfinanceira.sql.add('#39'c000013'#39');  '
      '  qrfinanceira.sql.add('#39'where'#39');  '
      
        '  qrfinanceira.sql.add('#39'c000123.codcliente = c000007.codigo and'#39 +
        ');           '
      '  qrfinanceira.sql.add('#39'c000123.codbanco   = c000013.numero'#39');'
      
        '  qrfinanceira.sql.add(banco+cliente+situacao+periodo);         ' +
        '                                                             '
      '  qrfinanceira.sql.add('#39'order by'#39');'
      '  qrfinanceira.sql.add('#39'c000123.data'#39');'
      
        '  qrfinanceira.ParamByName('#39'datai'#39').Value := strtodate(edData1.t' +
        'ext);'
      
        '  qrfinanceira.ParamByName('#39'dataf'#39').value := strtodate(edData2.t' +
        'ext);'
      '  qrfinanceira.open;'
      ''
      
        '                                                                ' +
        '                                                      '
      '    '
      'end;'
      '  '
      ''
      
        '(**************************************************************)' +
        '      '
      ''
      'begin'
      ''
      'end.')
    OnGetValue = fxfinanceiraGetValue
    Left = 392
    Top = 104
    Datasets = <
      item
        DataSet = fxfinanceira.qrbanco
        DataSetName = 'qrbanco'
      end
      item
        DataSet = fxfinanceira.qrcliente
        DataSetName = 'qrcliente'
      end
      item
        DataSet = fxfinanceira.qrfinanceira
        DataSetName = 'qrfinanceira'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object Conexao: TfrxIBXDatabase
        DatabaseName = 'C:\Arquivos de programas\CIA\bd\BASE.FDB'
        LoginPrompt = False
        Params.Strings = (
          'user_name=SYSDBA'
          'password=masterkey')
        SQLDialect = 1
        pLeft = 24
        pTop = 16
      end
      object qrbanco: TfrxIBXQuery
        UserName = 'qrbanco'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select numero, banco from c000013'
          'where financeira = 1'
          'order by banco                                        ')
        Database = fxfinanceira.Conexao
        pLeft = 84
        pTop = 16
        Parameters = <>
      end
      object qrcliente: TfrxIBXQuery
        UserName = 'qrcliente'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select numero, banco from c000013'
          'where financeira = 1'
          'order by banco                                        ')
        Database = fxfinanceira.Conexao
        pLeft = 136
        pTop = 16
        Parameters = <>
      end
      object qrfinanceira: TfrxIBXQuery
        UserName = 'qrfinanceira'
        CloseDataSource = True
        FieldAliases.Strings = (
          'CODIGO=CODIGO'
          'CODBANCO=CODBANCO'
          'DATA=DATA'
          'CODCLIENTE=CODCLIENTE'
          'VALOR=VALOR'
          'SITUACAO=SITUACAO'
          'DATA_PGTO=DATA_PGTO'
          'VALOR_PAGO=VALOR_PAGO'
          'BORDERO=BORDERO'
          'PROPOSTA=PROPOSTA'
          'OBS=OBS'
          'CODVENDA=CODVENDA'
          'NOME=NOME'
          'BANCO=BANCO')
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          'select'
          'c000123.*,'
          'c000007.nome,'
          'c000013.banco'
          'from'
          'c000123,'
          'c000007,'
          'c000013'
          'where'
          'c000123.codcliente = c000007.codigo and         '
          'c000123.codbanco   = c000013.numero'
          'order by'
          'data                                                           ')
        Database = fxfinanceira.Conexao
        pLeft = 192
        pTop = 16
        Parameters = <>
      end
    end
    object frmLista: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BorderStyle = bsToolWindow
      Caption = 'Financeira | Relat'#243'rio'
      Height = 172.000000000000000000
      Left = 479.000000000000000000
      Top = 154.000000000000000000
      Width = 429.000000000000000000
      OnShow = 'frmListaOnShow'
      object Label1: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 12.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Financeira:'
        Color = clBtnFace
      end
      object combo_banco: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 8.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Style = csDropDownList
        ItemIndex = -1
        OnKeyPress = 'combo_bancoOnKeyPress'
      end
      object Label2: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 36.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Situa'#231#227'o:'
        Color = clBtnFace
      end
      object combo_situacao: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 32.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Todas'
          'Aberto'
          'Baixadas')
        Style = csDropDownList
        Text = 'Todas'
        ItemIndex = 0
        OnKeyPress = 'combo_situacaoOnKeyPress'
      end
      object Panel1: TfrxPanelControl
        Top = 112.000000000000000000
        Width = 433.000000000000000000
        Height = 41.000000000000000000
        ShowHint = True
        BevelOuter = bvNone
        Color = clBtnFace
        object Bok: TfrxBitBtnControl
          Left = 112.000000000000000000
          Top = 4.000000000000000000
          Width = 95.000000000000000000
          Height = 25.000000000000000000
          ShowHint = True
          Caption = 'Ok'
          ModalResult = 1
          OnClick = 'BitBtn1OnClick'
        end
        object Bevel1: TfrxBevelControl
          Width = 574.000000000000000000
          Height = 2.000000000000000000
          ShowHint = True
        end
        object BCancelar: TfrxBitBtnControl
          Left = 216.000000000000000000
          Top = 4.000000000000000000
          Width = 95.000000000000000000
          Height = 25.000000000000000000
          ShowHint = True
          Caption = 'Cancelar'
          ModalResult = 2
        end
      end
      object Label3: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 60.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
        Color = clBtnFace
      end
      object combo_cliente: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 56.000000000000000000
        Width = 313.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Todos')
        Text = 'Todos'
        ItemIndex = 0
        OnChange = 'ComboBox1OnChange'
        OnExit = 'combo_clienteOnExit'
        OnKeyPress = 'combo_clienteOnKeyPress'
      end
      object Label4: TfrxLabelControl
        Left = 8.000000000000000000
        Top = 84.000000000000000000
        Width = 85.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Per'#237'odo:'
        Color = clBtnFace
      end
      object Combo_Periodo: TfrxComboBoxControl
        Left = 96.000000000000000000
        Top = 80.000000000000000000
        Width = 89.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Items.Strings = (
          'Venda'
          'Pagamento')
        Style = csDropDownList
        Text = 'Pagamento'
        ItemIndex = 1
        OnKeyPress = 'Combo_PeriodoOnKeyPress'
      end
      object edData1: TfrxMaskEditControl
        Left = 216.000000000000000000
        Top = 80.000000000000000000
        Width = 81.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        EditMask = '##/##/####'
        MaxLength = 10
        Text = '01/01/1900'
        OnKeyPress = 'MaskEdit1OnKeyPress'
      end
      object Label5: TfrxLabelControl
        Left = 308.000000000000000000
        Top = 84.000000000000000000
        Width = 9.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taCenter
        AutoSize = False
        Caption = 'a'
        Color = clBtnFace
      end
      object edData2: TfrxMaskEditControl
        Left = 328.000000000000000000
        Top = 80.000000000000000000
        Width = 81.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        EditMask = '##/##/####'
        MaxLength = 10
        Text = '01/01/1900'
        OnKeyPress = 'edData2OnKeyPress'
      end
      object Label6: TfrxLabelControl
        Left = 192.000000000000000000
        Top = 84.000000000000000000
        Width = 13.000000000000000000
        Height = 13.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Alignment = taCenter
        AutoSize = False
        Caption = 'de'
        Color = clBtnFace
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        DataSet = fxfinanceira.qrfinanceira
        DataSetName = 'qrfinanceira'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BANCO'
          DataSet = fxfinanceira.qrfinanceira
          DataSetName = 'qrfinanceira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[qrfinanceira."BANCO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 222.992270000000000000
          Top = 3.779530000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = fxfinanceira.qrfinanceira
          DataSetName = 'qrfinanceira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[qrfinanceira."NOME"]')
          ParentFont = False
        end
      end
    end
  end
  object fsfinanceira: TfrxDBDataset
    UserName = 'fsfinanceira'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODBANCO=CODBANCO'
      'BANCO=BANCO'
      'DATA=DATA'
      'CODCLIENTE=CODCLIENTE'
      'VALOR=VALOR'
      'SITUACAO=SITUACAO'
      'DATA_PGTO=DATA_PGTO'
      'VALOR_PAGO=VALOR_PAGO'
      'BORDERO=BORDERO'
      'PROPOSTA=PROPOSTA'
      'OBS=OBS'
      'CODVENDA=CODVENDA'
      'NOME=NOME'
      'CODIGO=CODIGO')
    DataSet = qrfinanceira
    BCDToCurrency = False
    Left = 424
    Top = 104
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
    Left = 456
    Top = 104
  end
  object fsConexao: TfrxIBXComponents
    Left = 360
    Top = 104
  end
  object fsDialog: TfrxDialogControls
    Left = 328
    Top = 104
  end
end
