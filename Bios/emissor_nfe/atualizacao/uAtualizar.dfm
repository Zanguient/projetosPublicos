object BackupMySQL: TBackupMySQL
  Left = 216
  Top = 120
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Backup e Atualiza'#231#227'o da Base de Dados'
  ClientHeight = 407
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 240
    Width = 593
    Height = 154
  end
  object Bevel2: TBevel
    Left = 608
    Top = 240
    Width = 201
    Height = 153
  end
  object Label1: TLabel
    Left = 214
    Top = 252
    Width = 44
    Height = 13
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 422
    Top = 252
    Width = 37
    Height = 13
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 168
    Top = 279
    Width = 90
    Height = 13
    Caption = 'Nome do banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 160
    Top = 308
    Width = 98
    Height = 13
    Caption = 'Pasta de Backup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 338
    Width = 222
    Height = 13
    Caption = 'Gerenciador da Base de Dados MySQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 39
    Top = 366
    Width = 219
    Height = 13
    Caption = 'Arquivo de Atualiza'#231#227'o e Restaura'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 568
    Top = 361
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF3333333333333744333333333333F773333333333337
      44473333333333F777F3333333333744444333333333F7733733333333374444
      4433333333F77333733333333744444447333333F7733337F333333744444444
      433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
      9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
      C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
      CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
      CCC333333333333777FF33333333333333CC3333333333333773}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton3Click
  end
  object Bevel3: TBevel
    Left = 608
    Top = 8
    Width = 201
    Height = 201
  end
  object Label8: TLabel
    Left = 615
    Top = 30
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 7
    Top = 211
    Width = 183
    Height = 13
    Caption = 'Escolha o caminho da pasta de '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 190
    Top = 211
    Width = 187
    Height = 13
    Caption = 'backup e gerenciador MySQL na'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 383
    Top = 212
    Width = 124
    Height = 13
    Caption = 'lista de pastas acima.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 613
    Top = 16
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 613
    Top = 12
    Width = 176
    Height = 13
    Caption = 'Clique nos bot'#245'es abaixo para '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 613
    Top = 28
    Width = 191
    Height = 13
    Caption = 'inserir seus respectivos caminhos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 613
    Top = 44
    Width = 113
    Height = 13
    Caption = 'nos campos abaixo.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object spdxp32: TSpeedButton
    Left = 568
    Top = 332
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Caption = 'XP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdxp32Click
  end
  object spd7x32bits: TSpeedButton
    Left = 541
    Top = 332
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Caption = '7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spd7x32bitsClick
  end
  object spdpadrao: TSpeedButton
    Left = 567
    Top = 247
    Width = 23
    Height = 22
    Hint = 'Baixe o arquivo de atualiza'#231#227'o no site marcosbras.com'
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdpadraoClick
  end
  object EdtUsuario: TEdit
    Left = 269
    Top = 248
    Width = 137
    Height = 21
    TabOrder = 3
    Text = 'root'
  end
  object EdtSenha: TEdit
    Left = 470
    Top = 248
    Width = 91
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
    Text = 'sqlremoto'
  end
  object EdtNomeBancoDados: TEdit
    Left = 269
    Top = 274
    Width = 324
    Height = 21
    TabOrder = 5
    Text = 'NFE'
  end
  object EdtPastaBackup: TEdit
    Left = 269
    Top = 303
    Width = 324
    Height = 21
    TabOrder = 6
    Text = 'edtpastabackup'
  end
  object Executar: TButton
    Left = 617
    Top = 255
    Width = 177
    Height = 57
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = ExecutarClick
  end
  object EdtCaminhoGbase: TEdit
    Left = 269
    Top = 333
    Width = 268
    Height = 21
    TabOrder = 7
    Text = 'edicaminhogbase'
  end
  object Button1: TButton
    Left = 617
    Top = 320
    Width = 177
    Height = 57
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object edtArqAtu: TEdit
    Left = 269
    Top = 361
    Width = 294
    Height = 21
    TabOrder = 8
    Text = 'edtArqAtu'
  end
  object DirectoryOutline1: TDirectoryOutline
    Left = 8
    Top = 8
    Width = 593
    Height = 200
    ItemHeight = 13
    Options = [ooDrawFocusRect]
    PictureClosed.Data = {
      46030000424D460300000000000036000000280000000E0000000E0000000100
      2000000000001003000000000000000000000000000000000000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008000800080008000800080000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
      800080008000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000080008000800080008000
      800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000008000800080008000800080000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
      8000800080008000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      80008000800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008000
      8000800080008000800080008000800080008000800080008000800080008080
      8000000000000000000000000000000000008080800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      80008000800080008000}
    PictureLeaf.Data = {
      46030000424D460300000000000036000000280000000E0000000E0000000100
      2000000000001003000000000000000000000000000000000000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008000800080008000800080000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
      800080008000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000080008000800080008000
      800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000008000800080008000800080000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
      8000800080008000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000800080008000800080008000
      80008000800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008000
      8000800080008000800080008000800080008000800080008000800080008080
      8000000000000000000000000000000000008080800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      80008000800080008000}
    PictureOpen.Data = {
      46030000424D460300000000000036000000280000000E0000000E0000000100
      2000000000001003000000000000000000000000000000000000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080000000000000000000000000000000000000000000000000000000
      0000000000008000800080008000800080008000800080008000000000000000
      000000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF000000
      0000800080008000800080008000800080000000000000FFFF000000000000FF
      FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00000000008000
      800080008000800080000000000000FFFF0000FFFF000000000000FFFF00C0C0
      C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF0000000000800080008000
      800000000000FFFFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000080008000800080000000000000FF
      FF00FFFFFF0000FFFF000000000000FFFF000000000000FFFF000000000000FF
      FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000008000
      800080008000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF000000000000000000000000008000800080008000800080008000
      8000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
      8000800080008000800080008000800080008000800080008000800080008080
      8000000000000000000000000000000000008080800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      8000800080008000800080008000800080008000800080008000800080008000
      80008000800080008000}
    TabOrder = 0
    Data = {1C}
  end
  object Button2: TButton
    Left = 614
    Top = 70
    Width = 179
    Height = 57
    Caption = 'Pasta de Backup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 614
    Top = 134
    Width = 179
    Height = 57
    Caption = 'Gerenciador MySQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object dlgabrir: TOpenDialog
    Left = 56
    Top = 264
  end
end
