object Frm: TFrm
  Left = 450
  Top = 312
  Width = 679
  Height = 420
  Caption = 'Aprende'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Assunto'
  end
  object EdAssunto: TEdit
    Left = 16
    Top = 24
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object Memo: TMemo
    Left = 16
    Top = 48
    Width = 185
    Height = 121
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 216
    Top = 56
    Width = 161
    Height = 120
    DataSource = DataSource
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Assunto'
        Width = 81
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 32
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object btGravar: TButton
    Left = 216
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 4
    OnClick = btGravarClick
  end
  object btAbrir: TButton
    Left = 296
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 5
    OnClick = btAbrirClick
  end
  object Button2: TButton
    Left = 40
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 456
    Top = 232
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'ComboBox1'
  end
  object TabDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 16
    object TabDadosAssunto: TStringField
      FieldName = 'Assunto'
      Size = 100
    end
    object TabDadosSobre: TMemoField
      FieldName = 'Sobre'
      BlobType = ftMemo
    end
  end
  object DataSource: TDataSource
    DataSet = TabDados
    Left = 320
    Top = 16
  end
  object SaveDialog: TSaveDialog
    Left = 416
    Top = 32
  end
  object OpenDialog: TOpenDialog
    Left = 416
    Top = 80
  end
end
