object FrmFiltroAluCurso: TFrmFiltroAluCurso
  Left = 264
  Top = 254
  Width = 551
  Height = 198
  BorderIcons = []
  Caption = 'Filtro de alunos matriculados no curso'
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
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Campo'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 53
    Height = 13
    Caption = 'Informa'#231#227'o'
  end
  object Label4: TLabel
    Left = 256
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Ordenar por:'
  end
  object EDInformacao: TEdit
    Left = 104
    Top = 136
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object BtnOK: TBitBtn
    Left = 336
    Top = 112
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 4
    OnClick = BtnOKClick
  end
  object BtnCancel: TBitBtn
    Left = 416
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = BtnCancelClick
  end
  object CBXCampo: TComboBox
    Left = 80
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 0
    Text = 'Nome do aluno'
    Items.Strings = (
      'C'#243'digo'
      'Nome do aluno'
      'C'#243'digo do aluno'
      'Nome do curso'
      'C'#243'digo do curso'
      'Valor')
  end
  object CBXOrdPor: TComboBox
    Left = 336
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'N'#227'o selecionado'
    Items.Strings = (
      'C'#243'digo'
      'C'#243'digo do aluno'
      'C'#243'digo do curso'
      'Valor')
  end
  object CBXOperacao: TComboBox
    Left = 80
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 6
    TabOrder = 1
    Text = 'Qualquer parte'
    Items.Strings = (
      'Igual'
      'Diferente de'
      'Menor ou igual'
      'Maior ou igual'
      'Menor'
      'Maior'
      'Qualquer parte')
  end
end
