object frmQuestion3: TfrmQuestion3
  Left = 0
  Top = 0
  Caption = 'Question 3'
  ClientHeight = 429
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object redQ3: TRichEdit
    Left = 9
    Top = 241
    Width = 496
    Height = 168
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 234
    Height = 227
    TabOrder = 1
    object lblExhibitor: TLabel
      Left = 10
      Top = 16
      Width = 159
      Height = 19
      Caption = 'Enter Exhibitor'#39's name'
    end
    object lblSqm: TLabel
      Left = 9
      Top = 74
      Width = 192
      Height = 19
      Caption = 'Enter space required (sqm)'
    end
    object edtName: TEdit
      Left = 10
      Top = 41
      Width = 191
      Height = 27
      TabOrder = 0
    end
    object edtStandSize: TEdit
      Left = 10
      Top = 99
      Width = 191
      Height = 27
      TabOrder = 1
    end
    object btnq3_2_1: TButton
      Left = 9
      Top = 132
      Width = 192
      Height = 34
      Caption = 'Q 3.2.1 Register'
      TabOrder = 2
      OnClick = btnq3_2_1Click
    end
    object btnq3_2_2: TButton
      Left = 9
      Top = 172
      Width = 192
      Height = 33
      Caption = 'Q 3.2.2 Display cost'
      TabOrder = 3
      OnClick = btnq3_2_2Click
    end
  end
  object Panel2: TPanel
    Left = 280
    Top = 8
    Width = 225
    Height = 227
    TabOrder = 2
    object lblProfile: TLabel
      Left = 8
      Top = 16
      Width = 169
      Height = 19
      Caption = 'Enter profile description'
    end
    object edtProfile: TEdit
      Left = 8
      Top = 41
      Width = 209
      Height = 27
      TabOrder = 0
    end
    object btnq3_2_3: TButton
      Left = 8
      Top = 90
      Width = 209
      Height = 30
      Caption = 'Q 3.2.3 Check profile'
      TabOrder = 1
      OnClick = btnq3_2_3Click
    end
    object pnlQ3_2_3: TPanel
      Left = 8
      Top = 126
      Width = 209
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnq3_2_4: TButton
      Left = 8
      Top = 172
      Width = 209
      Height = 33
      Caption = 'Q 3.2.4 Calculate badges'
      TabOrder = 3
      OnClick = btnq3_2_4Click
    end
  end
end
