object Form2: TForm2
  Left = 233
  Top = 99
  Width = 794
  Height = 460
  Caption = 'Dashboard'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 248
    Top = 80
    object SALESMAN1: TMenuItem
      Caption = 'SALESMAN'
      object NAMASALESMAN1: TMenuItem
        Caption = 'ID SALESMAN'
        OnClick = NAMASALESMAN1Click
      end
      object AREA1: TMenuItem
        Caption = 'AREA SALESMAN'
        OnClick = AREA1Click
      end
    end
    object PENCAPAIAN1: TMenuItem
      Caption = 'MONITORING'
      object VALUE1: TMenuItem
        Caption = 'MONITORING VALUE'
        OnClick = VALUE1Click
      end
      object MONITORINGTDP1: TMenuItem
        Caption = 'MONITORING AA'
        OnClick = MONITORINGTDP1Click
      end
      object MONITORINGAA1: TMenuItem
        Caption = 'MONOTORING PRODUK'
        OnClick = MONITORINGAA1Click
      end
    end
    object PENCAPAIAN2: TMenuItem
      Caption = 'PENCAPAIAN'
      OnClick = PENCAPAIAN2Click
    end
    object EXIT1: TMenuItem
      Caption = 'EXIT'
      OnClick = EXIT1Click
    end
  end
end
