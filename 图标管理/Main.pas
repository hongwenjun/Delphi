unit Main;

{$DEFINE D7UP}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  CUtils, Vcl.ExtCtrls, System.IOUtils, System.ImageList, Vcl.ImgList,
  Icon2Base64, ArrayEx;

type
  TForm1 = class(TForm)
    tv1: TTreeView;
    pnl1: TPanel;
    grp1: TGroupBox;
    edt_CBar_Caption: TEdit;
    lbl3: TLabel;
    lbl2: TLabel;
    edt_CBar_Name: TEdit;
    edt_CBar_Guid: TEdit;
    lbl1: TLabel;
    pnl2: TPanel;
    grp2: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt_CButton_Caption: TEdit;
    edt_CButton_Cmd: TEdit;
    edt_CButton_Guid: TEdit;
    pnl3: TPanel;
    grp3: TGroupBox;
    lbl7: TLabel;
    lbl9: TLabel;
    edt_CSub_Caption: TEdit;
    edt_CSub_Guid: TEdit;
    edt_CButton_IconPath: TEdit;
    lbl10: TLabel;
    edt_CSub_Guid2: TEdit;
    lbl11: TLabel;
    edt_CSub_IconPath: TEdit;
    lbl12: TLabel;
    btn_Modify: TButton;
    btn_Exit: TButton;
    btn_AddButton: TButton;
    btn_AddSub: TButton;
    btn_AddSeg: TButton;
    btn_Delete: TButton;
    btn_ExportX4: TButton;
    btn_ExportX7: TButton;
    btn_ExportX8: TButton;
    btn_CButton_Browse: TButton;
    btn_CSub_Browse: TButton;
    flpndlg1: TFileOpenDialog;
    img_CButton_img: TImage;
    img_CSub_img: TImage;
    flsvdlg1: TFileSaveDialog;
    lbl8: TLabel;
    edt_CButton_Tooltip: TEdit;
    edt_CSub_Tooltip: TEdit;
    lbl13: TLabel;
    lbl14: TLabel;
    edt_CButton_IconGuid: TEdit;
    edt_CSub_IconGuid: TEdit;
    lbl15: TLabel;
    btn1: TButton;
    btn_MoveUp: TButton;
    btn_MoveDown: TButton;
    procedure tv1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ModifyClick(Sender: TObject);
    procedure btn_AddButtonClick(Sender: TObject);
    procedure btn_AddSubClick(Sender: TObject);
    procedure btn_AddSegClick(Sender: TObject);
    procedure btn_CButton_BrowseClick(Sender: TObject);
    procedure btn_CSub_BrowseClick(Sender: TObject);
    procedure btn_ExportX7Click(Sender: TObject);
    procedure btn_ExportX4Click(Sender: TObject);
    procedure btn_ExportX8Click(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn_MoveUpClick(Sender: TObject);
    procedure btn_MoveDownClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    xmlPath: string;
    mCommandBar: SCommandBar;
  private
    procedure Reload(fromTreeView: Boolean = False);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_ModifyClick(Sender: TObject);
var
  cmdButton: SCommandButton;
  tn: TTreeNode;
begin
  if tv1.Selected = nil then
    Exit;
  tn := tv1.Selected;
  if tv1.Selected.Level = 0 then
  begin
    mCommandBar.Guid := edt_CBar_Guid.Text;
    mCommandBar.Name := edt_CBar_Name.Text;
    mCommandBar.Caption := edt_CBar_Caption.Text;
  end
  else
  begin
    cmdButton := tv1.Selected.Data;
    case cmdButton.Type_ of
      SCommandButtonTypeNormal:
        begin
          cmdButton.Guid := edt_CButton_Guid.Text;
          cmdButton.DynamicCommand := edt_CButton_Cmd.Text;
          cmdButton.Caption := edt_CButton_Caption.Text;
          cmdButton.IconPath := edt_CButton_IconPath.Text;
          cmdButton.ToolTip := edt_CButton_Tooltip.Text;
          cmdButton.IconGuid := edt_CButton_IconGuid.Text;
        end;
      SCommandButtonTypeSegmentation:
        ;
      SCommandButtonTypeSub:
        begin
          cmdButton.Guid := edt_CSub_Guid.Text;
          cmdButton.Caption := edt_CSub_Caption.Text;
          cmdButton.IconPath := edt_CSub_IconPath.Text;
          cmdButton.ToolTip := edt_CSub_Tooltip.Text;
          SubCommandBar(cmdButton).FlyoutBarRef := edt_CSub_Guid2.Text;
          cmdButton.IconGuid := edt_CSub_IconGuid.Text;
        end;
    end;
  end;
  Reload;
  tv1.Selected := tn;
end;

procedure TForm1.btn_MoveDownClick(Sender: TObject);
var
  tt: TTreeNode;
begin
  tt := tv1.Selected.GetNext;
  if tt <> nil then
  begin
    if tv1.Selected.Level = tt.Level then
      tt.MoveTo(tv1.Selected, TNodeAttachMode.naInsert);
    Reload(True);
  end;
end;

procedure TForm1.btn_MoveUpClick(Sender: TObject);
var
  tt: TTreeNode;
begin
  tt := tv1.Selected.GetPrev;
  if tt <> nil then
  begin
    if tv1.Selected.Level = tt.Level then
      tv1.Selected.MoveTo(tt, TNodeAttachMode.naInsert);
    Reload(True);
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  mCommandBar.SaveToFile(xmlPath);
end;

procedure TForm1.FormShow(Sender: TObject);
var
  cmdButton, cmdButton1: SCommandButton;
begin
  xmlPath := '\\TT3\d\save.xml';
  mCommandBar := SCommandBar.Create(Self, xmlPath);

  pnl1.Visible := True;
  pnl2.Visible := False;
  pnl3.Visible := False;
  Reload;
end;

procedure TForm1.tv1Click(Sender: TObject);
var
  cmdButton: SCommandButton;
  img: TWICImage;
begin
  if tv1.Selected = nil then
    Exit;
  if tv1.Selected.Level = 0 then
  begin
    pnl1.Visible := True;
    pnl2.Visible := False;
    pnl3.Visible := False;
    edt_CBar_Guid.Text := mCommandBar.Guid;
    edt_CBar_Name.Text := mCommandBar.Name;
    edt_CBar_Caption.Text := mCommandBar.Caption;
  end
  else
  begin
    cmdButton := tv1.Selected.Data;
    case cmdButton.Type_ of
      SCommandButtonTypeNormal:
        begin
          pnl1.Visible := False;
          pnl2.Visible := True;
          pnl3.Visible := False;
          grp2.Caption := '命令按钮';
          grp2.Enabled := True;
          edt_CButton_Guid.Text := cmdButton.Guid;
          edt_CButton_Cmd.Text := cmdButton.DynamicCommand;
          edt_CButton_Caption.Text := cmdButton.Caption;
          edt_CButton_IconPath.Text := cmdButton.IconPath;
          edt_CButton_Tooltip.Text := cmdButton.ToolTip;
          edt_CButton_IconGuid.Text := cmdButton.IconGuid;
          img_CButton_img.Picture := nil;
          if FileExists(cmdButton.IconPath) then
          begin
            img := TWICImage.Create;
            img.LoadFromFile(cmdButton.IconPath);
            img_CButton_img.Picture.Assign(img);
          end;
        end;
      SCommandButtonTypeSegmentation:
        begin
          pnl1.Visible := False;
          pnl2.Visible := True;
          pnl3.Visible := False;
          grp2.Caption := '分割线';
          grp2.Enabled := False;
          edt_CButton_Guid.Text := cmdButton.Guid;
          edt_CButton_Cmd.Text := '';
          edt_CButton_Caption.Text := '';
          edt_CButton_IconPath.Text := '';
          edt_CButton_Tooltip.Text := '';
          edt_CButton_IconGuid.Text := '';
          img_CButton_img.Picture := nil;
        end;
      SCommandButtonTypeSub:
        begin
          pnl1.Visible := False;
          pnl2.Visible := False;
          pnl3.Visible := True;
          edt_CSub_Guid.Text := cmdButton.Guid;
          edt_CSub_Guid2.Text := SubCommandBar(cmdButton).FlyoutBarRef;
          edt_CSub_Caption.Text := cmdButton.Caption;
          edt_CSub_IconPath.Text := cmdButton.IconPath;
          edt_CSub_Tooltip.Text := cmdButton.ToolTip;
          edt_CSub_IconGuid.Text := cmdButton.IconGuid;
          img_CSub_img.Picture := nil;
          if FileExists(cmdButton.IconPath) then
          begin
            img := TWICImage.Create;
            img.LoadFromFile(cmdButton.IconPath);
            img_CSub_img.Picture.Assign(img);
          end;
        end;
    end;
  end;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  mCommandBar.ToX4('\\Tt3\d\360data\Data\文档\百度云同步盘\vspro\Delphi工程\cdrPlugin1\UI\x4.xslt');
  mCommandBar.ToX7('\\Tt3\d\360data\Data\文档\百度云同步盘\vspro\Delphi工程\cdrPlugin1\UI\x7\x7.cdws');
  mCommandBar.ToX8('\\Tt3\d\360data\Data\文档\百度云同步盘\vspro\Delphi工程\cdrPlugin1\UI\x8\x8.cdws');
end;

procedure TForm1.btn_AddButtonClick(Sender: TObject);
var
  cmdButton, cmdButton1: SCommandButton;
  tn: TTreeNode;
begin
  tn := tv1.Selected;
  if (tv1.Selected = nil) or (tv1.Selected.Data = Pointer(0)) then
  begin
    cmdButton := SCommandButton.Create;
    mCommandBar.AddCommandButton(cmdButton);
  end
  else
  begin
    cmdButton := tv1.Selected.Data;
    case cmdButton.Type_ of
      SCommandButtonTypeNormal, SCommandButtonTypeSegmentation:
        begin
          cmdButton1 := SCommandButton.Create;
          mCommandBar.AddCommandButton(cmdButton1);
        end;
      SCommandButtonTypeSub:
        begin
          cmdButton1 := SCommandButton.Create;
          SubCommandBar(cmdButton).AddCommandButton(cmdButton1);
        end;
    end;
  end;
  Reload;
  tv1.Selected := tn;
end;

procedure TForm1.btn_AddSegClick(Sender: TObject);
var
  cmdButton, cmdButton1: SCommandButton;
  tn: TTreeNode;
begin
  tn := tv1.Selected;
  if tv1.Selected.Data = Pointer(0) then
  begin
    cmdButton := SegmentationCommandButton.Create;
    mCommandBar.AddCommandButton(cmdButton);
  end
  else
  begin
    cmdButton := tv1.Selected.Data;
    case cmdButton.Type_ of
      SCommandButtonTypeNormal, SCommandButtonTypeSegmentation:
        begin
          cmdButton1 := SegmentationCommandButton.Create;
          mCommandBar.AddCommandButton(cmdButton1);
        end;
      SCommandButtonTypeSub:
        begin
          cmdButton1 := SegmentationCommandButton.Create;
          SubCommandBar(cmdButton).AddCommandButton(cmdButton1);
        end;
    end;
  end;
  Reload;
  tv1.Selected := tn;
end;

procedure TForm1.btn_AddSubClick(Sender: TObject);
var
  cmdButton, cmdButton1: SCommandButton;
  tn: TTreeNode;
begin
  tn := tv1.Selected;
  cmdButton := SubCommandBar.Create;
  mCommandBar.AddCommandButton(cmdButton);
  Reload;
  tv1.Selected := tn;
end;

procedure TForm1.btn_CButton_BrowseClick(Sender: TObject);
var
  img: TWICImage;
begin
  //flpndlg1.DefaultFolder := TPath.GetDirectoryName(edt_CButton_IconPath.Text);
  if flpndlg1.Execute then
  begin
    edt_CButton_IconPath.Text := flpndlg1.FileName;
    img := TWICImage.Create;
    img.LoadFromFile(flpndlg1.FileName);
    img_CButton_img.Picture := nil;
    img_CButton_img.Picture.Assign(img);
  end;
end;

procedure TForm1.btn_CSub_BrowseClick(Sender: TObject);
var
  img: TWICImage;
begin
  //flpndlg1.DefaultFolder := TPath.GetDirectoryName(edt_CSub_IconPath.Text);
  if flpndlg1.Execute then
  begin
    edt_CSub_IconPath.Text := flpndlg1.FileName;
    img := TWICImage.Create;
    img.LoadFromFile(flpndlg1.FileName);
    img_CSub_img.Picture := nil;
    img_CSub_img.Picture.Assign(img);
  end;
end;

procedure TForm1.btn_DeleteClick(Sender: TObject);
begin
  if tv1.Selected.Data <> Pointer(0) then
  begin
    tv1.Selected.Delete;
  end;
  Reload(True);
end;

procedure TForm1.btn_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btn_ExportX4Click(Sender: TObject);
begin
  flsvdlg1.FileTypes.Clear;
  flsvdlg1.DefaultExtension := 'xslt';
  with flsvdlg1.FileTypes.Add do
  begin
    DisplayName := 'X4-X6工作区文件';
    FileMask := '*.xslt';
  end;
  if flsvdlg1.Execute then
  begin
    mCommandBar.ToX4(flsvdlg1.FileName);
  end;
end;

procedure TForm1.btn_ExportX7Click(Sender: TObject);
begin
  flsvdlg1.FileTypes.Clear;
  flsvdlg1.DefaultExtension := 'cdws';
  with flsvdlg1.FileTypes.Add do
  begin
    DisplayName := 'X7工作区文件';
    FileMask := '*.cdws';
  end;
  if flsvdlg1.Execute then
  begin
    mCommandBar.ToX7(flsvdlg1.FileName);
  end;
end;

procedure TForm1.btn_ExportX8Click(Sender: TObject);
begin
  flsvdlg1.FileTypes.Clear;
  flsvdlg1.DefaultExtension := 'cdws';
  with flsvdlg1.FileTypes.Add do
  begin
    DisplayName := 'X8工作区文件';
    FileMask := '*.cdws';
  end;
  if flsvdlg1.Execute then
  begin
    mCommandBar.ToX8(flsvdlg1.FileName);
  end;
end;

procedure TForm1.Reload(fromTreeView: Boolean = False);
var
  I, J: Integer;
  bs, bs2: TArrayEx<SCommandButton>;
  cmdButton, cmdButton1: SCommandButton;
  tNode1, tNode2, tNode3: TTreeNode;
  s: string;
begin
  if fromTreeView then
  begin
    bs := [];
    for I := 1 to tv1.Items.Count - 1 do
    begin
      tNode1 := tv1.Items.Item[I];
      cmdButton := tNode1.Data;
      bs.Insert(bs.Len, cmdButton);
      case cmdButton.Type_ of
        SCommandButtonTypeNormal:
          ;
        SCommandButtonTypeSegmentation:
          ;
        SCommandButtonTypeSub:
          begin
            if tNode1.HasChildren then
            begin
              bs2 := [];
              for J := 0 to tNode1.Count - 1 do
              begin
                tNode2 := tNode1.Item[J];
                cmdButton1 := tNode2.Data;
                bs2.Insert(bs2.Len, cmdButton1);
              end;
              SubCommandBar(cmdButton).Buttons := [];
              SubCommandBar(cmdButton).Buttons := bs2;
            end;
          end;
      end;
    end;
    mCommandBar.Buttons := bs;
  end
  else
  begin
    tv1.Items.Clear;
    tNode1 := tv1.Items.AddFirst(nil, mCommandBar.Name);
    for cmdButton in mCommandBar.Buttons do
    begin
      tNode2 := tv1.Items.AddChild(tNode1, cmdButton.Caption);

      tNode2.Data := Pointer(cmdButton);
      case cmdButton.Type_ of
        SCommandButtonTypeNormal:
          begin

          end;
        SCommandButtonTypeSegmentation:
          begin
            tNode2.Text := '-----';
          end;
        SCommandButtonTypeSub:
          begin
            for cmdButton1 in SubCommandBar(cmdButton).Buttons do
            begin
              tNode3 := tv1.Items.AddChild(tNode2, cmdButton1.Caption);
              tNode3.Data := Pointer(cmdButton1);
            end;
          end;
      end;
    end;
  end;
end;

end.

