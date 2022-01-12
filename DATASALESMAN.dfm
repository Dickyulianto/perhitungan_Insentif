object Form3: TForm3
  Left = 188
  Top = 276
  Width = 865
  Height = 519
  Caption = 'Data Salesman'
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
    Left = 320
    Top = 8
    Width = 173
    Height = 24
    Caption = 'DATA SALESMAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 48
    Width = 77
    Height = 13
    Caption = 'Nama Salesman'
  end
  object Label3: TLabel
    Left = 176
    Top = 80
    Width = 60
    Height = 13
    Caption = 'ID Salesman'
  end
  object Label4: TLabel
    Left = 176
    Top = 112
    Width = 32
    Height = 13
    Caption = 'Alamat'
  end
  object Label5: TLabel
    Left = 176
    Top = 144
    Width = 66
    Height = 13
    Caption = 'Tahun Masuk'
  end
  object Edit1: TEdit
    Left = 312
    Top = 48
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 312
    Top = 80
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 312
    Top = 112
    Width = 265
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 312
    Top = 144
    Width = 57
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 184
    Width = 865
    Height = 217
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 704
    Top = 40
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 704
    Top = 72
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 704
    Top = 104
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 704
    Top = 136
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 8
    OnClick = Button4Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ASUS\Docum' +
      'ents\salesman.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 40
    Top = 96
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tabel_salesman'
    Left = 40
    Top = 56
  end
end
