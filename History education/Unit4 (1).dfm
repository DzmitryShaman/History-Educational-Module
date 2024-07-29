object Form4: TForm4
  Left = 610
  Top = 310
  Width = 801
  Height = 480
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 769
    Height = 258
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1048#1084#1103
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1088#1077#1084#1103
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1089#1090
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1094#1077#1085#1082#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1077#1087#1088#1072#1074#1080#1083#1100#1085#1099#1077
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1088#1072#1074#1080#1083#1100#1085#1099#1077
        Width = 120
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 288
    Width = 249
    Height = 33
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=db.md' +
      'b;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sys' +
      'tem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pa' +
      'ssword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mod' +
      'e=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tr' +
      'ansactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create' +
      ' System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLED' +
      'B:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without R' +
      'eplica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Top = 416
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 416
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT*FROM '#1058#1072#1073#1083#1080#1094#1072'1')
    Left = 24
    Top = 416
  end
end
