object movform: Tmovform
  Left = 280
  Top = 163
  Width = 870
  Height = 500
  Caption = 'movform'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 290
      Height = 16
      Caption = #1086#1090#1087#1088#1072#1074#1080#1090#1100' '#1090#1086#1074#1072#1088#1099' '#1074'  '#1089#1077#1088#1074#1080#1089#1085#1099#1081' '#1094#1077#1085#1090#1088' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid: TDBGridEh
    Left = 0
    Top = 49
    Width = 862
    Height = 383
    Align = alClient
    AllowedOperations = [alopDeleteEh]
    AutoFitColWidths = True
    DataSource = DataSource1
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
    STFilter.Local = True
    STFilter.Visible = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    UseMultiTitle = True
    OnKeyDown = DBGridKeyDown
    OnMouseDown = DBGridMouseDown
    Columns = <
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'remontid'
        Footers = <>
        Title.Caption = #8470' '#1076#1086#1089
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'remdata'
        Footers = <>
        Title.Caption = #1076#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1088#1077#1084#1086#1085#1090
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'tovname'
        Footers = <>
        Title.Caption = #1090#1086#1074#1072#1088
        Width = 208
      end
      item
        EditButtons = <>
        FieldName = 'serialnum'
        Footers = <>
        Title.Caption = #1089#1077#1088#1080#1081#1085#1099#1081' '#8470
      end
      item
        EditButtons = <>
        FieldName = 'comment'
        Footers = <>
        Title.Caption = #1086#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'client'
        Footers = <>
        Title.Caption = #1082#1083#1080#1077#1085#1090
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'user'
        Footers = <>
        Title.Caption = #1088#1077#1084#1086#1085#1090' '#1086#1092#1086#1088#1084#1080#1083
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'mname'
        Footers = <>
        Title.Caption = #1086#1090#1087#1088#1072#1074#1080#1090#1100' '#1085#1072' '#1088#1077#1084#1086#1085#1090' '#1074
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'sname'
        Footers = <>
        Title.Caption = #1084#1072#1075#1072#1079#1080#1085
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 862
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object ok: TBitBtn
      Left = 744
      Top = 8
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
  object DataSource1: TDataSource
    DataSet = ClientDS
    Left = 184
    Top = 104
  end
  object ClientDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 104
  end
  object insremq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into servis (userid,data,magid,remontid,scenter)'
      'values (:userid,:data,:magid,:remontid,:scenter)')
    Left = 16
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'userid'
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
        Name = 'remontid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'scenter'
        ParamType = ptUnknown
      end>
  end
  object updRemont: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update remont set skladid=:skladid'
      'where id=:remontid')
    Left = 48
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'skladid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end>
  end
  object updTovar: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update tovar set mesto=:mesto'
      'where id=:tovarid')
    Left = 88
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mesto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tovarid'
        ParamType = ptUnknown
      end>
  end
  object allrem: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT r.id remontid,'
      'r.data remdata,'
      't.id tovarid,'
      't.name tovname,'
      't.serialnum,'
      'r.comment,'
      'c.name client,'
      'u.name user,'
      'r.scenter,'
      'm.name mname,r.skladid,s.name sname'
      
        ' FROM garant.tovar t,garant.remont r,garant.customer c,garant.us' +
        'ers u,'
      'garant.magazin m,garant.magazin s'
      'where t.id=r.tovar and'
      'c.id=r.clientid and'
      't.inuse=1 and'
      'r.close =0 and'
      'u.id=r.userid '
      'and m.id=r.scenter'
      'and s.id=r.skladid'
      'and s.servis=0')
    Left = 16
    Top = 168
  end
end
