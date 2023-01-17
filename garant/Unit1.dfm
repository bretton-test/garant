object mainform: Tmainform
  Left = 331
  Top = 139
  Width = 696
  Height = 480
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000888
    8888888888888888888888888888000000000000000000000000000000080F88
    88888888888888888888888888080F7F7F7F7F7F7F7F7F7F7F7F7F7F78080FF7
    F7F788888888888888F7F7F7F8080F7F7F70000000000000087F7F7F78080FF7
    F7F0FFFFFFFFFFFF08F7F7F7F8080F7F7F70FFFFFFFFFFFF087F7F7F78080FF7
    F000FFFFFFFFFFFF08F7F7F7F8080F7F70F0FFFFFFFFFFFF087F7F7F78080FF7
    F0F0FFFFFFFFFFFF08F7F7F7F8080F7000F0CCCCCC070707087F7F7F78080FF0
    F0F000000000000007F7F7F7F8080F70F0FFFFFFFFFFFF087F7F7F7F78080FF0
    F0CCCCCC07070708F7F7F7F7F8080F70F00000000000000F7F7F7F7F78080FF0
    FFFFFFFFFFFF08F7F7F7F7F7F8080F70CCCCCC070707087F7F7F7F7F78080FF0
    00000000000007F7F7F7F7F7F8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFF080000
    00000000000000000000000000080F7F7F7F7F7F7F7F7F7F7F7F7F7F7F080F00
    07F000F70007F7F7F7F7F7F7F7080FFFFFFFFFFFFFFFFFFFFFFFFFFFFF080000
    00000000000000000000000000080CCCCCCCCCCCCCCCCCCCCCCC070707080000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFF8000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFF}
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 88
      Height = 16
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103' ->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 98
      Top = 4
      Width = 97
      Height = 25
      Caption = #1055#1088#1080#1105#1084' '#1090#1086#1074#1072#1088#1072
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button3: TButton
      Left = 196
      Top = 4
      Width = 107
      Height = 25
      Caption = #1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1074' '#1057#1062
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 305
      Top = 4
      Width = 94
      Height = 25
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1080#1079' '#1057#1062
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 400
      Top = 4
      Width = 175
      Height = 25
      Caption = #1042#1077#1088#1085#1091#1090#1100' '#1090#1086#1074#1072#1088'.'#1047#1072#1082#1088#1099#1090#1100' '#1088#1077#1084#1086#1085#1090
      TabOrder = 3
      OnClick = Button5Click
    end
    object kbtButton: TButton
      Left = 576
      Top = 4
      Width = 81
      Height = 25
      Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#1050#1041#1058
      TabOrder = 4
      Visible = False
      OnClick = kbtButtonClick
    end
  end
  object dateform: TSpeedForm
    Left = 20
    Top = 223
    Width = 312
    Height = 143
    Caption = #1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1079#1072' '#1095#1080#1089#1083#1086' ?'
    TabOrder = 3
    ParentColor = False
    Color = clMoneyGreen
    object edata: TDateTimePicker
      Left = 16
      Top = 8
      Width = 137
      Height = 21
      Date = 39127.010802222220000000
      Time = 39127.010802222220000000
      DateFormat = dfLong
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 208
      Top = 88
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkOK
    end
    object servbox: TDBLookupComboboxEh
      Left = 15
      Top = 88
      Width = 153
      Height = 21
      EditButtons = <>
      KeyField = 'id'
      ListField = 'name'
      ListSource = DataSource3
      TabOrder = 2
      Visible = True
    end
  end
  object passeditform: TSpeedForm
    Left = 256
    Top = 249
    Width = 369
    Height = 188
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1072#1088#1086#1083#1103
    TabOrder = 2
    ParentColor = False
    Color = clMoneyGreen
    object Label5: TLabel
      Left = 40
      Top = 54
      Width = 71
      Height = 13
      Caption = #1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
    end
    object Label6: TLabel
      Left = 40
      Top = 8
      Width = 71
      Height = 13
      Caption = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    end
    object Label7: TLabel
      Left = 40
      Top = 93
      Width = 42
      Height = 13
      Caption = #1077#1097#1105' '#1088#1072#1079
    end
    object oldpass: TDBEditEh
      Left = 40
      Top = 71
      Width = 265
      Height = 21
      EditButtons = <>
      PasswordChar = '*'
      TabOrder = 0
      Visible = True
    end
    object newpass: TDBEditEh
      Left = 40
      Top = 107
      Width = 265
      Height = 21
      EditButtons = <>
      PasswordChar = '*'
      TabOrder = 1
      Visible = True
    end
    object BitBtn5: TBitBtn
      Left = 184
      Top = 134
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 278
      Top = 133
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 3
    end
    object nameed: TDBEditEh
      Left = 39
      Top = 26
      Width = 267
      Height = 21
      EditButtons = <>
      ReadOnly = True
      TabOrder = 4
      Visible = True
    end
  end
  object vozvDial: TSpeedForm
    Left = 104
    Top = 272
    Width = 409
    Height = 148
    Caption = #1086#1090#1095#1077#1090' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1091' '#1090#1086#1074#1072#1088#1072
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    object Label4: TLabel
      Left = 26
      Top = 31
      Width = 8
      Height = 20
      Caption = 'c'
    end
    object Label8: TLabel
      Left = 200
      Top = 32
      Width = 18
      Height = 20
      Caption = #1087#1086
    end
    object BitBtn3: TBitBtn
      Left = 176
      Top = 88
      Width = 81
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn4: TBitBtn
      Left = 280
      Top = 88
      Width = 89
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
    object kd: TDBDateTimeEditEh
      Left = 248
      Top = 25
      Width = 121
      Height = 26
      Ctl3D = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Flat = True
      Kind = dtkDateEh
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Visible = True
    end
    object nd: TDBDateTimeEditEh
      Left = 48
      Top = 23
      Width = 121
      Height = 26
      Ctl3D = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Flat = True
      Kind = dtkDateEh
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Visible = True
    end
  end
  object logform: TSpeedForm
    Left = 96
    Top = 48
    Width = 465
    Height = 169
    Caption = 'logform'
    TabOrder = 1
    ParentColor = False
    Color = clMoneyGreen
    object Label1: TLabel
      Left = 32
      Top = 6
      Width = 11
      Height = 19
      Caption = #1071
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 38
      Width = 83
      Height = 19
      Caption = #1087#1086' '#1072#1076#1088#1077#1089#1091
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object passlabel: TLabel
      Left = 64
      Top = 72
      Width = 61
      Height = 19
      Caption = #1055#1072#1088#1086#1083#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Button1: TButton
      Left = 280
      Top = 96
      Width = 75
      Height = 25
      Caption = #1074#1089#1105' '#1074#1077#1088#1085#1086
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 368
      Top = 96
      Width = 75
      Height = 25
      Caption = #1074#1099#1093#1086#1076
      ModalResult = 2
      TabOrder = 1
    end
    object namebox: TDBLookupComboboxEh
      Left = 64
      Top = 6
      Width = 377
      Height = 24
      DropDownBox.Rows = 20
      EditButtons = <>
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Flat = True
      KeyField = 'name'
      ListField = 'name'
      ListSource = DataSource2
      ParentFont = False
      TabOrder = 2
      Visible = True
      OnChange = nameboxChange
    end
    object magbox: TDBLookupComboboxEh
      Left = 128
      Top = 38
      Width = 313
      Height = 25
      TabStop = False
      EditButtons = <>
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Flat = True
      KeyField = 'id'
      ListField = 'name'
      ListSource = DataSource1
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Visible = True
    end
    object passedit: TDBEditEh
      Left = 64
      Top = 96
      Width = 137
      Height = 24
      EditButtons = <>
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Flat = True
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
      Visible = False
      OnKeyDown = passeditKeyDown
    end
  end
  object userdb: TmySQLTable
    Database = dm.myBase
    Filter = '(prof<>4) and (visible=1)'
    Filtered = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'prof'
        DataType = ftInteger
      end
      item
        Name = 'password'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'visible'
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'userdbIndex1'
        Fields = 'name'
        Options = [ixCaseInsensitive]
      end>
    ReadOnly = True
    StoreDefs = True
    TableName = 'users'
    Left = 44
    Top = 71
    object userdbid: TAutoIncField
      FieldName = 'id'
    end
    object userdbname: TStringField
      FieldName = 'name'
      Size = 45
    end
    object userdbprof: TIntegerField
      FieldName = 'prof'
    end
    object userdbpassword: TStringField
      FieldName = 'password'
      Size = 45
    end
    object userdbvisible: TSmallintField
      FieldName = 'visible'
    end
  end
  object DataSource1: TDataSource
    DataSet = magdb
    Left = 88
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = userdb
    Left = 48
    Top = 104
  end
  object MainMenu1: TMainMenu
    OnChange = MainMenu1Change
    Left = 320
    Top = 80
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
      object N2: TMenuItem
        Caption = #1087#1077#1088#1089#1086#1085#1072#1083
        OnClick = N2Click
      end
      object N28: TMenuItem
        Caption = #1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090
        OnClick = N28Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1087#1086#1082#1091#1087#1072#1090#1077#1083#1080
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1090#1086#1074#1072#1088#1099
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N25: TMenuItem
        Caption = #1090#1080#1087' '#1090#1086#1074#1072#1088#1086#1074
        OnClick = N25Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = #1084#1077#1089#1090#1072' '#1093#1088#1072#1085#1077#1085#1080#1103' '#1090#1086#1074#1072#1088#1072
        OnClick = N8Click
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object N27: TMenuItem
        Caption = #1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
        OnClick = N27Click
      end
    end
    object N9: TMenuItem
      Caption = #1078#1091#1088#1085#1072#1083
      object N42: TMenuItem
        Caption = #1078#1091#1088#1085#1072#1083' '#1089#1086#1073#1099#1090#1080#1081
        OnClick = N42Click
      end
      object N11: TMenuItem
        Caption = #1074#1089#1077' '#1088#1077#1084#1086#1085#1090#1099
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object N10: TMenuItem
        Caption = #1090#1086#1074#1072#1088' '#1074' '#1088#1077#1084#1086#1085#1090#1077' ('#1074#1089#1077' '#1084#1072#1075#1072#1079#1080#1085#1099')'
        OnClick = BitBtn2Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N14: TMenuItem
        Caption = #1090#1086#1074#1072#1088' '#1074' '#1089#1077#1088#1074#1080#1089#1085#1086#1084' '#1094#1077#1085#1090#1088#1077' ('#1074#1089#1077' '#1084#1072#1075#1072#1079#1080#1085#1099') '
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = #1090#1086#1074#1072#1088' '#1074' '#1089#1077#1088#1074#1080#1089#1085#1086#1084' '#1094#1077#1085#1090#1088#1077' '
        OnClick = N15Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object N17: TMenuItem
        Caption = #1090#1086#1074#1072#1088' '#1076#1083#1103' '#1074#1086#1079#1074#1088#1072#1090#1072' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102
        OnClick = N17Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object N19: TMenuItem
        Caption = #1090#1086#1074#1072#1088' '#1087#1086#1089#1083#1077' '#1088#1077#1084#1086#1085#1090#1072'('#1074#1089#1077' '#1084#1072#1075#1072#1079#1080#1085#1099')'
        OnClick = N19Click
      end
      object N20: TMenuItem
        Caption = #1090#1086#1074#1072#1088' '#1087#1086#1089#1083#1077' '#1088#1077#1084#1086#1085#1090#1072
        OnClick = N20Click
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object N22: TMenuItem
        Caption = #1090#1086#1074#1072#1088' - '#1082#1086#1090#1086#1088#1099#1081' '#1091#1078#1077' '#1074#1077#1088#1085#1091#1083#1080'('#1074#1089#1077' '#1084#1072#1075#1072#1079#1080#1085#1099') '
        OnClick = N22Click
      end
      object N23: TMenuItem
        Caption = #1090#1086#1074#1072#1088' - '#1082#1086#1090#1086#1088#1099#1081' '#1091#1078#1077' '#1074#1077#1088#1085#1091#1083#1080
        OnClick = N23Click
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object N34: TMenuItem
        Caption = #1089#1086#1073#1099#1090#1080#1103' '#1087#1086' '#1074#1089#1077#1084' '#1084#1072#1075#1072#1079#1080#1085#1072#1084
        OnClick = N34Click
      end
      object N33: TMenuItem
        Caption = #1089#1086#1073#1099#1090#1080#1103
        OnClick = N33Click
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object N44: TMenuItem
        Caption = #1047#1072#1103#1074#1082#1080' '#1085#1072' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1091
        OnClick = N44Click
      end
    end
    object N29: TMenuItem
      Caption = #1086#1087#1077#1088#1072#1094#1080#1080
      object N30: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100' '#1090#1088'.'#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074' '#1057#1062' '
        OnClick = N30Click
      end
      object N38: TMenuItem
        Caption = '-'
      end
      object N37: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100' '#1090#1088'.'#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1080#1079' '#1057#1062'.'
        OnClick = N37Click
      end
      object N31: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Email1: TMenuItem
        Caption = 'E-mail '#1074' '#1089#1077#1088#1074#1080#1089#1085#1099#1081' '#1094#1077#1085#1090#1088
        Visible = False
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object N36: TMenuItem
        Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
        OnClick = N36Click
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object N40: TMenuItem
        Caption = #1042#1086#1079#1074#1088#1072#1090' '#1090#1086#1074#1072#1088#1072' '#1082#1083#1080#1077#1085#1090#1086#1084
        OnClick = N40Click
      end
      object N41: TMenuItem
        Caption = '-'
      end
      object N45: TMenuItem
        Caption = #1086#1090#1095#1077#1090' '#1087#1086' '#1090#1086#1074#1072#1088#1091
        OnClick = N45Click
      end
      object N46: TMenuItem
        Caption = #1086#1090#1095#1077#1090' '#1087#1086' '#1074#1086#1079#1074#1088#1072#1090#1091
        OnClick = N46Click
      end
      object N49: TMenuItem
        Caption = #1086#1090#1095#1077#1090' '#1087#1086' '#1076#1086#1083#1075#1080#1084' '#1088#1077#1084#1086#1085#1090#1072#1084
        OnClick = N49Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object N48: TMenuItem
        Caption = #1086#1073#1088#1072#1090#1080#1090#1100' '#1074#1085#1080#1084#1072#1085#1080#1077
        OnClick = N48Click
      end
    end
  end
  object magdb: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select * from magazin where servis=0')
    Left = 88
    Top = 72
    object magdbid: TAutoIncField
      FieldName = 'id'
    end
    object magdbname: TStringField
      FieldName = 'name'
      Size = 45
    end
    object magdbadres: TStringField
      FieldName = 'adres'
      Size = 45
    end
    object magdbtel: TStringField
      FieldName = 'tel'
      Size = 45
    end
    object magdbservis: TSmallintField
      FieldName = 'servis'
    end
    object magdbemail: TStringField
      FieldName = 'email'
      Size = 45
    end
  end
  object allservis: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT * FROM garant.magazin  where servis=1')
    Left = 344
    Top = 368
  end
  object DataSource3: TDataSource
    DataSet = allservis
    Left = 384
    Top = 368
  end
end
