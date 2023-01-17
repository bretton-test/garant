object jurnForm: TjurnForm
  Left = 306
  Top = 167
  Width = 896
  Height = 525
  Caption = 'jurnForm'
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 457
    Width = 888
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object printb: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Enabled = False
      TabOrder = 0
      OnClick = printbClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Button3: TButton
      Left = 104
      Top = 8
      Width = 83
      Height = 25
      Caption = #1048#1089#1090#1086#1088#1080#1103
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 888
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 113
      Height = 25
      Caption = #1091#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBGrid: TDBGridEh
    Left = 0
    Top = 41
    Width = 888
    Height = 416
    Align = alClient
    AutoFitColWidths = True
    DataSource = ds
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghDialogFind]
    PopupMenu = PopupMenu1
    ReadOnly = True
    SortLocal = True
    STFilter.Local = True
    STFilter.Visible = True
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 3
    UseMultiTitle = True
    OnDblClick = DBGridDblClick
    OnDrawColumnCell = DBGridDrawColumnCell
    OnMouseDown = DBGridMouseDown
    Columns = <
      item
        EditButtons = <>
        Footers = <>
      end>
  end
  object printform: TSpeedForm
    Left = 272
    Top = 144
    Width = 353
    Height = 201
    Caption = 'printform'
    TabOrder = 3
    ParentColor = False
    Color = clMoneyGreen
    OnClose = printformClose
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 55
      Height = 13
      Caption = #1052#1072#1096#1080#1085#1072' '#8470
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 48
      Height = 13
      Caption = #1042#1086#1076#1080#1090#1077#1083#1100
    end
    object Label3: TLabel
      Left = 8
      Top = 147
      Width = 23
      Height = 13
      Caption = #1076#1072#1090#1072
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 36
      Height = 13
      Caption = #1089#1077#1088#1074#1080#1089
    end
    object Label5: TLabel
      Left = 8
      Top = 120
      Width = 31
      Height = 13
      Caption = #1074' '#1084#1072#1075'.'
      Visible = False
    end
    object carsbox: TDBLookupComboboxEh
      Left = 80
      Top = 18
      Width = 153
      Height = 21
      EditButtons = <>
      KeyField = 'gosnomer'
      ListField = 'gosnomer'
      ListSource = DataSource1
      TabOrder = 0
      Visible = True
    end
    object vodbox: TDBLookupComboboxEh
      Left = 80
      Top = 48
      Width = 153
      Height = 21
      EditButtons = <>
      KeyField = 'name'
      ListField = 'name'
      ListSource = DataSource2
      TabOrder = 1
      Visible = True
    end
    object BitBtn1: TBitBtn
      Left = 264
      Top = 144
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object dtp: TDateTimePicker
      Left = 80
      Top = 144
      Width = 153
      Height = 21
      Date = 39100.965898252320000000
      Time = 39100.965898252320000000
      TabOrder = 3
    end
    object servbox: TDBLookupComboboxEh
      Left = 80
      Top = 80
      Width = 153
      Height = 21
      EditButtons = <>
      KeyField = 'id'
      ListField = 'name'
      ListSource = DataSource3
      TabOrder = 4
      Visible = True
    end
    object magbox: TDBLookupComboboxEh
      Left = 80
      Top = 112
      Width = 153
      Height = 21
      EditButtons = <>
      KeyField = 'id'
      ListField = 'name'
      ListSource = DataSource4
      TabOrder = 5
      Visible = False
    end
  end
  object tovvremonte: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT r.id,r.tovar,r.price,r.warn,'
      'r.podmena,r.clientid,'
      
        'r.comment,r.skladid,t.mesto,case when s.id is null then '#39'1 '#39' whe' +
        'n s.id  is not null then '#39'0'#39'end servis,'
      't.name,m.name,u.name user,c.name,r.data,r.scenter,r.magid,'
      
        'r.complect,r.vid,t.id tovarid,r.id remontid,case when r.clientid' +
        '=0 and r.perem=0  then '#39'0'#39
      'when r.clientid=0 and r.perem=1 then '#39'1'#39
      'when r.clientid>0 then '#39'2'#39' end  perem,'
      'r.dostavka'
      'from garant.magazin m,garant.users u,'
      
        'garant.tovar t,garant.customer c,garant.remont r left join garan' +
        't.servis s on r.id=s.remontid'
      
        'where r.tovar=t.id and r.magid=m.id and r.userid=u.id and r.clie' +
        'ntid=c.id and r.close=0'
      'order by r.data')
    Left = 96
    Top = 112
    object tovvremonteid: TAutoIncField
      DisplayLabel = #1076#1086#1082
      DisplayWidth = 5
      FieldName = 'id'
    end
    object tovvremontedata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'data'
      Required = True
    end
    object tovvremontename: TStringField
      DisplayLabel = #1090#1086#1074#1072#1088
      DisplayWidth = 34
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object tovvremontecomment: TStringField
      DisplayWidth = 35
      FieldName = 'comment'
      Required = True
      Size = 100
    end
    object tovvremontename_1: TStringField
      DisplayLabel = #1076#1086#1082'.'#1079#1072#1087#1086#1083#1085#1077#1085' '#1074' '#1084#1072#1075'.'
      DisplayWidth = 30
      FieldName = 'name_1'
      Required = True
      Size = 45
    end
    object tovvremontename_2: TStringField
      DisplayLabel = #1072#1074#1090#1086#1088
      DisplayWidth = 22
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object tovvremontename_3: TStringField
      DisplayLabel = #1095#1077#1081' '#1090#1086#1074#1072#1088
      DisplayWidth = 34
      FieldName = 'name_2'
      Required = True
      Size = 45
    end
    object tovvremontetovar: TIntegerField
      FieldName = 'tovar'
      Required = True
      Visible = False
    end
    object tovvremontepodmena: TIntegerField
      FieldName = 'podmena'
      Required = True
      Visible = False
    end
    object tovvremonteclientid: TIntegerField
      FieldName = 'clientid'
      Required = True
      Visible = False
    end
    object tovvremonteskladid: TIntegerField
      FieldName = 'skladid'
      Required = True
      Visible = False
    end
    object tovvremontemesto: TStringField
      DisplayLabel = #1084#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
      DisplayWidth = 25
      FieldName = 'mesto'
      Required = True
      Size = 45
    end
    object tovvremontescenter: TIntegerField
      FieldName = 'scenter'
      Required = True
      Visible = False
    end
    object tovvremontemagid: TIntegerField
      FieldName = 'magid'
      Required = True
      Visible = False
    end
    object tovvremontecomplect: TStringField
      FieldName = 'complect'
      Required = True
      Visible = False
      Size = 100
    end
    object tovvremontevid: TStringField
      FieldName = 'vid'
      Required = True
      Visible = False
      Size = 100
    end
    object tovvremontetovarid: TAutoIncField
      FieldName = 'tovarid'
      Visible = False
    end
    object tovvremonteservis: TStringField
      FieldName = 'servis'
      Size = 2
    end
    object tovvremonteremontid: TIntegerField
      FieldName = 'remontid'
      Visible = False
    end
    object tovvremonteperem: TStringField
      DisplayWidth = 2
      FieldName = 'perem'
      Size = 1
    end
    object tovvremontedostavka: TSmallintField
      DisplayWidth = 2
      FieldName = 'dostavka'
      Required = True
    end
    object tovvremonteprice: TIntegerField
      FieldName = 'price'
      Visible = False
    end
    object tovvremontewarn: TWordField
      FieldName = 'warn'
      Visible = False
    end
  end
  object ds: TDataSource
    DataSet = tovoutmag
    Left = 160
    Top = 112
  end
  object allrem: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT r.id,r.tovar,r.price,'
      'r.podmena,r.clientid,'
      'r.comment,r.skladid,t.mesto,'
      't.name,m.name,u.name user,c.name,r.data,'
      'case r.close when 1 then '#39#1088#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#39
      'when 0 then '#39#1090#1086#1074#1072#1088' '#1074' '#1088#1077#1084#1086#1085#1090#1077#39' end result,'
      
        'r.close,r.scenter,r.magid,r.complect,r.vid,t.id tovarid,t.inuse,' +
        'r.id remontid,'
      'case when r.clientid=0 and r.perem=1 and r.close=1 then '#39'0'#39
      
        'when r.clientid=0 and r.perem=0 and r.close=1 then '#39'1'#39'  end  per' +
        'em,'
      'r.dostavka'
      'from garant.magazin m,garant.users u,'
      'garant.tovar t,garant.remont r,garant.customer c'
      
        'where r.tovar=t.id and r.magid=m.id and r.userid=u.id and r.clie' +
        'ntid=c.id'
      'order by r.data')
    Left = 96
    Top = 168
    object AutoIncField1: TAutoIncField
      DisplayLabel = #1076#1086#1082
      DisplayWidth = 5
      FieldName = 'id'
    end
    object allremdata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'data'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = #1090#1086#1074#1072#1088
      DisplayWidth = 34
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object StringField5: TStringField
      DisplayWidth = 35
      FieldName = 'comment'
      Required = True
      Size = 100
    end
    object StringField2: TStringField
      DisplayLabel = #1076#1086#1082'.'#1079#1072#1087#1086#1083#1085#1077#1085' '#1074' '#1084#1072#1075'.'
      DisplayWidth = 30
      FieldName = 'name_1'
      Required = True
      Size = 45
    end
    object StringField3: TStringField
      DisplayLabel = #1095#1077#1081' '#1090#1086#1074#1072#1088
      DisplayWidth = 22
      FieldName = 'name_2'
      Required = True
      Size = 45
    end
    object IntegerField1: TIntegerField
      FieldName = 'tovar'
      Required = True
      Visible = False
    end
    object IntegerField2: TIntegerField
      FieldName = 'podmena'
      Required = True
      Visible = False
    end
    object IntegerField3: TIntegerField
      FieldName = 'clientid'
      Required = True
      Visible = False
    end
    object IntegerField4: TIntegerField
      FieldName = 'skladid'
      Required = True
      Visible = False
    end
    object StringField6: TStringField
      DisplayLabel = #1084#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
      FieldName = 'mesto'
      Required = True
      Size = 45
    end
    object allremresult: TStringField
      DisplayLabel = #1088#1077#1079#1091#1083#1100#1090#1072#1090
      FieldName = 'result'
      Size = 15
    end
    object allremclose: TSmallintField
      FieldName = 'close'
      Required = True
      Visible = False
    end
    object allremscenter: TIntegerField
      FieldName = 'scenter'
      Required = True
      Visible = False
    end
    object allremmagid: TIntegerField
      FieldName = 'magid'
      Required = True
      Visible = False
    end
    object allremcomplect: TStringField
      FieldName = 'complect'
      Required = True
      Visible = False
      Size = 100
    end
    object allremvid: TStringField
      FieldName = 'vid'
      Required = True
      Visible = False
      Size = 100
    end
    object allremtovarid: TAutoIncField
      FieldName = 'tovarid'
      Visible = False
    end
    object allreminuse: TWordField
      FieldName = 'inuse'
      Visible = False
    end
    object allremremontid: TIntegerField
      FieldName = 'remontid'
      Visible = False
    end
    object allremuser: TStringField
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object allremperem: TStringField
      DisplayWidth = 5
      FieldName = 'perem'
      Size = 1
    end
    object allremdostavka: TSmallintField
      DisplayWidth = 2
      FieldName = 'dostavka'
      Required = True
    end
    object allremprice: TIntegerField
      FieldName = 'price'
      Visible = False
    end
  end
  object servQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT r.id remontid,s.data,u.name user,m.name mag,ms.name scent' +
        'er,t.name tovar,t.serialnum,r.comment,'
      's.id,r.tovar tovarid,s.magid,s.scenter sid'
      ' FROM garant.servis s,garant.users u,garant.magazin m,'
      'garant.magazin ms,garant.remont r,garant.tovar t'
      'where s.userid=u.id'
      'and m.id=s.magid'
      'and ms.id=s.scenter'
      'and s.remontid=r.id'
      'and r.tovar=t.id'
      'and r.close=0'
      'and s.vozvratid=0'
      'order by s.data'
      '')
    Left = 96
    Top = 216
  end
  object servmag: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT s.id,s.data,u.name user,m.name mag,ms.name scenter,t.name' +
        ' tovar,t.serialnum,r.comment,'
      'r.id remontid,r.tovar tovarid,s.magid,s.scenter sid'
      ' FROM garant.servis s,garant.users u,garant.magazin m,'
      'garant.magazin ms,garant.remont r,garant.tovar t'
      'where s.userid=u.id'
      'and m.id=s.magid'
      'and ms.id=s.scenter'
      'and s.remontid=r.id'
      'and r.tovar=t.id'
      'and r.close=0'
      'and s.magid=:id'
      'and s.vozvratid=0'
      'order by s.data')
    Left = 88
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object servmagremontid: TAutoIncField
      DisplayLabel = #1076#1086#1082
      FieldName = 'remontid'
    end
    object servmagid: TAutoIncField
      DisplayLabel = #1076#1086#1089
      DisplayWidth = 5
      FieldName = 'id'
      Visible = False
    end
    object servmagdata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'data'
      Required = True
    end
    object servmaguser: TStringField
      DisplayLabel = #1072#1074#1090#1086#1088' '#1076#1086#1082'.'
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object servmagmag: TStringField
      DisplayLabel = #1084#1072#1075#1072#1079#1080#1085
      FieldName = 'mag'
      Required = True
      Size = 45
    end
    object servmagscenter: TStringField
      DisplayLabel = #1089#1077#1088#1074'.'#1094#1077#1085#1090#1088
      FieldName = 'scenter'
      Required = True
      Size = 45
    end
    object servmagtovar: TStringField
      DisplayLabel = #1090#1086#1074#1072#1088
      FieldName = 'tovar'
      Required = True
      Size = 45
    end
    object servmagserialnum: TStringField
      DisplayLabel = #1089#1077#1088'.'#8470
      FieldName = 'serialnum'
      Required = True
      Size = 45
    end
    object servmagcomment: TStringField
      DisplayLabel = #1076#1077#1092#1077#1082#1090
      FieldName = 'comment'
      Required = True
      Size = 100
    end
    object servmagtovarid: TIntegerField
      FieldName = 'tovarid'
      Required = True
      Visible = False
    end
    object servmagmagid: TIntegerField
      FieldName = 'magid'
      Required = True
      Visible = False
    end
    object servmagsid: TIntegerField
      FieldName = 'sid'
      Required = True
      Visible = False
    end
  end
  object tovarclienta: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT r.id remontid,t.id ,t.name tovarname,t.serialnum,'
      't.mesto,'
      'c.name,c.tel,r.data remdata,p.name podmena,t.id tovarid'
      
        'FROM garant.tovar t,garant.remont r,garant.customer c,garant.tov' +
        'ar p'
      'where t.inuse=1'
      'and t.id=r.tovar'
      'and r.close=1'
      'and r.clientid=c.id'
      'and p.id=r.podmena'
      'order by r.data')
    Left = 96
    Top = 296
  end
  object allvozvratQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT r.id remontid,'
      'v.data,'
      'm.name mname,'
      'u.name user,'
      'sc.name scname,'
      't.name,'
      't.serialnum,'
      't.mesto,'
      'c.name client,'
      'case v.close when 1 then '#39#1088#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#39
      'when 0 then '#39#1090#1086#1074#1072#1088' '#1085#1077' '#1086#1090#1088#1077#1084#1086#1085#1090#1080#1088#1086#1074#1072#1085#39' end result,'
      'v.comment,s.id servisid,v.id,t.id tovarid,sc.id magid'
      'FROM garant.vozvrat v,'
      'garant.remont r,'
      'garant.tovar t,'
      'garant.customer c,'
      'garant.magazin m,'
      'garant.magazin sc,'
      'garant.users u,'
      'garant.servis s'
      'where v.remontid=r.id'
      'and t.id=r.tovar'
      'and c.id=r.clientid'
      'and m.id=v.magid'
      'and sc.id=v.scenter'
      'and v.userid=u.id'
      'and s.vozvratid=v.id'
      'and t.mesto<>'#39'-'#39
      'order by v.data')
    Left = 160
    Top = 296
  end
  object vozvratmag: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT v.id,'
      'v.data,'
      'm.name mname,'
      'u.name user,'
      'sc.name scname,'
      't.name,'
      't.serialnum,'
      't.mesto,'
      'c.name client,'
      'case v.close when 1 then '#39#1088#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#39
      'when 0 then '#39#1090#1086#1074#1072#1088' '#1085#1077' '#1086#1090#1088#1077#1084#1086#1085#1090#1080#1088#1086#1074#1072#1085#39' end result,'
      'v.comment,s.id servisid,r.id remontid,t.id tovarid,sc.id magid'
      'FROM garant.vozvrat v,'
      'garant.remont r,'
      'garant.tovar t,'
      'garant.customer c,'
      'garant.magazin m,'
      'garant.magazin sc,'
      'garant.users u,'
      'garant.servis s'
      'where v.remontid=r.id'
      'and t.id=r.tovar'
      'and c.id=r.clientid'
      'and m.id=v.magid'
      'and sc.id=v.scenter'
      'and v.userid=u.id'
      'and v.magid=:mag'
      'and s.vozvratid=v.id'
      'and t.mesto<>'#39'-'#39
      'order by v.data,t.name')
    Left = 208
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'mag'
        ParamType = ptUnknown
      end>
    object vozvratmagremontid: TAutoIncField
      DisplayLabel = #1076#1086#1082'.'
      FieldName = 'remontid'
    end
    object vozvratmagid: TAutoIncField
      DisplayLabel = #1076#1086#1082
      DisplayWidth = 5
      FieldName = 'id'
      Visible = False
    end
    object vozvratmagdata: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object vozvratmagmname: TStringField
      FieldName = 'mname'
      Required = True
      Size = 45
    end
    object vozvratmaguser: TStringField
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object vozvratmagscname: TStringField
      FieldName = 'scname'
      Required = True
      Size = 45
    end
    object vozvratmagname: TStringField
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object vozvratmagserialnum: TStringField
      FieldName = 'serialnum'
      Required = True
      Size = 45
    end
    object vozvratmagclient: TStringField
      FieldName = 'client'
      Required = True
      Size = 45
    end
    object vozvratmagresult: TStringField
      FieldName = 'result'
      Size = 23
    end
    object vozvratmagcomment: TStringField
      FieldName = 'comment'
      Required = True
      Size = 45
    end
    object vozvratmagservisid: TAutoIncField
      FieldName = 'servisid'
      Visible = False
    end
    object vozvratmagtovarid: TAutoIncField
      FieldName = 'tovarid'
      Visible = False
    end
    object vozvratmagmagid: TAutoIncField
      FieldName = 'magid'
      Visible = False
    end
    object vozvratmagmesto: TStringField
      FieldName = 'mesto'
      Required = True
      Size = 45
    end
  end
  object tovout: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT t.id ,t.name tovarname,t.serialnum,'
      't.mesto,'
      'c.name,c.tel,r.data remdata,p.name podmena,r.id remontid,'
      'case r.close when 1 then '#39#1088#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#39
      'when 0 then '#39#1090#1086#1074#1072#1088' '#1074' '#1088#1077#1084#1086#1085#1090#1077#39' end result,t.id tovarid,t.client'
      
        'FROM garant.tovar t,garant.remont r,garant.customer c,garant.tov' +
        'ar p,'
      'garant.magazin m'
      'where  t.id=r.tovar and t.mesto<>'#39'-'#39' '
      'and r.clientid=c.id'
      'and p.id=r.podmena'
      'and r.skladid like :magid'
      'and m.id=r.skladid'
      'and m.servis=0'
      'order by r.data')
    Left = 96
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'magid'
        ParamType = ptUnknown
      end>
    object tovoutremontid: TAutoIncField
      DisplayLabel = #1076#1086#1082
      FieldName = 'remontid'
    end
    object tovoutid: TAutoIncField
      DisplayLabel = #1076#1086#1082
      DisplayWidth = 5
      FieldName = 'id'
      Visible = False
    end
    object tovouttovarname: TStringField
      FieldName = 'tovarname'
      Required = True
      Size = 45
    end
    object tovoutserialnum: TStringField
      DisplayLabel = #1089#1077#1088'.'#8470
      DisplayWidth = 30
      FieldName = 'serialnum'
      Required = True
      Size = 45
    end
    object tovoutmesto: TStringField
      DisplayLabel = #1084#1077#1089#1090#1086' '#1093#1088#1072#1085'.'
      DisplayWidth = 30
      FieldName = 'mesto'
      Required = True
      Size = 45
    end
    object tovoutname: TStringField
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object tovouttel: TStringField
      FieldName = 'tel'
    end
    object tovoutremdata: TDateTimeField
      FieldName = 'remdata'
      Required = True
    end
    object tovoutpodmena: TStringField
      FieldName = 'podmena'
      Required = True
      Size = 45
    end
    object tovoutresult: TStringField
      DisplayLabel = #1088#1077#1079#1091#1083#1100#1090#1072#1090
      DisplayWidth = 25
      FieldName = 'result'
      Size = 15
    end
    object tovouttovarid: TAutoIncField
      FieldName = 'tovarid'
      Visible = False
    end
    object tovoutclient: TWordField
      FieldName = 'client'
      Required = True
      Visible = False
    end
  end
  object tovoutQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT t.*,u.name user,m.name mag,k.name tname,c.name client,'
      'r.data rdata,im.name magin,k.id tovarid'
      'FROM garant.tovout t,'
      'garant.users u,'
      'garant.magazin m,'
      'garant.remont r,'
      'garant.tovar k,'
      'garant.magazin im,'
      'garant.customer c'
      'where t.userid=u.id'
      'and m.id=t.magid'
      'and r.id=t.remontid'
      'and k.id=r.tovar'
      'and im.id=r.magid'
      'and c.id=r.clientid'
      'order by t.data')
    Left = 96
    Top = 384
    object tovoutQueryid: TAutoIncField
      FieldName = 'id'
      Visible = False
    end
    object tovoutQueryremontid: TIntegerField
      FieldName = 'remontid'
      Required = True
    end
    object tovoutQuerydata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      FieldName = 'data'
      Required = True
    end
    object tovoutQuerymagid: TIntegerField
      FieldName = 'magid'
      Required = True
      Visible = False
    end
    object tovoutQueryuserid: TIntegerField
      FieldName = 'userid'
      Required = True
      Visible = False
    end
    object tovoutQueryuser: TStringField
      DisplayLabel = #1072#1074#1090#1086#1088
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object tovoutQuerymag: TStringField
      DisplayLabel = #1084#1072#1075#1072#1079#1080#1085
      FieldName = 'mag'
      Required = True
      Size = 45
    end
    object tovoutQuerytname: TStringField
      DisplayLabel = #1090#1086#1074#1072#1088
      FieldName = 'tname'
      Required = True
      Size = 45
    end
    object tovoutQueryclient: TStringField
      DisplayLabel = #1082#1083#1080#1077#1085#1090
      FieldName = 'client'
      Required = True
      Size = 45
    end
    object tovoutQuerymagin: TStringField
      DisplayLabel = #1074
      FieldName = 'magin'
      Required = True
      Size = 45
    end
    object tovoutQuerytovarid: TAutoIncField
      FieldName = 'tovarid'
      Visible = False
    end
    object tovoutQueryrdata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1088#1077#1084#1086#1085#1090
      FieldName = 'rdata'
      Required = True
    end
  end
  object tovoutmag: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT t.*,u.name user,m.name mag,k.name tname,c.name client,'
      'r.data rdata,im.name magin,k.id tovarid'
      'FROM garant.tovout t,'
      'garant.users u,'
      'garant.magazin m,'
      'garant.remont r,'
      'garant.tovar k,'
      'garant.magazin im,'
      'garant.customer c'
      'where t.userid=u.id'
      'and m.id=t.magid'
      'and r.id=t.remontid'
      'and k.id=r.tovar'
      'and im.id=r.magid'
      'and c.id=r.clientid'
      'and t.magid=:magid'
      'order by t.data')
    Left = 144
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'magid'
        ParamType = ptUnknown
        Value = 2
      end>
    object tovoutmagremontid: TIntegerField
      DisplayLabel = #1076#1086#1082'.'
      FieldName = 'remontid'
      Required = True
    end
    object tovoutmagid: TAutoIncField
      FieldName = 'id'
      Visible = False
    end
    object tovoutmagdata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      FieldName = 'data'
      Required = True
    end
    object tovoutmagmagid: TIntegerField
      FieldName = 'magid'
      Required = True
      Visible = False
    end
    object tovoutmaguserid: TIntegerField
      FieldName = 'userid'
      Required = True
      Visible = False
    end
    object tovoutmaguser: TStringField
      DisplayLabel = #1072#1074#1090#1086#1088
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object tovoutmagmag: TStringField
      DisplayLabel = #1084#1072#1075#1072#1079#1080#1085
      FieldName = 'mag'
      Required = True
      Size = 45
    end
    object tovoutmagtname: TStringField
      DisplayLabel = #1090#1086#1074#1072#1088
      FieldName = 'tname'
      Required = True
      Size = 45
    end
    object tovoutmagclient: TStringField
      DisplayLabel = #1082#1083#1080#1077#1085#1090
      FieldName = 'client'
      Required = True
      Size = 45
    end
    object tovoutmagmagin: TStringField
      DisplayLabel = #1074
      FieldName = 'magin'
      Required = True
      Size = 45
    end
    object tovoutmagrdata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1088#1077#1084#1086#1085#1090
      FieldName = 'rdata'
      Required = True
    end
    object tovoutmagtovarid: TAutoIncField
      FieldName = 'tovarid'
      Visible = False
    end
  end
  object carsq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT * FROM cars')
    Left = 344
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = carsq
    Left = 376
    Top = 296
  end
  object vodq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT * FROM users  where prof=4')
    Left = 344
    Top = 328
  end
  object DataSource2: TDataSource
    DataSet = vodq
    Left = 376
    Top = 328
  end
  object tovarquery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select * from garant.tovar where id=:id')
    Left = 176
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = ClientDataSetAfterOpen
    Left = 512
    Top = 112
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
  object allmag: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT * FROM garant.magazin  where servis=0')
    Left = 344
    Top = 400
  end
  object DataSource4: TDataSource
    DataSet = allmag
    Left = 384
    Top = 400
  end
  object tremClient: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT r.id,r.tovar,'
      'r.podmena,r.clientid,'
      
        'r.comment,r.skladid,t.mesto,case when s.id is null then '#39'1 '#39' whe' +
        'n s.id  is not null then '#39'0'#39'end servis,'
      't.name,m.name,u.name user,c.name,r.data,r.scenter,r.magid,'
      'r.complect,r.vid,t.id tovarid,r.id remontid'
      'from garant.magazin m,garant.users u,'
      
        'garant.tovar t,garant.remont r,garant.customer c left join garan' +
        't.servis s on r.id=s.remontid'
      
        'where r.tovar=t.id and r.magid=m.id and r.userid=u.id and r.clie' +
        'ntid=c.id and r.clientid>0'
      'and t.inuse=1'
      'and r.magid=:id'
      'order by r.data')
    Left = 232
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object AutoIncField2: TAutoIncField
      DisplayLabel = #1076#1086#1082
      DisplayWidth = 5
      FieldName = 'id'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'data'
      Required = True
    end
    object StringField7: TStringField
      DisplayLabel = #1090#1086#1074#1072#1088
      DisplayWidth = 34
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object StringField8: TStringField
      DisplayWidth = 35
      FieldName = 'comment'
      Required = True
      Size = 100
    end
    object StringField9: TStringField
      DisplayLabel = #1076#1086#1082'.'#1079#1072#1087#1086#1083#1085#1077#1085' '#1074' '#1084#1072#1075'.'
      DisplayWidth = 30
      FieldName = 'name_1'
      Required = True
      Size = 45
    end
    object StringField10: TStringField
      DisplayLabel = #1072#1074#1090#1086#1088
      DisplayWidth = 22
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object StringField11: TStringField
      DisplayLabel = #1095#1077#1081' '#1090#1086#1074#1072#1088
      DisplayWidth = 34
      FieldName = 'name_2'
      Required = True
      Size = 45
    end
    object IntegerField5: TIntegerField
      FieldName = 'tovar'
      Required = True
      Visible = False
    end
    object IntegerField6: TIntegerField
      FieldName = 'podmena'
      Required = True
      Visible = False
    end
    object IntegerField7: TIntegerField
      FieldName = 'clientid'
      Required = True
      Visible = False
    end
    object IntegerField8: TIntegerField
      FieldName = 'skladid'
      Required = True
      Visible = False
    end
    object StringField12: TStringField
      DisplayLabel = #1084#1077#1089#1090#1086' '#1093#1088#1072#1085#1077#1085#1080#1103
      DisplayWidth = 25
      FieldName = 'mesto'
      Required = True
      Size = 45
    end
    object IntegerField9: TIntegerField
      FieldName = 'scenter'
      Required = True
      Visible = False
    end
    object IntegerField10: TIntegerField
      FieldName = 'magid'
      Required = True
      Visible = False
    end
    object StringField13: TStringField
      FieldName = 'complect'
      Required = True
      Visible = False
      Size = 100
    end
    object StringField14: TStringField
      FieldName = 'vid'
      Required = True
      Visible = False
      Size = 100
    end
    object AutoIncField3: TAutoIncField
      FieldName = 'tovarid'
      Visible = False
    end
    object StringField15: TStringField
      FieldName = 'servis'
      Size = 2
    end
    object tremClientremontid: TIntegerField
      FieldName = 'remontid'
      Visible = False
    end
  end
  object ynImage: TImageList
    Left = 280
    Top = 72
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      84008484840000000000000000000000000000000000000000000000FF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000008400000084000084000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      840000008400848484000000000000000000000000000000FF00000084000000
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000084
      0000008400000084000000840000840000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      8400000084000000840084848400000000000000FF0000008400000084000000
      8400000084008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000008400000084
      0000008400000084000000840000008400008400000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000084000000840000008400848484000000840000008400000084000000
      8400000084008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000000840000008400000084
      000000FF00000084000000840000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000840000008400000084000000840000008400000084000000
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000840000008400000084000000FF
      00000000000000FF000000840000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400000084008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF00000084000000FF00000000
      0000000000000000000000FF0000008400000084000000840000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000840000008400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      000000000000000000000000000000FF00000084000000840000008400008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000008400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400000084
      0000840000000000000000000000000000000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000008400008400000000000000000000000000000000000000000000000000
      FF00000084000000840000008400848484000000840000008400000084008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      00000084000000840000840000000000000000000000000000000000FF000000
      8400000084000000840084848400000000000000FF0000008400000084000000
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00000084000000840000008400008400000000000000000000000000FF000000
      840000008400848484000000000000000000000000000000FF00000084000000
      8400000084008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000084000000840000840000000000000000000000000000000000
      FF000000840000000000000000000000000000000000000000000000FF000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFCFFF00000000F3FF87CF00000000
      E1FF838700000000C0FF810300000000807FC00300000000003FE00700000000
      083FF00F000000001C1FF81F00000000BE0FF81F00000000FF07F01F00000000
      FF83E00F00000000FFC1C10700000000FFE0C38300000000FFF0E7C300000000
      FFF8FFE300000000FFFDFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object remimage: TImageList
    Left = 320
    Top = 216
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000808080000000000000000000008080000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000808080000000000000000000008080000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000808080000000000000000000008080000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000808080000000000000000000008080000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000808080008080800000000000008080000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000000000000000000000000000000000000FFFF000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FC7FF8C700000000
      FC7FF08700000000FC7FF08700000000FC7FF08700000000FC7FF08700000000
      FC7FF08300000000FC7FE00300000000FC7FE00700000000FC7FF00F00000000
      C00FF81F00000000C007FC3F00000000C007FC3F00000000C00FFE7F00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object zjurn: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT r.id,r.clientid,r.tovar,r.price,c.name,c.adres,c.tel,r.co' +
        'mment,t.name  tovarname,'
      
        'ifnull(v.name,'#39'-'#39') driver,r.data,u.name user,m.name mag,r.datado' +
        'st'
      'FROM  garant.customer c,'
      '      garant.users u,'
      '      garant.magazin m,'
      
        '      garant.tovar t,garant.remont r left join garant.users v on' +
        ' v.id=r.driver'
      ''
      'where r.clientid=c.id'
      'and u.id=r.userid'
      'and m.id=r.magid'
      'and t.id=r.tovar'
      'and r.dostavka=1'
      'and r.close=0'
      'order by r.data desc')
    Left = 208
    Top = 232
    object zjurnid: TIntegerField
      DisplayLabel = #1076#1086#1082
      FieldName = 'id'
      Required = True
    end
    object zjurnclientid: TIntegerField
      FieldName = 'clientid'
      Required = True
      Visible = False
    end
    object zjurndatadost: TDateTimeField
      DisplayLabel = #1076#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'datadost'
      Required = True
    end
    object zjurntovar: TIntegerField
      FieldName = 'tovar'
      Required = True
      Visible = False
    end
    object zjurnname: TStringField
      DisplayLabel = #1082#1083#1080#1077#1085#1090
      FieldName = 'name'
      Required = True
      Size = 45
    end
    object zjurnadres: TStringField
      DisplayLabel = #1072#1076#1088#1077#1089
      FieldName = 'adres'
      Size = 45
    end
    object zjurntel: TStringField
      DisplayLabel = #1090#1077#1083'.'
      FieldName = 'tel'
      Size = 50
    end
    object zjurncomment: TStringField
      DisplayLabel = #1076#1077#1092#1077#1082#1090
      FieldName = 'comment'
      Required = True
      Size = 100
    end
    object zjurntovarname: TStringField
      DisplayLabel = #1080#1079#1076#1077#1083#1080#1077
      FieldName = 'tovarname'
      Required = True
      Size = 45
    end
    object zjurndriver: TStringField
      DisplayLabel = #1074#1086#1076#1080#1090#1077#1083#1100
      FieldName = 'driver'
      Required = True
      Size = 45
    end
    object zjurndata: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'data'
      Required = True
    end
    object zjurnuser: TStringField
      DisplayLabel = #1072#1074#1090#1086#1088
      FieldName = 'user'
      Required = True
      Size = 45
    end
    object zjurnmag: TStringField
      DisplayLabel = #1084#1072#1075'.'
      FieldName = 'mag'
      Required = True
      Size = 45
    end
    object zjurnprice: TIntegerField
      FieldName = 'price'
      Visible = False
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 280
    Top = 200
    object N1: TMenuItem
      Caption = #1080#1079#1084#1077#1085#1080#1090#1100' '#1089#1090#1072#1090#1091#1089' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      OnClick = N1Click
    end
  end
  object dostimage: TImageList
    Left = 400
    Top = 224
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFF
      FF00C0C0C000C0C0C000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      CFF300000000000087E100000000000000000000000000000000000000000000
      0000000000000000000100000000000000030000000000000007000000000000
      000F000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
