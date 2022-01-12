object Form5: TForm5
  Left = 197
  Top = 134
  Width = 870
  Height = 450
  Caption = 'Form5'
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
    Width = 199
    Height = 25
    Caption = 'MONITORING VALUE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 96
    Width = 92
    Height = 13
    Caption = 'NAMA SALESMAN'
  end
  object Label3: TLabel
    Left = 176
    Top = 128
    Width = 82
    Height = 13
    Caption = 'TARGET VALUE'
  end
  object Label4: TLabel
    Left = 176
    Top = 160
    Width = 68
    Height = 13
    Caption = 'PENCAPAIAN'
  end
  object Label5: TLabel
    Left = 176
    Top = 192
    Width = 44
    Height = 13
    Caption = 'INDEX %'
  end
  object Label6: TLabel
    Left = 176
    Top = 224
    Width = 49
    Height = 13
    Caption = 'INSENTIF'
  end
  object Label7: TLabel
    Left = 176
    Top = 64
    Width = 51
    Height = 13
    Caption = 'TANGGAL'
  end
  object Edit1: TEdit
    Left = 320
    Top = 88
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 320
    Top = 120
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 320
    Top = 152
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 320
    Top = 184
    Width = 49
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 648
    Top = 56
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 648
    Top = 88
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 648
    Top = 120
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 648
    Top = 152
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 648
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = Button5Click
  end
  object Edit5: TEdit
    Left = 320
    Top = 216
    Width = 89
    Height = 21
    TabOrder = 9
  end
  object DateTimePicker1: TDateTimePicker
    Left = 320
    Top = 56
    Width = 97
    Height = 21
    Date = 44549.637598217600000000
    Time = 44549.637598217600000000
    TabOrder = 10
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 256
    Width = 649
    Height = 152
    DataSource = DataSource1
    TabOrder = 11
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
    Left = 48
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tabel_Monitoring'
    Left = 104
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 160
    Top = 8
  end
end
