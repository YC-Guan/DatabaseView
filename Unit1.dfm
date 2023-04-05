object Form1: TForm1
  Left = 503
  Top = 250
  Width = 882
  Height = 540
  Caption = #25968#25454#24211#27983#35272#26597#30475#22120
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter
    Left = 678
    Top = 57
    Height = 419
    Align = alRight
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 678
    Height = 419
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
  end
  object ListView1: TListView
    Left = 681
    Top = 57
    Width = 185
    Height = 419
    Align = alRight
    Columns = <
      item
        AutoSize = True
        Caption = #34920#21517
      end
      item
        Alignment = taRightJustify
        Caption = #35760#24405#25968
      end>
    TabOrder = 1
    ViewStyle = vsReport
    OnClick = ListView1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 192
      Top = 24
      Width = 48
      Height = 12
      Caption = #36830#25509#23383#20018
    end
    object Button1: TButton
      Left = 16
      Top = 11
      Width = 75
      Height = 33
      Caption = #36830#25509#21521#23548
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 11
      Width = 75
      Height = 33
      Caption = #25163#21160#36830#25509
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 256
      Top = 20
      Width = 561
      Height = 20
      TabOrder = 2
    end
  end
  object sb: TStatusBar
    Left = 0
    Top = 476
    Width = 866
    Height = 25
    Panels = <
      item
        Text = #31243#24207#35774#35745#65306'GuanWenBing 2023.4'
        Width = 200
      end
      item
        Text = ' '#35831#20351#29992#36830#25509#21521#23548#25110#36830#25509#23383#20018#25171#24320#25968#25454#24211#65281
        Width = 50
      end>
  end
  object aConn: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\'#23384#26723'\'#39135#22530#36134'\'#39135#22530#24211#23384#31649#29702'\kc' +
      'db2222.mdb;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 168
  end
  object adoLST: TADOQuery
    Connection = aConn
    Parameters = <>
    Left = 200
    Top = 176
  end
  object adoTBL: TADOQuery
    Connection = aConn
    Parameters = <>
    Left = 240
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = adoTBL
    Left = 152
    Top = 168
  end
end
