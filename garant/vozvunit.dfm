object vozvForm: TvozvForm
  Left = 311
  Top = 160
  Width = 942
  Height = 500
  Caption = #1074#1086#1079#1074#1088#1072#1090' '#1090#1086#1074#1072#1088#1072' '#1080#1079' '#1089#1077#1088#1074'.'#1094#1077#1085#1090#1088#1072
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
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 934
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
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
  object DBGrid: TDBGridEh
    Left = 0
    Top = 49
    Width = 934
    Height = 383
    Align = alClient
    AllowedOperations = [alopUpdateEh, alopDeleteEh]
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDialogFind]
    SortLocal = True
    SumList.Active = True
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
        Title.Caption = #1076#1086#1082'.'
        Title.TitleButton = True
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'remdata'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1076#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1088#1077#1084#1086#1085#1090
        Title.TitleButton = True
        Width = 72
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'mag'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1084#1072#1075#1072#1079#1080#1085
        Title.TitleButton = True
        Width = 73
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'servdata'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1076#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1074' '#1057#1062
        Title.TitleButton = True
        Width = 67
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'tname'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1090#1086#1074#1072#1088
        Title.TitleButton = True
        Width = 150
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'serialnum'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1089#1077#1088'.'#8470
        Width = 93
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'comment'
        Footers = <>
        ReadOnly = True
        Title.Caption = #1076#1077#1092#1077#1082#1090
        Width = 156
      end
      item
        AutoFitColWidth = False
        Checkboxes = True
        EditButtons = <>
        FieldName = 'close'
        Footers = <>
        KeyList.Strings = (
          '1'
          '0')
        Title.Caption = #1090#1086#1074#1072#1088'  '#1086#1090#1088#1077#1084#1086#1085#1090#1080#1088#1086#1074#1072#1085
        Title.TitleButton = True
        Width = 73
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'prim'
        Footers = <>
        Title.Caption = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 170
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 298
      Height = 16
      Caption = #1087#1086#1083#1091#1095#1080#1090#1100' '#1090#1086#1074#1072#1088#1099' '#1080#1079' '#1089#1077#1088#1074#1080#1089#1085#1086#1075#1086' '#1094#1077#1085#1090#1088#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object servbox: TDBLookupComboboxEh
      Left = 317
      Top = 5
      Width = 153
      Height = 21
      EditButtons = <>
      KeyField = 'id'
      ListField = 'name'
      ListSource = magds
      TabOrder = 0
      Visible = True
      OnChange = servboxChange
    end
    object magcheck: TCheckBox
      Left = 504
      Top = 8
      Width = 185
      Height = 17
      Caption = #1090#1086#1083#1100#1082#1086' '#1090#1077#1082#1091#1097#1080#1081' '#1084#1072#1075#1072#1079#1080#1085
      Checked = True
      State = cbChecked
      TabOrder = 1
      Visible = False
      OnClick = servboxChange
    end
  end
  object magdb: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select * from magazin where servis=1')
    Left = 48
    Top = 96
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
  end
  object magds: TDataSource
    DataSet = magdb
    Left = 88
    Top = 96
  end
  object allmagquery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT r.data remdata,m.name mag,s.data servdata,t.name tname,t.' +
        'serialnum,'
      
        'r.comment,1 close,concat('#39'-'#39',space(44)) prim,s.remontid,t.id tov' +
        'arid,s.id servid'
      
        'FROM garant.servis s,garant.remont r,garant.tovar t,garant.magaz' +
        'in m'
      'where s.remontid=r.id'
      'and t.id=r.tovar'
      'and m.id=r.magid'
      'and s.scenter=:scenter'
      'and s.vozvratid=0')
    Left = 48
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'scenter'
        ParamType = ptUnknown
      end>
  end
  object ClientDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ClientDS
    Left = 184
    Top = 136
  end
  object curmagQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT r.data remdata,m.name mag,s.data servdata,t.name tname,t.' +
        'serialnum,'
      
        'r.comment,1 close,concat('#39'-'#39',space(44)) prim,s.remontid,t.id tov' +
        'arid,s.id servid,'
      'r.id remontid'
      
        'FROM garant.servis s,garant.remont r,garant.tovar t,garant.magaz' +
        'in m'
      'where s.remontid=r.id'
      'and t.id=r.tovar'
      'and m.id=r.magid'
      'and s.scenter=:scenter'
      'and s.magid=:magid'
      'and s.vozvratid=0')
    Left = 48
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'scenter'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'magid'
        ParamType = ptUnknown
      end>
  end
  object insvozvq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'insert into vozvrat (userid,data,magid,remontid,scenter,close,co' +
        'mment)'
      'values (:userid,:data,:magid,:remontid,:scenter,:close,:comment)')
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
      end
      item
        DataType = ftSmallint
        Name = 'close'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'comment'
        ParamType = ptUnknown
      end>
  end
  object updRemont: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update remont set skladid=:skladid,close=:close'
      'where id=:remontid')
    Left = 88
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'skladid'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'close'
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
    Left = 120
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
  object getVozvId: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select id from vozvrat where data=:data'
      'and remontid=:remontid')
    Left = 16
    Top = 328
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end>
    object getVozvIdid: TAutoIncField
      FieldName = 'id'
    end
  end
  object updservis: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update servis set vozvratid=:vozvratid'
      'where id=:servid')
    Left = 160
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vozvratid'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'servid'
        ParamType = ptUnknown
      end>
  end
end
