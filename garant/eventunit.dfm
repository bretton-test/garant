object eventform: Teventform
  Left = 293
  Top = 204
  Width = 870
  Height = 500
  Caption = #1086#1073#1088#1072#1090#1080#1090#1100' '#1074#1085#1080#1084#1072#1085#1080#1077
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
  object DBGrid: TDBGridEh
    Left = 0
    Top = 0
    Width = 862
    Height = 432
    Align = alClient
    AutoFitColWidths = True
    DataGrouping.GroupLevels = <>
    DataSource = DataSource3
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghColumnResize, dghColumnMove]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SortLocal = True
    STFilter.Local = True
    STFilter.Visible = True
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = Button3Click
    OnDrawColumnCell = DBGridDrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'rid'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1076#1086#1082
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'tovar'
        Footers = <>
        Title.Caption = #1090#1086#1074#1072#1088
        Title.TitleButton = True
        Width = 201
      end
      item
        EditButtons = <>
        FieldName = 'mesto'
        Footers = <>
        Title.Caption = #1084#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
        Title.TitleButton = True
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'edata'
        Footers = <>
        Title.Caption = #1076#1072#1090#1072' '#1089#1086#1073#1099#1090#1080#1103
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'memo'
        Footers = <>
        Width = 324
      end
      item
        EditButtons = <>
        FieldName = 'user'
        Footers = <>
        Title.Caption = #1072#1074#1090#1086#1088
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'mag'
        Footers = <>
        Title.Caption = #1084#1072#1075'.'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'inuse'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 862
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Button3: TButton
      Left = 8
      Top = 8
      Width = 83
      Height = 25
      Caption = #1048#1089#1090#1086#1088#1080#1103
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 96
      Top = 8
      Width = 105
      Height = 25
      Caption = #1086#1090#1082#1088#1099#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 208
      Top = 8
      Width = 97
      Height = 25
      Caption = #1079#1072#1082#1088#1099#1090#1100' '#1088#1077#1084#1086#1085#1090
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object eventQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'select distinct t.id,t.name tovar,t.mesto,date(e.data) edata,e.m' +
        'emo,u.name user,m.name mag,t.inuse,r.id rid'
      'from garant.events e'
      '    ,garant.users u,'
      '    garant.magazin m,'
      '    garant.tovar t,'
      '    garant.remont r,'
      'garant.vmaxevent v'
      ' where e.id=v.maxid '
      'and e.user=u.id'
      'and m.id=e.mag'
      'and t.id=e.remont'
      'and convert(e.sysevent,date)<=curdate()'
      'and r.tovar=t.id'
      'and t.inuse=1'
      'and r.magid=:mag'
      'and e.memo not like '#39#1080#1079#1084#1077#1085'%'#39
      'order by edata desc')
    Left = 16
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'mag'
        ParamType = ptUnknown
      end>
  end
  object DataSource3: TDataSource
    DataSet = mytable
    Left = 56
    Top = 16
  end
  object alleventQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'select distinct t.id,t.name tovar,t.mesto,date(e.data) edata,e.m' +
        'emo,u.name user,m.name mag,t.inuse,r.id rid'
      'from garant.events e'
      '    ,garant.users u,'
      '    garant.magazin m,'
      '    garant.tovar t,'
      '    garant.remont r,'
      ' garant.vmaxevent v'
      ' where e.id=v.maxid '
      'and e.user=u.id'
      'and m.id=e.mag'
      'and t.id=e.remont'
      'and convert(e.sysevent,date)<=curdate()'
      'and r.tovar=t.id'
      'and  t.inuse=1'
      'and e.memo not like '#39#1080#1079#1084#1077#1085'%'#39
      'order by edata desc')
    Left = 16
    Top = 56
  end
  object mytable: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverEh1
    ReadOnly = True
    Left = 200
    Top = 88
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = alleventQ
    Left = 152
    Top = 88
  end
  object jevent: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'select t.id,t.name tovar,t.mesto,date(e.data) edata,e.memo,u.nam' +
        'e user,m.name mag,r.id rid,'
      't.inuse'
      'from garant.events e'
      '    ,garant.users u,'
      '    garant.magazin m,'
      '    garant.tovar t,'
      '    garant.remont r'
      ' '
      ' where'
      'e.user=u.id'
      'and m.id=e.mag'
      'and t.id=e.remont'
      'and r.tovar=t.id'
      'order by e.data desc')
    Left = 16
    Top = 96
  end
end
