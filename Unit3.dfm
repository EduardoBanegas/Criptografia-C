object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Form3'
  ClientHeight = 396
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 336
    Top = 16
    Width = 122
    Height = 13
    Caption = 'Cifrado por Transposicion'
  end
  object Label2: TLabel
    Left = 176
    Top = 40
    Width = 38
    Height = 13
    Caption = 'CIFRAR'
  end
  object Label3: TLabel
    Left = 608
    Top = 40
    Width = 57
    Height = 13
    Caption = 'DESCIFRAR'
  end
  object RichEdit1: TRichEdit
    Left = 32
    Top = 72
    Width = 337
    Height = 113
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 0
    Zoom = 100
  end
  object RichEdit2: TRichEdit
    Left = 32
    Top = 240
    Width = 337
    Height = 113
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 1
    Zoom = 100
  end
  object RichEdit3: TRichEdit
    Left = 440
    Top = 72
    Width = 337
    Height = 113
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
  object RichEdit4: TRichEdit
    Left = 440
    Top = 240
    Width = 337
    Height = 113
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 3
    Zoom = 100
  end
  object Button1: TButton
    Left = 702
    Top = 363
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Top = 368
    object Grupo1: TMenuItem
      Caption = 'Grupo'
      object Cifrar1: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar1Click
      end
      object Descifrar1: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar1Click
      end
    end
    object Serie1: TMenuItem
      Caption = 'Serie'
      object Cifrar2: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar2Click
      end
      object Descifrar2: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar2Click
      end
    end
    object Columnas1: TMenuItem
      Caption = 'Columnas'
      object Cifrar3: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar3Click
      end
      object Descifrar3: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar3Click
      end
    end
    object Filas1: TMenuItem
      Caption = 'Filas'
      object Cifrar4: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar4Click
      end
      object Descifrar4: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar4Click
      end
    end
    object ZigZag1: TMenuItem
      Caption = 'Zig-Zag'
      object Cifrar5: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar5Click
      end
      object Descifrar5: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar5Click
      end
    end
  end
end
