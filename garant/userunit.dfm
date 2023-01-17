object userform: Tuserform
  Left = 362
  Top = 195
  BorderStyle = bsDialog
  Caption = #1089#1087#1088#1074#1086#1095#1085#1080#1082' '#1087#1077#1088#1089#1086#1085#1072#1083#1072
  ClientHeight = 423
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF006666
    6666666666666666666666666666666666666666666666666666666666660000
    00000000000000000000000000000000000000000000000000000000000000FF
    FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
    0000FF0000FF0000FF000000FF0000FF0000FF0000FF0000FF000000FF0000FF
    FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
    0000FF0000FF0000FF000000FF0000FF0000FF0000FF0000FF000000FF0000FF
    FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
    0000FF0000FF0000FF000000FF0000FF0000FF0000FF0000FF000000FF0000FF
    FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
    0000FF0000FF0000FF000000FF0000FF0000FF0000FF0000FF000000FF0000FF
    FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CC
    CCCCCCCCCCCCCCCCCCCCCCCCCC0000CCCCCCCCCCCCCCCCCCCCCCCCCCCC000088
    88CCCCCCCCCCCCCCCCCCCC888800008888CCCCCCCCCCCCCCCCCCCC8888000000
    0000000000000000000000000000000000000000000000000000000000006666
    6666666666666666666666666666666666666666666666666666666666666666
    6666666666666666666666666666666666666666666666666666666666660000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGridEh
    Left = 0
    Top = 0
    Width = 620
    Height = 369
    Align = alTop
    DataSource = DataSource1
    Flat = True
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
  object BitBtn1: TBitBtn
    Left = 16
    Top = 384
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 384
    Width = 97
    Height = 25
    Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 216
    Top = 384
    Width = 75
    Height = 25
    Caption = #1091#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object SpeedForm1: TSpeedForm
    Left = 136
    Top = 96
    Width = 417
    Height = 129
    Caption = #1074#1074#1086#1076' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    TabOrder = 4
    BorderStyle = bsToolWindow
    object profbox: TDBLookupComboboxEh
      Left = 272
      Top = 16
      Width = 121
      Height = 19
      EditButtons = <>
      Flat = True
      KeyField = 'id'
      ListField = 'name'
      ListFieldIndex = 1
      ListSource = DataSource2
      TabOrder = 0
      Visible = True
    end
    object nameEdit: TEdit
      Left = 16
      Top = 16
      Width = 225
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 216
      Top = 64
      Width = 75
      Height = 25
      Caption = #1044#1072
      ModalResult = 1
      TabOrder = 2
    end
    object Button2: TButton
      Left = 320
      Top = 64
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 3
    end
    object visChek: TCheckBox
      Left = 16
      Top = 64
      Width = 105
      Height = 17
      Caption = #1091#1078#1077' '#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090
      TabOrder = 4
    end
  end
  object Button3: TButton
    Left = 304
    Top = 384
    Width = 75
    Height = 25
    Caption = #1048#1089#1090#1086#1088#1080#1103
    TabOrder = 5
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = userquery
    Left = 56
    Top = 80
  end
  object userquery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT u.id,u.name,p.name,u.prof,u.visible FROM users u,profile ' +
        'p'
      'where p.id=u.prof')
    Left = 16
    Top = 88
    object userqueryname: TStringField
      DisplayLabel = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      DisplayWidth = 45
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object userqueryprof: TStringField
      DisplayLabel = #1087#1088#1086#1092#1080#1083#1100
      DisplayWidth = 26
      FieldName = 'name_1'
      Required = True
      Size = 45
    end
    object userqueryid: TAutoIncField
      FieldName = 'id'
      Visible = False
    end
    object userqueryprof2: TIntegerField
      DisplayWidth = 10
      FieldName = 'prof'
      Required = True
      Visible = False
    end
    object userqueryvisible: TSmallintField
      DisplayLabel = #1088#1072#1073#1086#1090#1072#1077#1090
      FieldName = 'visible'
      Required = True
    end
  end
  object insQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into users (name,prof) values (:name,:prof)')
    Left = 16
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'prof'
        ParamType = ptUnknown
      end>
  end
  object delQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'delete from users where id=:id')
    Left = 16
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object updQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update users set name=:name,prof=:prof,visible=:vis'
      'where id=:id')
    Left = 16
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'prof'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'vis'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object proftable: TmySQLTable
    Database = dm.myBase
    ReadOnly = True
    TableName = 'profile'
    Left = 16
    Top = 288
    object proftableid: TAutoIncField
      FieldName = 'id'
    end
    object proftablename: TStringField
      FieldName = 'name'
      Size = 45
    end
  end
  object DataSource2: TDataSource
    DataSet = proftable
    Left = 64
    Top = 288
  end
end
