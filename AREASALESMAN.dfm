object Form4: TForm4
  Left = 367
  Top = 230
  Width = 493
  Height = 450
  Caption = 'Area Salesman'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 16
    Width = 184
    Height = 25
    Caption = 'AREA SALESMAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 80
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 88
    Top = 120
    Width = 29
    Height = 13
    Caption = 'AREA'
  end
  object Edit1: TEdit
    Left = 176
    Top = 72
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = -8
    Top = 200
    Width = 489
    Height = 145
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 384
    Top = 64
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 96
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 384
    Top = 128
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 384
    Top = 160
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 6
    OnClick = Button4Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ASUS\Docum' +
      'ents\salesman.mdb;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tabel_areasalesman'
    Left = 8
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 8
    Top = 112
  end
end
