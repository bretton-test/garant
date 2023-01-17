object tipform: Ttipform
  Left = 284
  Top = 168
  BorderStyle = bsToolWindow
  Caption = #1082#1072#1090#1077#1075#1086#1088#1080#1080' '#1090#1086#1074#1072#1088#1086#1074
  ClientHeight = 375
  ClientWidth = 615
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 13
    Caption = #1082#1072#1090#1077#1075#1086#1088#1080#1080' '#1090#1086#1074#1072#1088#1086#1074
  end
  object Label2: TLabel
    Left = 336
    Top = 8
    Width = 73
    Height = 13
    Caption = #1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1103
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 24
    Width = 313
    Height = 289
    AutoFitColWidths = True
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
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 320
    Width = 222
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Hints.Strings = (
      'First record'
      'Prior record'
      'Next record'
      'Last record'
      #1076#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      #1091#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      #1089#1086#1093#1088#1072#1085#1080#1090#1100
      #1086#1090#1084#1077#1085#1080#1090#1100
      #1086#1073#1085#1086#1074#1080#1090#1100)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object DBGridEh2: TDBGridEh
    Left = 336
    Top = 24
    Width = 248
    Height = 289
    DataSource = DataSource2
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator2: TDBNavigator
    Left = 352
    Top = 320
    Width = 222
    Height = 25
    DataSource = DataSource2
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Hints.Strings = (
      'First record'
      'Prior record'
      'Next record'
      'Last record'
      #1076#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      #1091#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      #1089#1086#1093#1088#1072#1085#1080#1090#1100
      #1086#1090#1084#1077#1085#1080#1090#1100
      #1086#1073#1085#1086#1074#1080#1090#1100)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object tipTable: TmySQLTable
    Database = dm.myBase
    BeforePost = tipTableBeforePost
    BeforeDelete = tipTableBeforeDelete
    AfterScroll = tipTableAfterScroll
    TableName = 'tip'
    Left = 32
    Top = 120
    object tipTableid: TAutoIncField
      FieldName = 'id'
      Visible = False
    end
    object tipTablename: TStringField
      FieldName = 'name'
      Size = 45
    end
  end
  object DataSource1: TDataSource
    DataSet = tipTable
    Left = 72
    Top = 120
  end
  object updTipQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update tovar set tip=0 where tip=:tip')
    Left = 120
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tip'
        ParamType = ptUnknown
      end>
  end
  object complTable: TmySQLTable
    Database = dm.myBase
    IndexFieldNames = 'tip'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'complect'
    Left = 376
    Top = 32
    object complTableid: TAutoIncField
      FieldName = 'id'
      Visible = False
    end
    object complTabletip: TIntegerField
      FieldName = 'tip'
      Visible = False
    end
    object complTablename: TStringField
      FieldName = 'name'
      Size = 45
    end
  end
  object DataSource2: TDataSource
    DataSet = complTable
    Left = 408
    Top = 32
  end
end
