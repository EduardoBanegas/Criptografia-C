object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Form4'
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
    Top = 67
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
    Top = 232
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
    Top = 67
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
    Top = 232
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
  object MainMenu1: TMainMenu
    Top = 368
    object MonoAlfabetico1: TMenuItem
      Caption = 'Mono Alfabetico'
      object Cifrar1: TMenuItem
        Caption = 'Cifrar'
        OnClick = Cifrar1Click
      end
      object Descifrar1: TMenuItem
        Caption = 'Descifrar'
        OnClick = Descifrar1Click
      end
    end
    object PoliAlfabetico1: TMenuItem
      Caption = 'Poli Alfabetico'
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
