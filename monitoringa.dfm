object Form6: TForm6
  Left = 263
  Top = 142
  Width = 869
  Height = 448
  Caption = 'Form6'
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
    Left = 336
    Top = 8
    Width = 180
    Height = 24
    Caption = 'MONITORING TOKO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 56
    Width = 51
    Height = 13
    Caption = 'TANGGAL'
  end
  object Label3: TLabel
    Left = 208
    Top = 88
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label4: TLabel
    Left = 208
    Top = 120
    Width = 44
    Height = 13
    Caption = 'TARGET'
  end
  object Label5: TLabel
    Left = 208
    Top = 152
    Width = 68
    Height = 13
    Caption = 'PENCAPAIAN'
  end
  object Label6: TLabel
    Left = 208
    Top = 184
    Width = 41
    Height = 13
    Caption = 'INDEX%'
  end
  object Label7: TLabel
    Left = 208
    Top = 216
    Width = 49
    Height = 13
    Caption = 'INSENTIF'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 360
    Top = 48
    Width = 129
    Height = 21
    Date = 44549.712594548610000000
    Time = 44549.712594548610000000
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 360
    Top = 80
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 360
    Top = 112
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 360
    Top = 144
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 360
    Top = 176
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 360
    Top = 208
    Width = 81
    Height = 21
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 256
    Width = 649
    Height = 144
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 640
    Top = 56
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 88
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 640
    Top = 120
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 640
    Top = 152
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 640
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 11
    OnClick = Button5Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ASUS\Docum' +
      'ents\salesman.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 552
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tabel_Toko'
    Left = 600
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 640
    Top = 8
  end
end
