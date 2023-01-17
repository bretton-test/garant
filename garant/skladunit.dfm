object skladform: Tskladform
  Left = 483
  Top = 211
  BorderStyle = bsToolWindow
  Caption = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1084#1072#1075#1072#1079#1080#1085#1086#1074
  ClientHeight = 334
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 305
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBGrid: TDBGridEh
      Left = 0
      Top = 0
      Width = 717
      Height = 305
      Align = alClient
      DataSource = DataSource1
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Width = 32
        end
        item
          EditButtons = <>
          FieldName = 'name'
          Footers = <>
          Title.Caption = #1085#1072#1079#1074#1072#1085#1080#1077
          Width = 169
        end
        item
          EditButtons = <>
          FieldName = 'adres'
          Footers = <>
          Title.Caption = #1072#1076#1088#1077#1089
          Width = 155
        end
        item
          EditButtons = <>
          FieldName = 'tel'
          Footers = <>
          Title.Caption = #1090#1077#1083#1077#1092#1086#1085
          Width = 108
        end
        item
          EditButtons = <>
          FieldName = 'email'
          Footers = <>
          Width = 112
        end
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'servis'
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          Title.Caption = #1101#1090#1086' '#1089#1077#1088#1074#1080#1089#1094#1077#1085#1090#1088' ?'
          Width = 108
        end>
    end
  end
  object magtable: TmySQLTable
    Database = dm.myBase
    TableName = 'magazin'
    Left = 72
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = magtable
    Left = 120
    Top = 88
  end
end
