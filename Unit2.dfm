object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Form2'
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
    Left = 352
    Top = 8
    Width = 126
    Height = 13
    Caption = 'Cifrado por Desplzamiento'
  end
  object Label2: TLabel
    Left = 184
    Top = 48
    Width = 46
    Height = 13
    Caption = 'CIFRADO'
  end
  object Label3: TLabel
    Left = 600
    Top = 48
    Width = 65
    Height = 13
    Caption = 'DESCIFRADO'
  end
  object RichEdit1: TRichEdit
    Left = 32
    Top = 80
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
    Left = 456
    Top = 80
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
    Left = 456
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
    Left = 718
    Top = 363
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object Desplazamientopuro1: TMenuItem
      Caption = 'Desplazamiento puro'
      object Cifrar1: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar1Click
      end
      object Descifrar1: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar1Click
      end
    end
    object Desplazamientopuroconclave1: TMenuItem
      Caption = 'Desplazamiento puro con clave'
      object Cifrar2: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar2Click
      end
      object Descifrar2: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar2Click
      end
    end
  end
end
