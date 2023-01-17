object tovinform: Ttovinform
  Left = 384
  Top = 131
  BorderStyle = bsToolWindow
  Caption = #1087#1088#1080#1105#1084' '#1090#1086#1074#1072#1088#1072' '#1074' '#1088#1077#1084#1086#1085#1090
  ClientHeight = 528
  ClientWidth = 577
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 487
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object pagecontrol: TPageControl
      Left = 1
      Top = 1
      Width = 575
      Height = 485
      ActivePage = TabSheet4
      Align = alClient
      Style = tsFlatButtons
      TabHeight = 1
      TabOrder = 0
      TabStop = False
      TabWidth = 1
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object Label8: TLabel
          Left = 13
          Top = 0
          Width = 122
          Height = 20
          Caption = #1076#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 13
          Top = 56
          Width = 145
          Height = 20
          Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 10
          Top = 104
          Width = 51
          Height = 20
          Caption = #1089#1077#1088'.'#8470
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 421
          Top = 8
          Width = 139
          Height = 20
          Caption = #1076#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 169
          Top = 0
          Width = 70
          Height = 20
          Caption = #1084#1072#1075#1072#1079#1080#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object maglabel: TLabel
          Left = 153
          Top = 32
          Width = 7
          Height = 20
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object pricel: TLabel
          Left = 381
          Top = 104
          Width = 120
          Height = 20
          Caption = #1094#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object dataselledit: TDBDateTimeEditEh
          Left = 14
          Top = 29
          Width = 121
          Height = 22
          Ctl3D = True
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Flat = True
          Kind = dtkDateEh
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = True
          OnCloseUp = dataselleditCloseUp
          OnKeyDown = dataselleditKeyDown
        end
        object DBGridtovin: TDBGridEh
          Left = 0
          Top = 204
          Width = 567
          Height = 270
          TabStop = False
          Align = alBottom
          AutoFitColWidths = True
          Ctl3D = False
          DataGrouping.GroupLevels = <>
          DataSource = DataSource1
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentCtl3D = False
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          Visible = False
          OnDblClick = DBGridtovinDblClick
          OnKeyDown = DBGridtovinKeyDown
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object tovnameedit: TDBEditEh
          Left = 14
          Top = 78
          Width = 459
          Height = 22
          Ctl3D = True
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Flat = True
          MaxLength = 45
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Visible = True
          OnKeyDown = tovnameeditKeyDown
          OnKeyPress = tovnameeditKeyPress
        end
        object tovnumbedit: TDBEditEh
          Left = 13
          Top = 127
          Width = 316
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
          TabOrder = 2
          Visible = True
          OnKeyDown = tovnumbeditKeyDown
        end
        object datadoceh: TDBDateTimeEditEh
          Left = 424
          Top = 32
          Width = 121
          Height = 19
          EditButtons = <>
          Flat = True
          Kind = dtkDateEh
          TabOrder = 5
          Visible = True
          OnCloseUp = datadocehCloseUp
        end
        object prodbox: TDBLookupComboboxEh
          Left = 168
          Top = 29
          Width = 217
          Height = 22
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Flat = True
          KeyField = 'name'
          ListField = 'name'
          ListSource = DataSource5
          ParentFont = False
          TabOrder = 6
          Visible = True
        end
        object priceED: TDBNumberEditEh
          Left = 384
          Top = 125
          Width = 121
          Height = 21
          currency = True
          DecimalPlaces = 0
          EditButtons = <>
          MaxValue = 199999.000000000000000000
          TabOrder = 3
          Value = 0.000000000000000000
          Visible = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        object Label12: TLabel
          Left = 0
          Top = 16
          Width = 162
          Height = 20
          Caption = #1086#1087#1080#1089#1072#1085#1080#1077' '#1076#1077#1092#1077#1082#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 10
          Top = 373
          Width = 122
          Height = 20
          Caption = #1082#1086#1084#1087#1083#1077#1082#1090#1072#1094#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 3
          Top = 75
          Width = 112
          Height = 20
          Caption = #1074#1085#1077#1096#1085#1080#1081' '#1074#1080#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 131
          Width = 96
          Height = 20
          Caption = #1090#1080#1087' '#1090#1086#1074#1072#1088#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object primedit: TDBEditEh
          Left = 3
          Top = 38
          Width = 430
          Height = 24
          TabStop = False
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          TabOrder = 0
          Visible = True
          OnKeyDown = primeditKeyDown
        end
        object kompedit: TDBEditEh
          Left = 11
          Top = 411
          Width = 430
          Height = 24
          TabStop = False
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          TabOrder = 1
          Visible = True
          OnKeyDown = kompeditKeyDown
        end
        object videdit: TDBEditEh
          Left = 3
          Top = 100
          Width = 430
          Height = 24
          TabStop = False
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          TabOrder = 2
          Visible = True
          OnKeyDown = videditKeyDown
        end
        object tipname: TDBLookupComboboxEh
          Left = 161
          Top = 130
          Width = 145
          Height = 21
          TabStop = False
          EditButtons = <>
          KeyField = 'id'
          ListField = 'name'
          ListSource = DataSource2
          TabOrder = 3
          Visible = True
          OnChange = tipnameChange
          OnCloseUp = tipnameCloseUp
          OnKeyDown = tipnameKeyDown
        end
        object chekbox: TCheckListBox
          Left = 160
          Top = 160
          Width = 273
          Height = 241
          TabStop = False
          OnClickCheck = chekboxClickCheck
          ItemHeight = 13
          Style = lbOwnerDrawFixed
          TabOrder = 4
          Visible = False
          OnKeyDown = chekboxKeyDown
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ImageIndex = 2
        object Label3: TLabel
          Left = 136
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
          Left = 30
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
          Left = 31
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
          Left = 7
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
        object clientname: TDBEditEh
          Left = 87
          Top = 26
          Width = 370
          Height = 24
          EditButtons = <>
          Enabled = False
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
          Left = 87
          Top = 55
          Width = 370
          Height = 24
          TabStop = False
          EditButtons = <>
          Enabled = False
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
          Left = 87
          Top = 84
          Width = 178
          Height = 24
          TabStop = False
          EditButtons = <>
          Enabled = False
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
        object clientgrid: TDBGridEh
          Left = 0
          Top = 156
          Width = 567
          Height = 318
          Align = alBottom
          AutoFitColWidths = True
          Ctl3D = False
          DataGrouping.GroupLevels = <>
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
          RowDetailPanel.Color = clBtnFace
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Visible = False
          OnDblClick = clientgridDblClick
          OnKeyDown = clientgridKeyDown
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'TabSheet4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ImageIndex = 3
        ParentFont = False
        object Label15: TLabel
          Left = 6
          Top = 14
          Width = 136
          Height = 20
          Caption = #1085#1072#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1057#1062
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 6
          Top = 54
          Width = 130
          Height = 20
          Caption = #1087#1086#1076#1084#1077#1085#1072' '#1090#1086#1074#1072#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label9: TLabel
          Left = 6
          Top = 86
          Width = 185
          Height = 20
          Caption = #1087#1086#1076#1084#1077#1085#1072' '#1057#1077#1088#1080#1081#1085#1099#1081' '#8470
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label10: TLabel
          Left = 9
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
          Visible = False
        end
        object datalabel: TLabel
          Left = 9
          Top = 176
          Width = 92
          Height = 20
          Caption = #1076#1086#1089#1090#1072#1074#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object timelabel: TLabel
          Left = 241
          Top = 176
          Width = 51
          Height = 20
          Caption = #1087#1086#1089#1083#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object servbox: TDBLookupComboboxEh
          Left = 195
          Top = 12
          Width = 196
          Height = 24
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'id'
          ListField = 'name'
          ListSource = magds
          ParentFont = False
          TabOrder = 0
          Visible = True
          OnKeyDown = servboxKeyDown
        end
        object podmenaname: TDBEditEh
          Left = 194
          Top = 52
          Width = 283
          Height = 22
          TabStop = False
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
          Visible = False
          OnKeyDown = podmenanameKeyDown
        end
        object podmenanum: TDBEditEh
          Left = 193
          Top = 84
          Width = 283
          Height = 22
          TabStop = False
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Flat = True
          MaxLength = 45
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnKeyDown = podmenanumKeyDown
        end
        object saveB: TBitBtn
          Left = 160
          Top = 408
          Width = 273
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1088#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100
          TabOrder = 7
          OnClick = saveBClick
        end
        object dostavka: TCheckBox
          Left = 8
          Top = 144
          Width = 209
          Height = 17
          Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1091
          TabOrder = 3
          Visible = False
          OnClick = dostavkaClick
          OnKeyDown = dostavkaKeyDown
        end
        object vodbox: TDBLookupComboboxEh
          Left = 112
          Top = 216
          Width = 241
          Height = 22
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Flat = True
          KeyField = 'id'
          ListField = 'name'
          ListSource = DataSource4
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnKeyDown = vodboxKeyDown
        end
        object dataDost: TDBDateTimeEditEh
          Left = 113
          Top = 175
          Width = 115
          Height = 22
          Ctl3D = True
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Flat = True
          Kind = dtkDateEh
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnKeyDown = dataDostKeyDown
        end
        object timeDost: TDBComboBoxEh
          Left = 304
          Top = 176
          Width = 121
          Height = 22
          DropDownBox.Rows = 12
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Flat = True
          Items.Strings = (
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnKeyDown = timeDostKeyDown
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 487
    Width = 577
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BackB: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1088#1077#1076'.'#1089#1090#1088'.'
      TabOrder = 0
      OnClick = BackBClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object forB: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = #1057#1083#1077#1076'.'#1089#1090#1088'.'
      TabOrder = 1
      OnClick = forBClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 486
      Top = 5
      Width = 83
      Height = 31
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object tovsellQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT s.id,t.name tovname,s.serialnum ,s.mag      '
      ' FROM garant.sell s,garant.sprav t'
      'where s.sprav=t.id'
      'and s.data=:data'
      ''
      'order by t.name')
    Left = 37
    Top = 268
    ParamData = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = tovsellQ
    Left = 69
    Top = 268
  end
  object seltip: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT * FROM garant.tip order by id')
    Left = 133
    Top = 268
  end
  object DataSource2: TDataSource
    DataSet = seltip
    Left = 173
    Top = 268
  end
  object selcomplect: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select name from complect where tip=:tip')
    Left = 224
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tip'
        ParamType = ptUnknown
      end>
    object selcomplectname: TStringField
      FieldName = 'name'
      Size = 45
    end
  end
  object ClientQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'SELECT * FROM garant.customer where id>0 and LOWER(name) like :n' +
        'ame'
      'order by name')
    Left = 293
    Top = 268
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end>
  end
  object DataSource3: TDataSource
    DataSet = ClientQ
    Left = 325
    Top = 268
  end
  object magdb: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select * from magazin where servis=1')
    Left = 368
    Top = 264
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
    Left = 408
    Top = 264
  end
  object findtovq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select id from tovar where'
      'name like :name '
      'and serialnum like :num'
      'and inuse=0')
    Left = 45
    Top = 324
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'num'
        ParamType = ptUnknown
      end>
  end
  object newTovarq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into tovar (name,serialnum,tip)'
      'values (:name,:num,:tip) ')
    Left = 93
    Top = 324
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'num'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tip'
        ParamType = ptUnknown
      end>
  end
  object findclQ: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select id from customer where'
      'lower(name) like :name '
      'and lower(adres) like :adr')
    Left = 141
    Top = 324
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
    Left = 189
    Top = 324
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
  object insertRemQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'insert into remont (tovar,price,magid,userid,clientid,data,podme' +
        'na,comment,skladid,scenter,complect,vid,dostavka,driver,datadost' +
        ')'
      
        'values (:tovar,:price,:magid,:userid,:clientid,:data,:podmena,:c' +
        'omment,:sklad,:scenter,:complect,:vid,:dostavka,:driver,:datados' +
        't)')
    Left = 48
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tovar'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'price'
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
        DataType = ftInteger
        Name = 'podmena'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'comment'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sklad'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'scenter'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'complect'
        ParamType = ptUnknown
        Value = '-'
      end
      item
        DataType = ftString
        Name = 'vid'
        ParamType = ptUnknown
        Value = '-'
      end
      item
        DataType = ftInteger
        Name = 'dostavka'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'driver'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'datadost'
        ParamType = ptUnknown
      end>
  end
  object updTovarQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update tovar set inuse=:inuse,client=:client,mesto=:sklad'
      'where id=:id')
    Left = 96
    Top = 360
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'inuse'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'client'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'sklad'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object remidQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select id from remont where'
      'tovar=:tovar and magid=:magid and date(data)=:data')
    Left = 136
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tovar'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'magid'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end>
    object remidQueryid: TAutoIncField
      FieldName = 'id'
    end
  end
  object delpodmena: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'delete from podmena where remontid=:id')
    Left = 192
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object insPodmenaQuery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'insert into podmena (tovarid,remontid)'
      'values (:tovar,:remont)')
    Left = 240
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tovar'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'remont'
        ParamType = ptUnknown
      end>
  end
  object updMesto: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update  tovar set mesto=:mesto'
      'where id=:id')
    Left = 288
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'mesto'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object selpictquery: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select * from pict where remont=:id')
    Left = 336
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object selpictqueryid: TAutoIncField
      DisplayWidth = 6
      FieldName = 'id'
      Visible = False
    end
    object selpictqueryremont: TIntegerField
      DisplayWidth = 10
      FieldName = 'remont'
      Visible = False
    end
    object selpictqueryFILENAME: TStringField
      DisplayWidth = 17
      FieldName = 'FILENAME'
      Size = 50
    end
    object selpictqueryFILE: TBlobField
      DisplayWidth = 10
      FieldName = 'FILE'
      Visible = False
      Size = 4
    end
  end
  object spravq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select id,name tovname'
      'from garant.sprav'
      'where isfolder=2'
      'and lower(name) like :name'
      'order by name')
    Left = 37
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
      end>
  end
  object updatesell: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'update garant.sell set tovar=:tovar,customer=:client'
      'where id=:id')
    Left = 69
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tovar'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'client'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object InsertSell: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      
        'insert into garant.sell (tovar,data,mag,owner,customer,serialnum' +
        ',sprav)'
      'values (:tovar,:data,:mag,:owner,:customer,:serialnum,:sprav)'
      '')
    Left = 133
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'tovar'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'mag'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'owner'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'customer'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'serialnum'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'sprav'
        ParamType = ptUnknown
      end>
  end
  object vodq: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'SELECT * FROM users  where prof=4')
    Left = 368
    Top = 216
  end
  object DataSource4: TDataSource
    DataSet = vodq
    Left = 400
    Top = 216
  end
  object magview: TmySQLQuery
    Database = dm.myBase
    SQL.Strings = (
      'select * from magazin where servis=0'
      'and id not in (4)')
    Left = 488
    Top = 240
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
    end
    object StringField1: TStringField
      FieldName = 'name'
      Size = 45
    end
    object StringField2: TStringField
      FieldName = 'adres'
      Size = 45
    end
    object StringField3: TStringField
      FieldName = 'tel'
      Size = 45
    end
    object SmallintField1: TSmallintField
      FieldName = 'servis'
    end
    object magdbemail: TStringField
      FieldName = 'email'
      Size = 45
    end
  end
  object DataSource5: TDataSource
    DataSet = magview
    Left = 448
    Top = 240
  end
end
