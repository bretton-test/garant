object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 142
  Height = 493
  Width = 694
  object myBase: TmySQLDatabase
    DatabaseName = 'garant'
    UserName = 'garant'
    UserPassword = '1234'
    Port = 3333
    Host = '127.0.0.1'
    ConnectOptions = []
    ConnectionTimeout = 10
    Params.Strings = (
      'Port=3333'
      'TIMEOUT=10'
      'DatabaseName=garant'
      'Host=127.0.0.1'
      'UID=garant'
      'PWD=1234')
    Left = 24
    Top = 16
  end
  object delpict: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'delete from pict where remont=:id')
    Left = 32
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object delpodmena: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'delete from podmena where remontid=:id')
    Left = 80
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object updTovar: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update tovar set mesto='#39'-'#39',inuse=0'
      'where id=:id')
    Left = 136
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object delremont: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'delete from remont where id=:id')
    Left = 192
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object servQuery: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'select  *  from servis where remontid=:id')
    Left = 32
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object updRemont: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update remont set skladid=:skladid'
      'where id=:remontid')
    Left = 312
    Top = 328
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
  object updMesto: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update tovar set mesto=:mesto'
      'where id=:tovarid')
    Left = 368
    Top = 328
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
  object delserv: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'delete from servis where id=:id')
    Left = 424
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object updrem1: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update remont set skladid=:skladid,close=:close'
      'where id=:remontid')
    Left = 368
    Top = 272
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
  object updservis: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update servis set vozvratid=:vozvratid'
      'where id=:servid')
    Left = 416
    Top = 272
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
  object delvozvratQ: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'delete from vozvrat where id=:id')
    Left = 472
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object allvozvQ: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'SELECT id,data FROM garant.vozvrat where'
      'remontid=:remontid'
      'order by data')
    Left = 480
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end>
    object allvozvQid: TAutoIncField
      FieldName = 'id'
    end
    object allvozvQdata: TDateTimeField
      FieldName = 'data'
    end
  end
  object selremQ: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'select * from remont where id=:remid')
    Left = 480
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'remid'
        ParamType = ptUnknown
      end>
    object selremQid: TAutoIncField
      FieldName = 'id'
    end
    object selremQtovar: TIntegerField
      FieldName = 'tovar'
    end
    object selremQmagid: TIntegerField
      FieldName = 'magid'
    end
    object selremQuserid: TIntegerField
      FieldName = 'userid'
    end
    object selremQclientid: TIntegerField
      FieldName = 'clientid'
    end
    object selremQdata: TDateField
      FieldName = 'data'
    end
    object selremQpodmena: TIntegerField
      FieldName = 'podmena'
    end
    object selremQclose: TSmallintField
      FieldName = 'close'
    end
    object selremQcomment: TStringField
      FieldName = 'comment'
      Size = 100
    end
    object selremQskladid: TIntegerField
      FieldName = 'skladid'
    end
    object selremQscenter: TIntegerField
      FieldName = 'scenter'
    end
  end
  object updPodmena: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update podmena'
      'set endid=0'
      'where remontid=:remid')
    Left = 424
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'remid'
        ParamType = ptUnknown
      end>
  end
  object delout: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'delete from tovout where id=:id')
    Left = 368
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object updUse: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update tovar set inuse=1 where id=:id')
    Left = 424
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object remontprint: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'SELECT r.id,r.tovar,r.price,'
      'r.podmena,r.clientid,'
      'r.comment,r.skladid,t.mesto,'
      
        't.name tovarname,m.name mname,m.adres madres,m.tel mtel,u.name u' +
        'name,c.name client,'
      'c.adres,c.tel,r.data,r.scenter,r.magid,'
      
        'r.complect,r.vid,t.serialnum,s.name scname,s.adres scadres,s.tel' +
        ' sctel,:mymag mymag'
      'from garant.magazin m,garant.users u,'
      
        'garant.tovar t,garant.remont r,garant.customer c,garant.magazin ' +
        's'
      
        'where r.tovar=t.id and r.magid=m.id and r.userid=u.id and r.clie' +
        'ntid=c.id'
      'and r.id=:remontid'
      'and s.id=r.scenter')
    Left = 104
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'mymag'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end>
  end
  object peremPrintQ: TmySQLQuery
    Database = myBase
    AfterScroll = peremPrintQAfterScroll
    SQL.Strings = (
      'SELECT distinct date(s.data) sdata,u.name user,m.name mag'
      
        ',m.adres madres,ms.email,ms.name scenter,ms.adres sadres,s.scent' +
        'er scid'
      ' FROM garant.servis s,garant.users u,garant.magazin m,'
      'garant.magazin ms,garant.remont r'
      'where s.userid=u.id'
      'and m.id=s.magid'
      'and ms.id=s.scenter'
      'and s.remontid=r.id'
      'and r.close=0'
      'and s.vozvratid=0'
      'and date(s.data)=:data'
      'and s.scenter=:servis')
    Left = 200
    Top = 96
    ParamData = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'servis'
        ParamType = ptUnknown
      end>
  end
  object peremslave: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'select r.id remontid,r.data rdata,t.name tovar,t.serialnum'
      ',c.name client,c.tel,r.complect,r.comment,max(p.data) datasell'
      
        'from servis s,remont r,customer c,tovar t  left join sell p on p' +
        '.tovar=t.id'
      'where date(s.data)=:data'
      'and s.scenter=:scenter'
      'and r.id=s.remontid'
      'and t.id=r.tovar'
      'and c.id=r.clientid'
      'and r.close=0'
      'group by r.id,r.data,t.name,t.serialnum'
      ',c.name,c.tel,r.complect,r.comment')
    Left = 264
    Top = 96
    ParamData = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'scenter'
        ParamType = ptUnknown
      end>
  end
  object testtable: TmySQLTable
    Database = myBase
    TableName = 'users'
    Left = 344
    Top = 104
  end
  object updRemont2: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update remont set close=0 where id=:id')
    Left = 488
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object InsEventQ: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      
        'insert into garant.events (remont,data,mag,user,sysevent,memo,wa' +
        'rn)'
      'values  (:remont,:data,:mag,:user,:sysevent,:memo,:warn)')
    Left = 144
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'remont'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'mag'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'user'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'sysevent'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'memo'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'warn'
        ParamType = ptUnknown
      end>
  end
  object servprint: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'SELECT r.id remontid,'
      'date(v.data) data,'
      'm.name mname,m.adres madres,'
      'u.name user,'
      'sc.name scname,sc.adres sadres,'
      't.name,'
      't.serialnum,'
      't.mesto,'
      'c.name client,'
      'v.comment'
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
      'and date(v.data)=:data'
      'and v.scenter=:sc'
      'and v.magid=:mag')
    Left = 216
    Top = 160
    ParamData = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'sc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mag'
        ParamType = ptUnknown
      end>
  end
  object vozvRemont: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update garant.remont set clientid=0 where id=:id')
    Left = 136
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object vozvtovar: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update garant.tovar set client=0  where id=:id')
    Left = 192
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object printZ: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      
        'SELECT c.name,c.adres,c.tel FROM garant.zayavka z,garant.custome' +
        'r c'
      'where z.clientid=c.id'
      'and z.clientid=:clientid'
      'and date(z.data)=:data')
    Left = 440
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'clientid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end>
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = 'c:\f4.ini'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39890.512248796290000000
    ReportOptions.LastChange = 40465.647469074070000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    StoreInDFM = False
    OnGetValue = frxReport1GetValue
    Left = 424
    Top = 400
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    Subject = #1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072' '#1080#1079' '#1084#1072#1075#1072#1079#1080#1085#1072
    ShowExportDialog = True
    FromMail = 'servis@kamensktel.ru'
    FromName = #1058#1077#1093#1085#1086#1089#1080#1083#1072
    FromCompany = #1058#1077#1093#1085#1086#1089#1080#1083#1072
    SmtpHost = 'mail.kamensktel.ru'
    SmtpPort = 25
    UseIniFile = True
    Left = 624
    Top = 320
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 568
    Top = 400
  end
  object ds41: TfrxDBDataset
    UserName = 'ds41'
    CloseDataSource = False
    Left = 192
    Top = 408
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 488
    Top = 400
  end
  object DS42: TfrxDBDataset
    UserName = 'DS42'
    CloseDataSource = False
    Left = 248
    Top = 408
  end
  object ds43: TfrxDBDataset
    UserName = 'ds43'
    CloseDataSource = False
    Left = 296
    Top = 408
  end
  object ds44: TfrxDBDataset
    UserName = 'ds44'
    CloseDataSource = False
    Left = 344
    Top = 408
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 600
    Top = 256
  end
  object tipQuery: TmySQLQuery
    Database = myBase
    AfterScroll = tipQueryAfterScroll
    SQL.Strings = (
      
        'SELECT  SUBSTRING_INDEX(t.name,'#39' '#39',1) name, count(1)  kolvo FROM' +
        ' garant.tovar t'
      ''
      'group by SUBSTRING_INDEX(t.name,'#39' '#39',1)'
      'order by kolvo desc')
    Left = 512
    Top = 56
  end
  object markaQuery: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'SELECT f.name,'
      'count(1) kolvo,'
      'count(1)-sum(r.close) remont '
      'FROM garant.tovar t,garant.firma f,garant.remont r'
      'where t.name like concat(:tip,'#39' %'#39',f.name,'#39'%'#39')'
      'and r.tovar=t.id'
      'group by f.name'
      'order by kolvo desc')
    Left = 568
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'tip'
        ParamType = ptUnknown
      end>
  end
  object vozvQ: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      
        'SELECT t.*,u.name user,m.name mag,k.name tname,c.name client,c.t' +
        'el,'
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
      'and c.tel<>'#39'-'#39
      'and t.data between :nd and :kd'
      'order by t.data')
    Left = 592
    Top = 144
    ParamData = <
      item
        DataType = ftDate
        Name = 'nd'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'kd'
        ParamType = ptUnknown
      end>
  end
  object updWarn: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'update remont set warn=:warn'
      'where id=:remontid')
    Left = 312
    Top = 272
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'warn'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'remontid'
        ParamType = ptUnknown
      end>
  end
  object warnQ: TmySQLQuery
    Database = myBase
    SQL.Strings = (
      'select t.id,t.name,t.serialnum,t.mesto,c.name'
      'from garant.tovar t,'
      'garant.remont r,'
      'garant.customer c'
      'where t.id=r.tovar'
      'and r.warn=1'
      'and t.mesto<>'#39'-'#39
      'and r.clientid>0'
      'and c.id=r.clientid')
    Left = 208
    Top = 24
  end
  object warnds: TDataSource
    DataSet = warnQ
    Left = 248
    Top = 24
  end
  object warnEQ: TmySQLQuery
    Database = myBase
    DataSource = warnds
    SQL.Strings = (
      'SELECT * FROM  garant.events'
      'where remont=:id '
      'and warn=1 order by data desc')
    Left = 304
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object tovvremonte: TmySQLQuery
    Database = myBase
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
      'and datediff(curdate(),r.data)>=90'
      'order by r.data')
    Left = 384
    Top = 32
  end
end
