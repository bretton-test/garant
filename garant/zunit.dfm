object zform: Tzform
  Left = 386
  Top = 110
  BorderStyle = bsToolWindow
  Caption = 'zform'
  ClientHeight = 601
  ClientWidth = 505
  Color = clMoneyGreen
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
  object Label3: TLabel
    Left = 208
    Top = 4
    Width = 61
    Height = 20
    Caption = #1082#1083#1080#1077#1085#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 30
    Width = 57
    Height = 20
    Caption = #1060'.'#1048'.'#1054'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 34
    Top = 60
    Width = 52
    Height = 20
    Caption = #1072#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 9
    Top = 88
    Width = 78
    Height = 20
    Caption = #1090#1077#1083#1077#1092#1086#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 10
    Top = 127
    Width = 137
    Height = 20
    Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072#1103#1074#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 17
    Top = 184
    Width = 73
    Height = 20
    Caption = #1080#1079#1076#1077#1083#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 216
    Width = 84
    Height = 20
    Caption = #1074#1086#1076#1080#1090#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 17
    Top = 248
    Width = 75
    Height = 20
    Caption = #1087#1086#1076#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 17
    Top = 280
    Width = 223
    Height = 20
    Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1087#1086#1076#1084#1077#1085#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object clientname: TDBEditEh
    Left = 95
    Top = 26
    Width = 370
    Height = 22
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Flat = True
    MaxLength = 45
    ParentFont = False
    TabOrder = 0
    Visible = True
    OnKeyDown = clientnameKeyDown
  end
  object clientadr: TDBEditEh
    Left = 95
    Top = 55
    Width = 370
    Height = 22
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Flat = True
    MaxLength = 45
    ParentFont = False
    TabOrder = 1
    Visible = True
    OnKeyDown = clientadrKeyDown
  end
  object clienttel: TDBEditEh
    Left = 94
    Top = 84
    Width = 178
    Height = 22
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Flat = True
    MaxLength = 50
    ParentFont = False
    TabOrder = 2
    Visible = True
    OnKeyDown = clienttelKeyDown
  end
  object primedit: TDBEditEh
    Left = 11
    Top = 152
    Width = 454
    Height = 22
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Flat = True
    MaxLength = 100
    ParentFont = False
    TabOrder = 3
    Visible = True
    OnKeyDown = primeditKeyDown
  end
  object clientgrid: TDBGridEh
    Left = 0
    Top = 344
    Width = 494
    Height = 217
    AutoFitColWidths = True
    Ctl3D = False
    DataSource = DataSource3
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = clientgridDblClick
    OnKeyDown = clientgridKeyDown
  end
  object saveB: TBitBtn
    Left = 104
    Top = 568
    Width = 273
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1088#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100
    TabOrder = 5
    OnClick = saveBClick
  end
  object vodbox: TDBLookupComboboxEh
    Left = 112
    Top = 216
    Width = 241
    Height = 24
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'id'
    ListField = 'name'
    ListSource = DataSource2
    ParentFont = False
    TabOrder = 6
    Visible = True
    OnKeyDown = vodboxKeyDown
  end
  object podmena: TDBEditEh
    Left = 107
    Top = 248
    Width = 358
    Height = 22
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Flat = True
    MaxLength = 50
    ParentFont = False
    TabOrder = 7
    Visible = True
    OnKeyDown = podmenaKeyDown
  end
  object podmenasn: TDBEditEh
    Left = 107
    Top = 304
    Width = 358
    Height = 22
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Flat = True
    MaxLength = 50
    ParentFont = False
    TabOrder = 8
    Visible = True
    OnKeyDown = podmenasnKeyDown
  end
  object GroupBox1: TGroupBox
    Left = 96
    Top = 177
    Width = 401
    Height = 33
    TabOrder = 9
    object RadioButton1: TRadioButton
      Left = 8
      Top = 10
      Width = 113
      Height = 17
      Caption = #1090#1077#1083#1077#1074#1080#1079#1086#1088
      TabOrder = 0
      OnClick = RadioButton1Click
      OnKeyDown = RadioButton3KeyDown
    end
    object RadioButton2: TRadioButton
      Left = 87
      Top = 10
      Width = 90
      Height = 17
      Caption = #1093#1086#1083#1086#1076#1080#1083#1100#1085#1080#1082
      TabOrder = 1
      OnClick = RadioButton1Click
      OnKeyDown = RadioButton3KeyDown
    end
    object RadioButton3: TRadioButton
      Left = 176
      Top = 10
      Width = 129
      Height = 17
      Caption = #1089#1090#1080#1088#1072#1083#1100#1085#1072#1103' '#1084#1072#1096#1080#1085#1072
      TabOrder = 2
      OnClick = RadioButton1Click
      OnKeyDown = RadioButton3KeyDown
    end
  end
  object ClientQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT * FROM garant.customer where id>0 and LOWER(name) like :n' +
        'ame')
    Left = 309
    Top = 380
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end>
  end
  object DataSource3: TDataSource
    DataSet = ClientQ
    Left = 373
    Top = 372
  end
  object findclQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select id from customer where'
      'lower(name) like :name '
      'and lower(adres) like :adr')
    Left = 173
    Top = 364
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'adr'
        ParamType = ptUnknown
      end>
  end
  object newclQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into customer (name,adres,tel)'
      'values (:name,:adr,:tel) ')
    Left = 205
    Top = 364
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'adr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tel'
        ParamType = ptUnknown
      end>
  end
  object insertZ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into garant.zayavka (magid,userid,clientid,data,comment,'
      'tip,driver,podmena,podmsn)'
      'values (:magid,:userid,:clientid,:data,:comment,'
      ':tip,:driver,:podmena,:podmsn)'
      ' ')
    Left = 264
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'magid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'userid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'comment'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tip'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'driver'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'podmena'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'podmsn'
        ParamType = ptUnknown
      end>
  end
  object tipTable: TmySQLTable
    Database = dm.myBase
    TableName = 'tip'
    Left = 264
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = tipTable
    Left = 296
    Top = 312
  end
  object vodq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT * FROM users  where prof=4')
    Left = 352
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = vodq
    Left = 384
    Top = 208
  end
end
