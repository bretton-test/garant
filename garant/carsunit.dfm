object carsform: Tcarsform
  Left = 357
  Top = 205
  BorderStyle = bsToolWindow
  Caption = #1072#1074#1090#1086#1087#1072#1088#1082
  ClientHeight = 294
  ClientWidth = 560
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
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 8
    Width = 553
    Height = 241
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'model'
        Footers = <>
        Title.Caption = #1084#1072#1088#1082#1072','#1084#1086#1076#1077#1083#1100
        Width = 260
      end
      item
        EditButtons = <>
        FieldName = 'gosnomer'
        Footers = <>
        Title.Caption = #1075#1086#1089'.'#1085#1086#1084#1077#1088
        Width = 99
      end>
  end
  object carsTable: TmySQLTable
    Database = dm.myBase
    TableName = 'cars'
    Left = 16
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = carsTable
    Left = 48
    Top = 48
  end
end
