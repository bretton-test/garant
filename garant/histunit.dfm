object histform: Thistform
  Left = 262
  Top = 205
  Width = 836
  Height = 449
  BorderStyle = bsSizeToolWin
  Caption = 'histform'
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
    Width = 828
    Height = 368
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 826
      Height = 385
      Align = alTop
      AutoFitColWidths = True
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
      OnDrawColumnCell = DBGridEh1DrawColumnCell
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 368
    Width = 828
    Height = 54
    Align = alBottom
    TabOrder = 1
    Visible = False
    DesignSize = (
      828
      54)
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 47
      Height = 13
      Caption = #1076#1077#1081#1089#1090#1074#1080#1077
    end
    object Label2: TLabel
      Left = 480
      Top = 8
      Width = 88
      Height = 13
      Caption = #1085#1072#1087#1086#1084#1085#1080#1090#1100' '#1087#1086#1089#1083#1077
    end
    object newmemo: TDBEditEh
      Left = 8
      Top = 24
      Width = 465
      Height = 22
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Flat = True
      MaxLength = 99
      ParentFont = False
      TabOrder = 0
      Visible = True
    end
    object dateevent: TDBDateTimeEditEh
      Left = 480
      Top = 24
      Width = 121
      Height = 22
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Flat = True
      Kind = dtkDateEh
      ParentFont = False
      TabOrder = 1
      Visible = True
    end
    object BitBtn1: TBitBtn
      Left = 744
      Top = 23
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object warnbox: TCheckBox
      Left = 612
      Top = 24
      Width = 121
      Height = 17
      Caption = #1086#1073#1088#1072#1090#1080#1090#1100' '#1074#1085#1080#1084#1072#1085#1080#1077
      TabOrder = 3
    end
  end
  object histQuery1: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      '  SELECT  '#39#1087#1088#1080#1085#1103#1090' '#1074' '#1088#1077#1084#1086#1085#1090#39','
      '           m.name,u.name,'
      '           r.data,r.comment,'
      '           sc.name'
      '  FROM garant.remont r,'
      '        garant.magazin m,'
      '        garant.users u,'
      '        garant.magazin sc'
      'where m.id=r.magid'
      '      and u.id=r.userid'
      '      and sc.id=r.scenter'
      '      and r.tovar=:id'
      'union'
      ''
      'SELECT '#39#1086#1090#1087#1088#1072#1074#1083#1077#1085' '#1085#1072' '#1088#1077#1084#1086#1085#1090#39','
      '        m.name,u.name,s.data,'#39'-'#39',sc.name'
      ''
      'FROM garant.servis s,'
      '      garant.remont r,'
      '      garant.magazin m,'
      '      garant.users u,'
      '      garant.magazin sc'
      'where r.id=s.remontid'
      '        and m.id=s.magid'
      '        and u.id=s.userid'
      '        and sc.id=s.scenter'
      '      and r.tovar=:id'
      ''
      'union'
      'SELECT '#39#1074#1086#1079#1074#1088#1072#1090' '#1080#1079' '#1088#1077#1084#1086#1085#1090#1072#39','
      '        m.name,u.name,s.data,'
      '        case s.close when 1 then '#39#1088#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#39
      '                     when 0 then '#39#1090#1086#1074#1072#1088' '#1085#1077' '#1086#1090#1088#1077#1084#1086#1085#1090#1080#1088#1086#1074#1072#1085#39' end'
      '        ,sc.name'
      ''
      'FROM garant.vozvrat s,'
      '      garant.remont r,'
      '      garant.magazin m,'
      '      garant.users u,'
      '      garant.magazin sc'
      'where r.id=s.remontid'
      '        and m.id=s.magid'
      '        and u.id=s.userid'
      '        and sc.id=s.scenter'
      '      and r.tovar=:id'
      'union'
      ''
      'SELECT '#39#1086#1090#1076#1072#1085' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102#39','
      '        m.name,u.name,s.data,'
      '       '#39'-'#39
      '        ,'#39'-'#39
      ''
      'FROM garant.tovout s,'
      '      garant.remont r,'
      '      garant.magazin m,'
      '      garant.users u'
      ''
      'where r.id=s.remontid'
      '        and m.id=s.magid'
      '        and u.id=s.userid'
      '          and r.tovar=:id'
      'union'
      ''
      'SELECT '#39#1073#1099#1083' '#1074' '#1087#1086#1076#1084#1077#1085#1077#39',m.name,u.name,r.data,'
      'case p.endid  when 0 then concat('#39#1090#1086#1074#1072#1088' '#1091' '#1082#1083#1080#1077#1085#1090#1072'  '#39',t.mesto)'
      
        '                     else concat('#39#1074#1086#1079#1074#1088#1072#1097#1077#1085'  '#39',( SELECT cast(x.d' +
        'ata as char) from garant.tovout x where x.id=p.endid))  end'
      '        ,'#39'-'#39
      'FROM garant.podmena p,'
      '     garant.tovar t,'
      '      garant.remont r,'
      '      garant.users u,'
      '      garant.magazin m'
      'where p.tovarid=t.id'
      '      and r.id=p.remontid'
      '      and r.magid=m.id'
      '      and r.userid=u.id'
      'and t.id=:id'
      'union '
      'SELECT  '#39#1087#1088#1086#1076#1072#1085#39','
      '          s.mag,s.owner,'
      
        '           s.data,concat('#39#1094#1077#1085#1072': '#39',convert(s.price,char))  commen' +
        't,'
      '           '#39#39' name'
      '  FROM garant.sell s'
      ''
      'where s.tovar=:id'
      'order by data')
    Left = 24
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object DataSource1: TDataSource
    DataSet = histQuery1
    Left = 64
    Top = 40
  end
  object userhist1: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      '  SELECT  '#39#1087#1088#1080#1105#1084' '#1074' '#1088#1077#1084#1086#1085#1090#39','
      '           m.name,t.name,'
      '           r.data,r.comment,'
      '           sc.name'
      '  FROM garant.remont r,'
      '        garant.tovar t,'
      '        garant.magazin m,'
      '        garant.users u,'
      '        garant.magazin sc'
      'where m.id=r.magid'
      '      and u.id=r.userid'
      '      and sc.id=r.scenter'
      '      and t.id=r.tovar'
      '      and u.id=:user'
      ''
      'union'
      ''
      'SELECT '#39#1086#1090#1087#1088#1072#1074#1082#1072' '#1074' '#1057#1062#39','
      '        m.name,t.name,s.data,'#39'-'#39',sc.name'
      ''
      'FROM garant.servis s,'
      '      garant.remont r,'
      '      garant.magazin m,'
      '      garant.users u,'
      '      garant.magazin sc,'
      '      garant.tovar t'
      'where r.id=s.remontid'
      '        and m.id=s.magid'
      '        and u.id=s.userid'
      '        and sc.id=s.scenter'
      '        and t.id=r.tovar'
      '        and u.id=:user'
      'union'
      'SELECT '#39#1074#1086#1079#1074#1088#1072#1090' '#1080#1079' '#1057#1062#39','
      '        m.name,t.name,s.data,'
      '        case s.close when 1 then '#39#1088#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#39
      '                     when 0 then '#39#1088#1077#1084#1086#1085#1090' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#39' end'
      '        ,sc.name'
      ''
      'FROM garant.vozvrat s,'
      '      garant.remont r,'
      '      garant.magazin m,'
      '      garant.users u,'
      '      garant.magazin sc,'
      '      garant.tovar t'
      'where r.id=s.remontid'
      '        and m.id=s.magid'
      '        and u.id=s.userid'
      '        and sc.id=s.scenter'
      '        and t.id=r.tovar'
      '         and u.id=:user'
      'union'
      ''
      'SELECT '#39#1074#1086#1079#1074#1088#1072#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1102#39','
      '        m.name,t.name,s.data,'
      '       '#39'-'#39
      '        ,'#39'-'#39
      ''
      'FROM garant.tovout s,'
      '      garant.remont r,'
      '      garant.magazin m,'
      '      garant.users u,'
      '      garant.tovar t'
      ''
      'where r.id=s.remontid'
      '        and m.id=s.magid'
      '        and u.id=s.userid'
      '         and t.id=r.tovar'
      '         and u.id=:user'
      'order by data')
    Left = 24
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'user'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'user'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'user'
        ParamType = ptUnknown
      end>
  end
  object histQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT e.data,e.memo,u.name user,m.name mag,e.warn'
      'FROM garant.events e,garant.magazin m,garant.users u'
      'where m.id=e.mag'
      'and u.id=e.user'
      'and e.remont=:remontid'
      'union'
      ''
      
        'SELECT  s.data,concat('#39#1087#1088#1086#1076#1072#1085' '#1087#1086' '#1094#1077#1085#1077': '#39',convert(s.price,char)),' +
        's.owner,s.mag,null'
      'FROM garant.sell s'
      'where s.tovar=:tovarid'
      'order by data')
    Left = 112
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tovarid'
        ParamType = ptUnknown
      end>
    object histQuerydata: TDateField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'data'
      Required = True
    end
    object histQuerymemo: TStringField
      DisplayLabel = #1089#1086#1073#1099#1090#1080#1077
      FieldName = 'memo'
      Size = 100
    end
    object histQueryuser: TStringField
      DisplayLabel = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object histQuerymag: TStringField
      DisplayLabel = #1084#1072#1075#1072#1079#1080#1085
      FieldName = 'mag'
      Required = True
      Size = 45
    end
    object histQuerywarn: TWordField
      FieldName = 'warn'
      Visible = False
    end
  end
  object userhist: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT e.data,t.name,e.memo,u.name,m.name'
      'FROM garant.events e,'
      '      garant.magazin m,'
      '      garant.users u,'
      '       garant.tovar t'
      'where m.id=e.mag'
      'and u.id=e.user'
      'and t.id=e.remont'
      'and e.user=:user'
      'order by data')
    Left = 112
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user'
        ParamType = ptUnknown
      end>
  end
end
