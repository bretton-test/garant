�
 TFORM1 0[  TPF0TForm1Form1LeftqTop� BorderStylebsToolWindowCaption   отправка почтыClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStyle
fsMDIChildOldCreateOrder	PositionpoDesktopCenterVisible	OnClose	FormCloseOnCreate
FormCreate	OnDestroyFormDestroyPixelsPerInch`
TextHeight TLabelLabel9LeftyTop� Width!HeightCaptionStatus:  TButtonbtnSendMailLeftyTopxWidthxHeightCaption   отправить почтуTabOrderOnClickbtnSendMailClick  
TStatusBar
StatusBar1Left Top�Width�HeightPanelsWidth, Width�   SimplePanel	
SimpleText;Enter info and click the Send Mail button to send the email  	TGroupBox	GroupBox1LeftTopWidthoHeight�Caption	 Message TabOrder  TLabelLabel1LeftTop,Width0HeightCaption
Mail From:  TLabelLabel2LeftTopDWidth&HeightCaptionMail To:  TLabelLabel3LeftTop\Width'HeightCaptionMail CC:  TLabelLabel4LeftTop� Width.HeightCaptionMessage:  TLabelLabel6LeftTopWidth'HeightCaptionSubject:  TLabelLabel7LeftToptWidth.HeightCaption	Mail BCC:  TLabelLabel8LeftTop�WidthAHeightCaptionAttachments:   TEditedtMailFromLeftDTop(WidthHeightTabOrderTextservis@kamensktel.ru  TEdit	edtMailCCLeftDTopXWidthHeightTabOrder  TMemo
memMessageLeftDTop� WidthHeightLines.Stringstest message TabOrderWantReturnsWordWrap  TEdit
edtSubjectLeftDTopWidthHeightTabOrder Texttest  TEdit
edtMailBCCLeftDToppWidthHeightTabOrder  	TComboBox	cbxMailToLeftDTop@WidthHeight
ItemHeightTabOrderTextmikew@turbopower.com
OnKeyPresscbxMailToKeyPress  	TComboBoxcbxAttachmentsLeftDTop�WidthHeight
ItemHeightTabOrder
OnKeyPresscbxAttachmentsKeyPress  TButtonbtnBrowseAttachmentLeftNTop�WidthHeightCaption...TabOrderOnClickbtnBrowseAttachmentClick   	TGroupBox	GroupBox2LeftyTopWidth� HeightqCaption Account info TabOrder TLabelLabel5LeftTopWidthCHeightCaptionSMTP Server:  TLabelLabel10LeftTop,Width$HeightCaptionUserID:  TLabelLabel11LeftTopDWidth'HeightCaptionDomain:  TEditedtSMTPAddressLeftZTopWidth� HeightTabOrder Textmail.kamensktel.ru  TEdit	edtUserIDLeftZTop(Width� HeightTabOrder  TEdit	edtDomainLeftZTop@Width� HeightTabOrder  	TCheckBoxcbxCloseOnCompleteLeftTopXWidth� HeightCaptionDisconnect after sendingChecked	State	cbCheckedTabOrder   TListBoxListBox1LeftyTop� Width8Height
ItemHeightTabOrder  TOpenDialogOpenDialog1LeftxTop�   TIpSmtpClientIpSmtpClient1Message.ContentTransferEncodingem7BitXMailerInternet ProfessionalDebugLog.BufferSize   DebugLog.WriteModewmOverwriteDebugLog.EnabledDebugLog.FileName	debug.logEventLog.DateTimeFormatyyyy.mm.dd hh:nn:ssEventLog.EnabledEventLog.FileName	event.logIdleTimeout TimerInterval�OnConnectErrorIpSmtpClient1ConnectError
OnProgressIpSmtpClient1Progress
OnResponseIpSmtpClient1SmtpResponseOnStateChangeIpSmtpClient1SmtpStateChangeOnTaskCompleteIpSmtpClient1TaskCompleteOnErrorIpSmtpClient1ErrorLeft�Top�    