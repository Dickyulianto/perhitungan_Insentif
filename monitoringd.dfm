object Form7: TForm7
  Left = 215
  Top = 118
  Width = 870
  Height = 523
  Caption = 'Form7'
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
    Left = 256
    Top = 112
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 256
    Top = 80
    Width = 51
    Height = 13
    Caption = 'TANGGAL'
  end
  object Label3: TLabel
    Left = 256
    Top = 144
    Width = 44
    Height = 13
    Caption = 'TARGET'
  end
  object Label4: TLabel
    Left = 256
    Top = 176
    Width = 68
    Height = 13
    Caption = 'PENCAPAIAN'
  end
  object Label5: TLabel
    Left = 256
    Top = 208
    Width = 33
    Height = 13
    Caption = 'INDEX'
  end
  object Label6: TLabel
    Left = 368
    Top = 16
    Width = 204
    Height = 24
    Caption = 'MONITORING PRODUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 360
    Top = 104
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 360
    Top = 136
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 360
    Top = 72
    Width = 113
    Height = 21
    Date = 44552.866228402780000000
    Time = 44552.866228402780000000
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 360
    Top = 168
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 360
    Top = 200
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 648
    Top = 72
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 648
    Top = 104
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 648
    Top = 136
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 648
    Top = 168
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 648
    Top = 200
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 128
    Top = 264
    Width = 633
    Height = 200
    DataSource = DataSource1
    TabOrder = 10
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
    Left = 160
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tabel_Produk'
    Left = 208
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 264
    Top = 8
  end
end
