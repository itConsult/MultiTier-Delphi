object fmCfgDB: TfmCfgDB
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o'
  ClientHeight = 273
  ClientWidth = 174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 40
    Height = 13
    Caption = 'Servidor'
  end
  object Label2: TLabel
    Left = 8
    Top = 45
    Width = 42
    Height = 13
    Caption = 'Instance'
  end
  object Label3: TLabel
    Left = 8
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Database'
  end
  object Label4: TLabel
    Left = 8
    Top = 127
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label5: TLabel
    Left = 8
    Top = 170
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edtServidor: TEdit
    Left = 8
    Top = 24
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object edtInstance: TEdit
    Left = 8
    Top = 64
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object edtDatabase: TEdit
    Left = 8
    Top = 104
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object edtLogin: TEdit
    Left = 8
    Top = 146
    Width = 153
    Height = 21
    TabOrder = 3
  end
  object edtPassword: TEdit
    Left = 8
    Top = 189
    Width = 153
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = Button1Click
  end
end
