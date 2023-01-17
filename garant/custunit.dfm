object custform: Tcustform
  Left = 292
  Top = 146
  BorderStyle = bsToolWindow
  Caption = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 473
  ClientWidth = 775
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 16
    Top = 416
    Width = 30
    Height = 13
    Caption = #1087#1086#1080#1089#1082
  end
  object Label5: TLabel
    Left = 65
    Top = 395
    Width = 20
    Height = 13
    Caption = #1080#1084#1103
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 393
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object DBGrid: TDBGridEh
      Left = 0
      Top = 0
      Width = 775
      Height = 393
      Align = alClient
      DataSource = DataSource1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridDblClick
      OnKeyDown = DBGridKeyDown
      Columns = <
        item
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Title.Caption = #1082#1086#1076
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'name'
          Footers = <>
          Title.Caption = #1080#1084#1103
          Width = 311
        end
        item
          EditButtons = <>
          FieldName = 'adres'
          Footers = <>
          Title.Caption = #1072#1076#1088#1077#1089
          Width = 219
        end
        item
          EditButtons = <>
          FieldName = 'tel'
          Footers = <>
          Title.Caption = #1090#1077#1083#1077#1092#1086#1085
          Width = 125
        end>
    end
  end
  object newbutton: TButton
    Left = 8
    Top = 440
    Width = 89
    Height = 25
    Caption = #1053#1086#1074#1099#1081' '#1082#1083#1080#1077#1085#1090
    TabOrder = 1
    OnClick = newbuttonClick
  end
  object edbutton: TButton
    Left = 120
    Top = 440
    Width = 97
    Height = 25
    Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = edbuttonClick
  end
  object namef: TEdit
    Left = 64
    Top = 408
    Width = 217
    Height = 21
    TabOrder = 4
    OnKeyDown = namefKeyDown
  end
  object adrfind: TEdit
    Left = 288
    Top = 408
    Width = 217
    Height = 21
    TabOrder = 5
    OnKeyDown = namefKeyDown
  end
  object SpeedForm1: TSpeedForm
    Left = 144
    Top = 48
    Width = 449
    Height = 217
    Caption = 'SpeedForm1'
    TabOrder = 3
    ParentColor = False
    Color = clMoneyGreen
    object Label1: TLabel
      Left = 16
      Top = 26
      Width = 20
      Height = 13
      Caption = #1080#1084#1103
    end
    object Label2: TLabel
      Left = 16
      Top = 69
      Width = 30
      Height = 13
      Caption = #1072#1076#1088#1077#1089
    end
    object Label3: TLabel
      Left = 16
      Top = 109
      Width = 43
      Height = 13
      Caption = #1090#1077#1083#1077#1092#1086#1085
    end
    object nameedit: TDBEditEh
      Left = 88
      Top = 24
      Width = 337
      Height = 19
      EditButtons = <>
      Flat = True
      TabOrder = 0
      Visible = True
      OnKeyDown = nameeditKeyDown
    end
    object adredit: TDBEditEh
      Left = 88
      Top = 64
      Width = 337
      Height = 19
      EditButtons = <>
      Flat = True
      TabOrder = 1
      Visible = True
      OnKeyDown = adreditKeyDown
    end
    object teledit: TDBEditEh
      Left = 88
      Top = 104
      Width = 337
      Height = 19
      EditButtons = <>
      Flat = True
      MaxLength = 50
      TabOrder = 2
      Visible = True
      OnKeyDown = teleditKeyDown
    end
    object Button1: TButton
      Left = 248
      Top = 160
      Width = 75
      Height = 25
      Caption = #1044#1072
      ModalResult = 1
      TabOrder = 3
    end
    object Button2: TButton
      Left = 352
      Top = 160
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = custQuery
    Left = 72
    Top = 88
  end
  object custQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select * from customer where upper(name) like upper(:name)'
      'and upper(adres) like upper(:adr)')
    Left = 32
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
        Value = '%'
      end
      item
        DataType = ftString
        Name = 'adr'
        ParamType = ptUnknown
        Value = '%'
      end>
    object custQueryid: TAutoIncField
      FieldName = 'id'
    end
    object custQueryname: TStringField
      FieldName = 'name'
      Size = 45
    end
    object custQueryadres: TStringField
      FieldName = 'adres'
      Size = 45
    end
    object custQuerytel: TStringField
      FieldName = 'tel'
    end
  end
  object inscustom: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into customer (name,adres,tel)'
      'values (:name,:adres,:tel)')
    Left = 32
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'adres'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tel'
        ParamType = ptUnknown
      end>
  end
  object updCust: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update customer set name=:name,adres=:adres,tel=:tel'
      'where id=:id')
    Left = 32
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'adres'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tel'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
