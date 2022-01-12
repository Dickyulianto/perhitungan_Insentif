object Form8: TForm8
  Left = -4
  Top = -4
  Width = 1288
  Height = 688
  Caption = 'Form8'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 472
    Top = 16
    Width = 226
    Height = 24
    Caption = 'PERHITUNGAN INSENTIF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 640
    Top = 64
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label6: TLabel
    Left = 640
    Top = 88
    Width = 96
    Height = 13
    Caption = 'TOTAL INSENTIF 1'
  end
  object Label7: TLabel
    Left = 640
    Top = 120
    Width = 93
    Height = 13
    Caption = 'INDEX % PRODUK'
  end
  object Label8: TLabel
    Left = 640
    Top = 152
    Width = 96
    Height = 13
    Caption = 'POINT PROGRESS'
  end
  object Label9: TLabel
    Left = 640
    Top = 184
    Width = 38
    Height = 13
    Caption = 'TOTAL '
  end
  object Label10: TLabel
    Left = 640
    Top = 264
    Width = 137
    Height = 13
    Caption = 'INSENTIF YANG DITERIMA'
  end
  object GroupBox1: TGroupBox
    Left = 88
    Top = 40
    Width = 273
    Height = 249
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 87
      Height = 13
      Caption = 'INSENTIF VALUE'
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 82
      Height = 13
      Caption = 'INSENTIF TOKO'
    end
    object Label4: TLabel
      Left = 8
      Top = 112
      Width = 96
      Height = 13
      Caption = 'TOTAL INSENTIF 1'
    end
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 120
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 120
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 88
      Top = 160
      Width = 75
      Height = 25
      Caption = 'PROSES'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 88
      Top = 192
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 4
    end
  end
  object Edit4: TEdit
    Left = 816
    Top = 56
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 816
    Top = 88
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object Edit6: TEdit
    Left = 816
    Top = 120
    Width = 57
    Height = 21
    TabOrder = 3
  end
  object Edit7: TEdit
    Left = 816
    Top = 152
    Width = 49
    Height = 21
    TabOrder = 4
  end
  object Button3: TButton
    Left = 1088
    Top = 56
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 1088
    Top = 88
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 1088
    Top = 120
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 1088
    Top = 152
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 1088
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = Button7Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 312
    Width = 433
    Height = 105
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 552
    Width = 433
    Height = 105
    DataSource = DataSource3
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 424
    Width = 433
    Height = 120
    DataSource = DataSource2
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
  end
  object Edit8: TEdit
    Left = 816
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Edit9: TEdit
    Left = 816
    Top = 256
    Width = 105
    Height = 21
    TabOrder = 14
  end
  object Button8: TButton
    Left = 1088
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HASIL'
    TabOrder = 15
    OnClick = Button8Click
  end
  object DBGrid4: TDBGrid
    Left = 640
    Top = 312
    Width = 521
    Height = 105
    DataSource = DataSource4
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ASUS\Docum' +
      'ents\salesman.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 296
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tabel_Monitoring'
    Left = 112
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 144
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 128
    Top = 408
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ASUS\Docum' +
      'ents\salesman.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 408
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'Tabel_Toko'
    Left = 96
    Top = 408
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ASUS\Docum' +
      'ents\salesman.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 536
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = 'Tabel_Produk'
    Left = 88
    Top = 536
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 120
    Top = 536
  end
  object ADOConnection4: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ASUS\Docum' +
      'ents\salesman.mdb;Persist Security Info=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 704
    Top = 8
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection4
    CursorType = ctStatic
    TableName = 'Tabel_InsDiterima'
    Left = 736
    Top = 8
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 768
    Top = 8
  end
end
