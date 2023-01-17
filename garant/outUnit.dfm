object outform: Toutform
  Left = 256
  Top = 141
  Width = 870
  Height = 500
  Caption = #1074#1099#1076#1072#1095#1072' '#1090#1086#1074#1072#1088#1072' '#1082#1083#1080#1077#1085#1090#1091
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 64
    Top = 8
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'name'
    DataSource = ds
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 35
    Height = 13
    Caption = #1082#1083#1080#1077#1085#1090
  end
  object DBText2: TDBText
    Left = 64
    Top = 25
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'tovarname'
    DataSource = ds
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 26
    Width = 29
    Height = 13
    Caption = #1090#1086#1074#1072#1088
  end
  object DBText3: TDBText
    Left = 64
    Top = 41
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'serialnum'
    DataSource = ds
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 42
    Width = 32
    Height = 13
    Caption = #1089#1077#1088'.'#8470
  end
  object Label4: TLabel
    Left = 10
    Top = 58
    Width = 37
    Height = 13
    Caption = #1076#1077#1092#1077#1082#1090
  end
  object DBText4: TDBText
    Left = 64
    Top = 57
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'comment'
    DataSource = ds
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 10
    Top = 74
    Width = 139
    Height = 13
    Caption = #1076#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1088#1077#1084#1086#1085#1090
  end
  object DBText5: TDBText
    Left = 160
    Top = 72
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'remdata'
    DataSource = ds
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 64
    Top = 96
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'podmena'
    DataSource = ds
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 10
    Top = 98
    Width = 44
    Height = 13
    Caption = #1087#1086#1076#1084#1077#1085#1072
  end
  object DBText7: TDBText
    Left = 96
    Top = 112
    Width = 53
    Height = 16
    AutoSize = True
    DataField = 'pserialn'
    DataSource = ds
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 10
    Top = 114
    Width = 79
    Height = 13
    Caption = #1087#1086#1076#1084#1077#1085#1072' '#1089#1077#1088'.'#8470
  end
  object Panel1: TPanel
    Left = 0
    Top = 272
    Width = 862
    Height = 201
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object ok: TBitBtn
      Left = 728
      Top = 168
      Width = 105
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = okClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 134
    Width = 862
    Height = 138
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 0
      Width = 862
      Height = 138
      Align = alClient
      AutoFitColWidths = True
      DataSource = DataSource1
      Flat = False
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
      TitleLines = 3
      UseMultiTitle = True
    end
  end
  object tovout: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT t.id ,t.name tovarname,t.serialnum,r.comment,'
      't.mesto,'
      
        'c.name,c.tel,r.data remdata,p.name podmena,p.serialnum pserialn,' +
        'r.id remontid,'
      'r.podmena podmenaid'
      
        'FROM garant.tovar t,garant.remont r,garant.customer c,garant.tov' +
        'ar p'
      'where t.id=r.tovar'
      'and r.clientid=c.id'
      'and p.id=r.podmena'
      'and r.id=:id')
    Left = 16
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object tovarname: TStringField
      DisplayLabel = #1090#1086#1074#1072#1088
      FieldName = 'tovarname'
      Required = True
      Size = 45
    end
    object serialnum: TStringField
      DisplayLabel = #1089#1077#1088'.'#8470
      FieldName = 'serialnum'
      Required = True
      Size = 45
    end
    object mesto: TStringField
      DisplayLabel = #1084#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
      FieldName = 'mesto'
      Required = True
      Size = 45
    end
    object name: TStringField
      DisplayLabel = #1082#1083#1080#1077#1085#1090
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object tel: TStringField
      DisplayLabel = #1090#1077#1083#1077#1092#1086#1085
      FieldName = 'tel'
    end
    object podmena: TStringField
      DisplayLabel = #1087#1086#1076#1084#1077#1085#1072
      FieldName = 'podmena'
      Required = True
      Size = 45
    end
    object tovoutremontid: TAutoIncField
      FieldName = 'remontid'
      Visible = False
    end
    object tovoutcomment: TStringField
      FieldName = 'comment'
      Required = True
      Size = 100
    end
    object tovoutpserialn: TStringField
      FieldName = 'pserialn'
      Required = True
      Size = 45
    end
    object tovoutid: TAutoIncField
      FieldName = 'id'
    end
    object tovoutpodmenaid: TIntegerField
      FieldName = 'podmenaid'
      Required = True
    end
    object tovoutremdata: TDateTimeField
      FieldName = 'remdata'
      Required = True
    end
  end
  object ds: TDataSource
    DataSet = tovout
    Left = 56
    Top = 384
  end
  object remont: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT v.data,m.name,v.comment,'
      'case v.close when 1 then '#39#1090#1086#1074#1072#1088' '#1086#1090#1088#1077#1084#1086#1085#1090#1080#1088#1086#1074#1072#1085#39
      'when 0 then '#39#1088#1077#1084#1086#1085#1090' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#39' end result'
      'FROM garant.vozvrat v,garant.magazin m'
      'where v.scenter=m.id'
      'and v.remontid=:remontid')
    Left = 128
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'remontid'
        ParamType = ptUnknown
      end>
    object remontdata: TDateTimeField
      DisplayLabel = #1074#1086#1079#1074'. '#1080#1079' '#1057#1062
      FieldName = 'data'
      Required = True
    end
    object remontname: TStringField
      DisplayLabel = #1057#1062
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object remontcomment: TStringField
      FieldName = 'comment'
      Required = True
      Size = 45
    end
    object remontresult: TStringField
      FieldName = 'result'
    end
  end
  object DataSource1: TDataSource
    DataSet = remont
    Left = 160
    Top = 384
  end
  object insout: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into tovout (remontid,data,magid,userid)'
      'values (:remontid,:data,:magid,:userid)')
    Left = 320
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'magid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'userid'
        ParamType = ptUnknown
      end>
  end
  object updUse: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update tovar set inuse=0,'
      'mesto='#39'-'#39'  where id=:tovarid')
    Left = 352
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tovarid'
        ParamType = ptUnknown
      end>
  end
  object seloutid: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select id from tovout where remontid=:remontid and data=:data')
    Left = 400
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end>
    object seloutidid: TAutoIncField
      FieldName = 'id'
    end
  end
  object updPodmena: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update podmena set endid=:endid where remontid=:remontid')
    Left = 448
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'endid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'remontid'
        ParamType = ptUnknown
      end>
  end
  object updRemont: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update remont set close=1 where id=:id')
    Left = 520
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
