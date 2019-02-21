unit AdminWin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, Vcl.Grids, ADOOperate,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,enterScoreWin,
  Table_assessment, Table_classes, Table_course, Table_class, Table_parameters, Table_users,
  Table_exam, DataTransform, fileOutput, fileInput, GlobalData,DatabaseManage,
  Vcl.ComCtrls, CheckData, Vcl.Menus, Vcl.OleServer, Word2000;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    classPage: TTabSheet;
    PanelControlClass: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    class_grade_ComboBox: TComboBox;
    class_classID_ComboBox: TComboBox;
    class_studentsNum_Edit: TEdit;
    class_teacher_Edit: TEdit;
    class_operate_RG: TRadioGroup;
    class_submit_btn: TButton;
    coursePage: TTabSheet;
    PanelControlCourse: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    course_courseName_Edit: TEdit;
    course_teacher_Edit: TEdit;
    course_grade_ComboBox: TComboBox;
    course_classID_ComboBox: TComboBox;
    course_submit_btn: TButton;
    course_operate_RG: TRadioGroup;
    studentPage: TTabSheet;
    PanelControlStudents: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    stu_sex_ComboBox: TComboBox;
    stu_stuID_Edit: TEdit;
    stu_name_Edit: TEdit;
    stu_grade_ComboBox: TComboBox;
    stu_classID_ComboBox: TComboBox;
    stu_age_ComboBox: TComboBox;
    stu_submit_btn: TButton;
    stu_operate_RG: TRadioGroup;
    parPage: TTabSheet;
    Panel1: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    par_averLi_base_Edit: TEdit;
    par_dev_base_Edit: TEdit;
    par_greatRatio_base_Edit: TEdit;
    par_averWen_base_Edit: TEdit;
    par_submit_btn: TButton;
    DataSource: TDataSource;
    ADOQuery: TADOQuery;
    outputPage: TTabSheet;
    Panel2: TPanel;
    report_submit_btn: TButton;
    tab_Panel: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    dataInput_Menu: TMenuItem;
    dataOutput_Menu: TMenuItem;
    N4: TMenuItem;
    class_Menu: TMenuItem;
    course_Menu: TMenuItem;
    stu_Menu: TMenuItem;
    exam_Menu: TMenuItem;
    par_Menu: TMenuItem;
    N10: TMenuItem;
    AdminPage: TTabSheet;
    examPage: TTabSheet;
    userPanel: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    admin_newPsw_Edit: TEdit;
    admin_checkPsw_Edit: TEdit;
    admin_oldPsw_Edit: TEdit;
    admin_userName_Edit: TEdit;
    admin_submit_btn: TButton;
    scoreInput_Menu: TMenuItem;
    adminInfo_Menu: TMenuItem;
    usersPage: TTabSheet;
    user_operate_RG: TRadioGroup;
    Label31: TLabel;
    Label32: TLabel;
    userPsw_Edit: TEdit;
    userName_Edit: TEdit;
    powerPanel: TPanel;
    userPowerPanel: TPanel;
    userPower8_CheckBox: TCheckBox;
    userPower7_CheckBox: TCheckBox;
    userPower9_CheckBox: TCheckBox;
    userPower2_CheckBox: TCheckBox;
    userPower1_CheckBox: TCheckBox;
    userPower3_CheckBox: TCheckBox;
    userPower5_CheckBox: TCheckBox;
    userPower4_CheckBox: TCheckBox;
    userPower6_CheckBox: TCheckBox;
    user_submit_btn: TButton;
    Panel4: TPanel;
    exam_operate_RG: TRadioGroup;
    Label34: TLabel;
    Label35: TLabel;
    examTime_Edit: TEdit;
    examName_Edit: TEdit;
    Panel5: TPanel;
    examGradePanel: TPanel;
    examGrade8_CheckBox: TCheckBox;
    examGrade7_CheckBox: TCheckBox;
    examGrade9_CheckBox: TCheckBox;
    examGrade2_CheckBox: TCheckBox;
    examGrade1_CheckBox: TCheckBox;
    examGrade3_CheckBox: TCheckBox;
    examGrade5_CheckBox: TCheckBox;
    examGrade4_CheckBox: TCheckBox;
    examGrade6_CheckBox: TCheckBox;
    exam_submit_btn: TButton;
    exam_grade_RG: TRadioGroup;
    user_power_RG: TRadioGroup;
    Label33: TLabel;
    inputPage: TTabSheet;
    Label37: TLabel;
    term_ComboBox: TComboBox;
    WordApplication1: TWordApplication;
    Panel3: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label38: TLabel;
    report_type_ComboBox: TComboBox;
    report_grade_ComboBox: TComboBox;
    report_classID_ComboBox: TComboBox;
    report_course_ComboBox: TComboBox;
    report_exam_ComboBox: TComboBox;
    promptPanel: TPanel;
    promptLabel: TLabel;
    Panel6: TPanel;
    Label18: TLabel;
    input_type_ComboBox: TComboBox;
    inout_submit_btn: TButton;
    Label19: TLabel;
    input_filePath_Edit: TEdit;
    input_getFile_Button: TButton;
    OpenDialog1: TOpenDialog;
    databasePage: TTabSheet;
    database_Menu: TMenuItem;
    Panel7: TPanel;
    Label21: TLabel;
    database_beginYear_Edit: TEdit;
    database_submit_btn: TButton;
    N2: TMenuItem;
    Label22: TLabel;
    course_courseType_ComboBox: TComboBox;
    Label36: TLabel;
    par_averWen_top_Edit: TEdit;
    par_averLi_top_Edit: TEdit;
    Label39: TLabel;
    Label42: TLabel;
    keepBack_CheckBox: TCheckBox;
    Panel8: TPanel;
    data_course_CheckBox: TCheckBox;
    data_par_CheckBox: TCheckBox;
    data_teacher_CheckBox: TCheckBox;
    data_stu_CheckBox: TCheckBox;
    data_user_CheckBox: TCheckBox;
    Label20: TLabel;
    PageControl2: TPageControl;
    TabSheet: TTabSheet;
    DBGrid1: TDBGrid;
    TextSheet: TTabSheet;
    Memo1: TMemo;
    visual_CheckBox: TCheckBox;
    Label40: TLabel;
    input_exam_ComboBox: TComboBox;
    Label41: TLabel;
    par_grade_ComboBox: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure class_submit_btnClick(Sender: TObject);

    procedure grade_ComboBoxChange(Sender: TObject);
    procedure course_classID_ComboBoxChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure course_submit_btnClick(Sender: TObject);
    procedure stu_submit_btnClick(Sender: TObject);
    procedure par_submit_btnClick(Sender: TObject);
    procedure stu_classID_ComboBoxChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure class_operate_RGClick(Sender: TObject);
    procedure course_operate_RGClick(Sender: TObject);
    procedure report_submit_btnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure admin_submit_btnClick(Sender: TObject);
    procedure exam_operate_RGClick(Sender: TObject);
    procedure exam_grade_RGClick(Sender: TObject);
    procedure exam_submit_btnClick(Sender: TObject);
    procedure user_power_RGClick(Sender: TObject);
    procedure user_operate_RGClick(Sender: TObject);
    procedure user_submit_btnClick(Sender: TObject);
    procedure dataInput_MenuClick(Sender: TObject);
    procedure dataOutput_MenuClick(Sender: TObject);
    procedure stu_MenuClick(Sender: TObject);
    procedure class_MenuClick(Sender: TObject);
    procedure course_MenuClick(Sender: TObject);
    procedure exam_MenuClick(Sender: TObject);
    procedure scoreInput_MenuClick(Sender: TObject);
    procedure adminInfo_MenuClick(Sender: TObject);
    procedure par_MenuClick(Sender: TObject);
    procedure stu_operate_RGClick(Sender: TObject);
    procedure report_type_ComboBoxChange(Sender: TObject);
    procedure input_getFile_ButtonClick(Sender: TObject);
    procedure inout_submit_btnClick(Sender: TObject);
    procedure database_MenuClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure keepBack_CheckBoxClick(Sender: TObject);
    procedure database_submit_btnClick(Sender: TObject);
    procedure class_grade_ComboBoxChange(Sender: TObject);
    procedure input_type_ComboBoxChange(Sender: TObject);

  private
    check : TCheckData;
    classes : Tb_classes;
    course : Tb_course;
    tb_stu : Tb_class;

    exam : Tb_exam;
    user : Tb_users;
    Ado : TADOOperate;

    procedure initInputPanel();
    procedure initOutputPanel();
    procedure initClassPanel();
    procedure initCoursePanel();
    procedure initStuPanel();
    procedure initExamPanel();
    procedure initScoreInputPanel();
    procedure initAdminPanel();
    procedure initParPanel();

    procedure getInfoByGrade(var ComboBox:TComboBox;grade:integer);
    function getExamGrade():string;
    function getUserPower():string;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{***********************************��������***********************************}
procedure TForm1.FormCreate(Sender: TObject);
begin
  check := TCheckData.Create;
  classes := Tb_classes.Create;
  course := Tb_course.Create;
  tb_stu := Tb_class.Create;
  user := Tb_users.Create;
  exam := Tb_exam.Create;

  promptPanel.SetBounds(form1.Width,form1.height,0,0);
  promptPanel.Visible := false;

  AdminPage.TabVisible := false;
  databasePage.TabVisible := false;
  examPage.TabVisible := false;
  inputPage.TabVisible := false;
  usersPage.TabVisible := false;
  classPage.TabVisible := false;
  parPage.TabVisible := false;
  coursePage.TabVisible := false;
  outputPage.TabVisible := false;
  studentPage.TabVisible := false;
  TabSheet.TabVisible := false;
  TextSheet.TabVisible := false;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  pageControl1.Height := form1.Height;

  PageControl2.SetBounds(pageControl1.Width, 0, (form1.Width-pageControl1.Width), form1.Height);
  DBGrid1.SetBounds(10,2,PageControl2.Width-20,PageControl2.Height-20);
  Memo1.SetBounds(10,2,PageControl2.Width-20,PageControl2.Height-20);
end;

{
    ������ʾ��ʽ���   TDBGrid
}
procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const [Ref] Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var i :integer;
    begin
//      if gdSelected in State then Exit;
//    //�����ͷ������ͱ�����ɫ��
//        for i :=0 to (Sender as TDBGrid).Columns.Count-1 do
//        begin
//          (Sender as TDBGrid).Columns[i].Title.Font.Name :='����'; //����
//          (Sender as TDBGrid).Columns[i].Title.Font.Size :=9; //�����С
//          (Sender as TDBGrid).Columns[i].Title.Font.Color :=$000000ff; //������ɫ(��ɫ)
//          (Sender as TDBGrid).Columns[i].Title.Color :=$0000ff00; //����ɫ(��ɫ)
//        end;
//    //���иı����񱳾�ɫ��
//      if ADOQuery.RecNo mod 2 = 0 then
//        (Sender as TDBGrid).Canvas.Brush.Color := clInfoBk //���屳����ɫ
//      else
//        (Sender as TDBGrid).Canvas.Brush.Color := RGB(191, 255, 223); //���屳����ɫ
//    //���������ߵ���ɫ��
//    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
//      with (Sender as TDBGrid).Canvas do //�� cell �ı߿�
//      begin
//        Pen.Color := $00ff0000; //���廭����ɫ(��ɫ)
//        MoveTo(Rect.Left, Rect.Bottom); //���ʶ�λ
//        LineTo(Rect.Right, Rect.Bottom); //����ɫ�ĺ���
//        Pen.Color := $0000ff00; //���廭����ɫ(��ɫ)
//        MoveTo(Rect.Right, Rect.Top); //���ʶ�λ
//        LineTo(Rect.Right, Rect.Bottom); //����ɫ������
//      end;
end;


{***********************************��������***********************************}
procedure TForm1.par_submit_btnClick(Sender: TObject);
var
  flag : boolean;
  parameter : Tb_parameters;

  averWenBase1 : real;         //�Ŀ�ѧ������ΪB���𣬵����꼶ƽ���ֵ�������
  averWenTop1 :real;           //�Ŀ�ѧ������ΪB���𣬸����꼶ƽ���ֵ�������
  averLiBase1 : real;          //����ѧ������ΪB���𣬵����꼶ƽ���ֵ�������
  averLiTop1 : real;           //����ѧ������ΪB���𣬸����꼶ƽ���ֵ�������
  dev1 : real;                 //��׼����ڸò�����ΪA��С����ίC
  greatRatio1 : real;          //�����ʸ��ڸðٷֱ���ΪA��С�ڸðٷֱ���ίC
  grade : integer;
begin
  parameter := Tb_parameters.Create;
  flag := true;

  averWenBase1 := check.par(par_averWen_base_Edit.Text, flag);
  averWenTop1 := check.par(par_averWen_top_Edit.Text, flag);
  averLiBase1 := check.par(par_averLi_base_Edit.Text, flag);
  averLiTop1 := check.par(par_averLi_top_Edit.Text, flag);
  dev1 := check.par(par_dev_base_Edit.Text, flag);
  greatRatio1 := check.par(par_greatRatio_base_Edit.Text, flag);
  grade := check.grage(par_grade_ComboBox.ItemIndex, flag);

  if flag then
  begin
    parameter.changePar(averWenBase1, averWenTop1, averLiBase1, averLiTop1, dev1, greatRatio1,grade);
    parameter.getGradePar(ADOQuery);     //��ʾ��ȡ1-9�꼶
  end else begin
    showmessage('����������������ղ�������˵�����ò���');
  end;
end;



{***********************************�˵�����***********************************}
procedure TForm1.dataInput_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := inputPage;     //���ݵ���
  initInputPanel();
end;

procedure TForm1.initInputPanel;
var
  examName : string;        //��������
  term : string;            //��������ѧ��
begin
  PageControl2.ActivePage := TextSheet;

  exam.selectExam(ADOQuery);
  input_exam_ComboBox.Items.Clear;
  while not ADOQuery.eof do
  begin
    examName := ADOQuery.FieldByName('��������').AsString;
    term := ADOQuery.FieldByName('ѧ��').AsString;
    input_exam_ComboBox.Items.Add(examName+'_'+term);
    ADOQuery.Next;
  end;

  input_exam_ComboBox.Enabled := false;
  input_exam_ComboBox.ItemIndex := -1;
end;

procedure TForm1.dataOutput_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := outPutPage;    //���ݵ��������ɱ���
  initOutputPanel;
end;

procedure TForm1.initOutputPanel;
var
  i : integer;
  examName : string;        //��������
  term : string;            //��������ѧ��
  courseList : TStringList;
begin
  PageControl2.ActivePage := TextSheet;
  Memo1.Lines.Clear;
  Memo1.Lines.Append('Word�����ļ�:');
  Memo1.Lines.Append('    ��ĩ������           ����Ŀ');
  Memo1.Lines.Append('    ����������           ���������ơ���Ŀ');
  Memo1.Lines.Append('    ѧ���ɼ�ͳ�Ʊ�    ���꼶�����');
  Memo1.Lines.Append('    ���Ƴɼ���           �����ԡ��꼶����š���Ŀ');
  Memo1.Lines.Append('Excel�����ļ�:');

  courseList := TStringList.Create;
  courseList.Sorted := true;
  courseList.Duplicates := dupIgnore;  //�����ظ�ֵ�����
  for I := 1 to 9 do
  begin
    course.getCourseByGrade(ADOQuery, i);
    while not ADOQuery.eof do
    begin
      courseList.Add(ADOQuery.FieldByName('�γ�����').AsString);
      ADOQuery.Next;
    end;
  end;
  report_course_ComboBox.Items.Assign(courseList);
  courseList.Free;

  exam.selectExam(ADOQuery);
  report_exam_ComboBox.Items.Clear;
  while not ADOQuery.eof do
  begin
    examName := ADOQuery.FieldByName('��������').AsString;
    term := ADOQuery.FieldByName('ѧ��').AsString;
    report_exam_ComboBox.Items.Add(examName+'_'+term);
    ADOQuery.Next;
  end;

  report_type_ComboBox.ItemIndex := -1;
  report_exam_ComboBox.ItemIndex := -1;
  report_course_ComboBox.ItemIndex := -1;
  report_grade_ComboBox.ItemIndex := -1;
  report_classID_ComboBox.ItemIndex := -1;

  report_exam_ComboBox.Enabled := false;
  report_course_ComboBox.Enabled := false;
  report_grade_ComboBox.Enabled := false;
  report_classID_ComboBox.Enabled := false;
  report_classID_ComboBox.Clear;
end;

procedure TForm1.class_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := classPage;       //�༶����
  class_operate_RG.ItemIndex := -1;
  initClassPanel;
end;

procedure TForm1.initClassPanel;
var
  i : integer;
begin
  PageControl2.ActivePage := TabSheet;
  ADOQuery.Active := false;

  class_grade_ComboBox.ItemIndex := -1;
  class_classID_ComboBox.ItemIndex := -1;
  class_studentsNum_Edit.Text := '';
  class_teacher_Edit.Text := '';

  for i:=0 to PanelControlClass.ControlCount-1 do
  begin
    if (PanelControlClass.Controls[i] is TComboBox) or
      (PanelControlClass.Controls[i] is TEdit) then
    begin
      PanelControlClass.Controls[i].Enabled := false;
    end;
  end;

  class_classID_ComboBox.Clear;

  classes.selectAll(ADOQuery);
end;

procedure TForm1.course_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := coursePage;      //�γ̹���
  course_operate_RG.ItemIndex := -1;
  initCoursePanel;
end;

procedure TForm1.initCoursePanel;
var
  i : integer;
  rec :array[1..2] of TVarRec;
  gradeList : TStringList;
  courseList : TStringList;
  courseField : TStringField;
  gradeField : TStringField;

  count : integer;
begin
  PageControl2.ActivePage := TabSheet;
  ADOQuery.Active := false;

//  gradeList := TStringList.Create;
//  courseList := TStringList.Create;
//  courseField := TStringField.Create(ADOQuery);
//  gradeField := TStringField.Create(ADOQuery);
//
//  with gradeField do
//  begin
//    FieldName := '�꼶';
//    Size := 12;
//    Required := True; {�������ֶΡ�}
////    DataSet := ClientDataSet1;
//  end;
//
//  ADOQuery.Fields.Add(gradeField);
//  ADOQuery.Fields.Add(courseField);
//
//  count := course.getAllCourse(courseList,gradeList);
//  for I := 0 to count-1 do
//  begin
////    rec[1] := gradeList[i];
////    rec[2] := courseList[i];
//
////    ADOQuery.AppendRecord([gradeList[i],courseList[i]]);
//  end;
////  ADOQuery.ClearFields;
////  ADOQuery.Append;
//  DBGrid1.Refresh;

  course_grade_ComboBox.ItemIndex := -1;
  course_classID_ComboBox.ItemIndex := -1;
  course_courseType_ComboBox.ItemIndex := -1;
  course_courseName_Edit.Text := '';
  course_teacher_Edit.Text := '';

  for i:=0 to PanelControlCourse.ControlCount-1 do
  begin
    if (PanelControlCourse.Controls[i] is TComboBox) or
      (PanelControlCourse.Controls[i] is TEdit) then
    begin
      PanelControlCourse.Controls[i].Enabled := false;
    end;
  end;

  course_classID_ComboBox.Clear;
end;

procedure TForm1.stu_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := studentPage;     //ѧ������
  stu_operate_RG.ItemIndex := -1;
  initStuPanel();
end;

procedure TForm1.initStuPanel();
var
  i : integer;
begin
  PageControl2.ActivePage := TabSheet;
  ADOQuery.Active := false;

  stu_grade_ComboBox.ItemIndex := -1;
  stu_classID_ComboBox.ItemIndex := -1;
  stu_stuID_Edit.Text := '';
  stu_name_Edit.Text := '';
  stu_sex_ComboBox.ItemIndex := 0;
  stu_age_ComboBox.ItemIndex := 0;

  for i:=0 to PanelControlStudents.ControlCount-1 do
  begin
    if (PanelControlStudents.Controls[i] is TComboBox) or
      (PanelControlStudents.Controls[i] is TEdit) then
    begin
      PanelControlStudents.Controls[i].Enabled := false;
    end;
  end;

  stu_classID_ComboBox.Clear;
end;

procedure TForm1.exam_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := examPage;        //�������
  exam_operate_RG.ItemIndex := -1;
  initExamPanel;
end;

procedure TForm1.initExamPanel;
var
  i : integer;
begin
  PageControl2.ActivePage := TabSheet;
  ADOQuery.Active := false;

  examName_Edit.Text := '';
  term_ComboBox.ItemIndex := -1;
  examTime_Edit.Text := '';
  exam_grade_RG.ItemIndex := -1;

  examName_Edit.Enabled := false;
  term_ComboBox.Enabled := false;
  examTime_Edit.Enabled := false;
  exam_grade_RG.Enabled := false;

  for i:=0 to examGradePanel.ControlCount-1 do
  begin
    examGradePanel.Controls[i].Enabled := false;
  end;
end;

procedure TForm1.scoreInput_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := usersPage;       //�ɼ�¼����Ա����
  user_operate_RG.ItemIndex := -1;
  initScoreInputPanel;
end;

procedure TForm1.initScoreInputPanel;
var
  i : integer;
begin
  PageControl2.ActivePage := TabSheet;
  ADOQuery.Active := false;

  userName_Edit.Text := '';
  userPsw_Edit.Text := '';
  user_power_RG.ItemIndex := -1;

  userName_Edit.Enabled := false;
  userPsw_Edit.Enabled := false;

  for i:=0 to userPowerPanel.ControlCount-1 do
  begin
    userPowerPanel.Controls[i].Enabled := false;
  end;
end;

procedure TForm1.adminInfo_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := adminPage;       //����Ա��Ϣ����
  initAdminPanel;
end;

procedure TForm1.initAdminPanel;
begin
  PageControl2.ActivePage := TextSheet;
end;

procedure TForm1.par_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := parPage;         //��������
  initParPanel;
end;

procedure TForm1.initParPanel;
var
  parameter : Tb_parameters;
begin
  PageControl2.ActivePage := TabSheet;
  ADOQuery.Active := false;

  parameter := Tb_parameters.Create;
  parameter.getGradepar(ADOQuery);

  ADOQuery.First;
  par_grade_ComboBox.ItemIndex  := ADOQuery.FieldByName('�꼶').AsInteger - 1;
  par_averWen_base_Edit.Text    := ADOQuery.FieldByName('�Ŀ�ƽ�����½�').AsString;
  par_averWen_top_Edit.Text     := ADOQuery.FieldByName('�Ŀ�ƽ�����Ͻ�').AsString;
  par_averLi_base_Edit.Text     := ADOQuery.FieldByName('����ƽ�����½�').AsString;
  par_averLi_top_Edit.Text      := ADOQuery.FieldByName('����ƽ�����Ͻ�').AsString;
  par_dev_base_Edit.Text        := ADOQuery.FieldByName('��׼��������ֵ').AsString;
  par_greatRatio_base_Edit.Text := ADOQuery.FieldByName('������������ֵ').AsString;
end;

procedure TForm1.database_MenuClick(Sender: TObject);
begin
  PageControl1.ActivePage := databasePage;    //���ݿ����
  PageControl2.ActivePage := TextSheet;
end;



{***********************************�༶����***********************************}
procedure TForm1.class_operate_RGClick(Sender: TObject);
var
  i : integer;
begin
  initClassPanel;
  case class_operate_RG.ItemIndex of
    0:begin     //����
      class_grade_ComboBox.Enabled := true;
      class_classID_ComboBox.Enabled := true;
      class_teacher_Edit.Enabled := true;
    end;
    1:begin     //�޸�
      class_teacher_Edit.Enabled := true;
    end;
    2:begin     //ɾ��
    end;
  end;
end;

procedure TForm1.class_grade_ComboBoxChange(Sender: TObject);
var
  grade : integer;    //�꼶
  classID : string;
  trans : CTransForm;
begin
    trans := CTransForm.Create;
    grade := class_grade_ComboBox.ItemIndex + 1;
    if (class_operate_RG.ItemIndex = 0) then     //����
    begin
      classes.selectByGrade(ADOQuery,grade);
      ADOQuery.Last;
      if ADOQuery.RecordCount <> 0 then
      begin
        classID := ADOQuery.FieldByName('���').AsString;
        try
          if strtoint(classID) < 1000 then
          begin
            classID := '0'+inttostr(strtoint(classID) + 1);
          end else begin
            classID := inttostr(strtoint(classID) + 1);
          end;
          class_classID_ComboBox.Text := classID;
        except
          class_classID_ComboBox.Text := '';
        end;
      end else begin
        if trans.GradeToClassID(grade) < 10 then
        begin
          classID := '0'+inttostr(trans.GradeToClassID(grade))+'01';
        end else begin
          classID := inttostr(trans.GradeToClassID(grade))+'01';
        end;
        class_classID_ComboBox.Text := classID;
      end;
      classes.selectByGrade(ADOQuery,grade);
    end;
end;

procedure TForm1.class_submit_btnClick(Sender: TObject);
var
  flag : boolean;
begin
  flag := true;

  classes.grade := check.grage(class_grade_ComboBox.ItemIndex, flag);
  classes.classID := check.classID(class_classID_ComboBox.text, flag);
  classes.stuNum := check.stuNum(class_studentsNum_Edit.text, flag);
  classes.teacher := class_teacher_Edit.text;

  if flag then
  begin
    case class_operate_RG.ItemIndex of
      -1:begin
        showmessage('��ѡ������Ҫ���еĲ���������/ɾ��/�޸ģ�');
      end;
      0:begin   //����
       classes.addClass(ADOQuery);
      end;
      1:begin   //�޸�
        classes.changeClass(ADOQuery);
      end;
      2:begin   //ɾ��
        classes.delClass(ADOQuery);
      end;
    end;
    getInfoByGrade(class_classID_ComboBox, classes.grade);
    ADOQuery.Active := true;
  end;

end;

{***********************************�γ̹���***********************************}
procedure TForm1.course_classID_ComboBoxChange(Sender: TObject);
var
  flag : boolean;
begin
  flag := true;
  course.grade := check.grage(course_grade_ComboBox.ItemIndex, flag);
  course.classID := check.classID(course_classID_ComboBox.Text, flag);

  if flag then
    course.getCourse(ADOQuery);
end;

procedure TForm1.course_operate_RGClick(Sender: TObject);
var
  i : integer;
begin
  initCoursePanel;
  case course_operate_RG.ItemIndex of
    0:begin      //����
      course_grade_ComboBox.Enabled := true;
      course_courseName_Edit.Enabled := true;
      course_courseType_ComboBox.Enabled := true;
    end;
    1:begin      //�޸�
      course_grade_ComboBox.Enabled := true;
      course_courseName_Edit.Enabled := true;
      course_classID_ComboBox.Enabled := true;
      course_teacher_Edit.Enabled := true;
      course_courseType_ComboBox.Enabled := true;
    end;
    2:begin      //ɾ��
      course_grade_ComboBox.Enabled := true;
//      course_courseName_Edit.Enabled := true;
    end;
  end;
end;

procedure TForm1.course_submit_btnClick(Sender: TObject);
var
  flag : boolean;
begin
  flag := true;
  course.grade := check.grage(course_grade_ComboBox.ItemIndex, flag);
  course.courseName := check.courseName(course_CourseName_Edit.text, flag);
  course.classID := check.classID(course_classID_ComboBox.text, flag);
  course.courseType := check.courseType(course_courseType_ComboBox.Text, flag);
  course.teacher := course_teacher_Edit.text;

  if flag then
  begin
    case course_operate_RG.ItemIndex of
      -1:begin
        showmessage('��ѡ������Ҫ���еĲ���������/ɾ��/�޸ģ�');
      end;
      0:begin   //����
       course.addCourse(ADOQuery);
      end;
      1:begin   //�޸�
        course.changeCourse(ADOQuery);
      end;
      2:begin   //ɾ��
        course.delCourse(ADOQuery);
      end;
    end;
    course.getCourseByGrade(ADOQuery, course.grade);
  end;

end;

{***********************************ѧ������***********************************}
procedure TForm1.stu_classID_ComboBoxChange(Sender: TObject);
var
  flag : boolean;
begin
  flag := true;
  tb_stu.classID := check.classID(stu_classID_ComboBox.Text,flag);
  if flag then
  begin
    tb_stu.getStu(ADOQuery);
    if stu_operate_RG.ItemIndex = 0 then
    begin
      stu_stuID_Edit.Text := stu_classID_ComboBox.Text;
      stu_stuID_Edit.SetFocus;
    end;
  end;
end;

procedure TForm1.stu_operate_RGClick(Sender: TObject);
var
  i : integer;
begin
  initStuPanel;
  case stu_operate_RG.ItemIndex of
    0:begin          //����
      for i:=0 to PanelControlStudents.ControlCount-1 do
      begin
        PanelControlStudents.Controls[i].Enabled := true;
      end;
    end;
    1:begin          //�޸�
      for i:=0 to PanelControlStudents.ControlCount-1 do
      begin
        PanelControlStudents.Controls[i].Enabled := true;
      end;
      stu_stuID_Edit.Enabled := false;
    end;
    2:begin          //ɾ��
      stu_grade_ComboBox.Enabled := true;
      stu_classID_ComboBox.Enabled := true;
    end;
  end;
end;

procedure TForm1.stu_submit_btnClick(Sender: TObject);
var
  flag : boolean;
begin
  flag := true;

  tb_stu.classID := check.classID(stu_classID_ComboBox.Text, flag);
  tb_stu.stuID := check.stuID(stu_stuID_Edit.Text, flag);
  tb_stu.stuName := check.stuName(stu_name_Edit.Text, flag);
  tb_stu.sex := check.stuSex(stu_sex_ComboBox.ItemIndex, flag);
  tb_stu.age := check.stuAge(stu_age_ComboBox.Text, flag);

  if flag then
  begin
    case stu_operate_RG.ItemIndex of
      -1:begin
        showmessage('��ѡ������Ҫ���еĲ���������/ɾ��/�޸ģ�');
      end;
      0:begin   //����
        tb_stu.addStu(ADOQuery);
      end;
      1:begin   //�޸�
        tb_stu.changeStu(ADOQuery);
      end;
      2:begin   //ɾ��
        tb_stu.delStu(ADOQuery);
      end;
    end;
    tb_stu.getStu(ADOQuery);
  end;
end;

{********************************����Ա��Ϣ�޸�********************************}
procedure TForm1.admin_submit_btnClick(Sender: TObject);
var
  userName : string;
  oldPsw : string;
  newPsw : string;
  checkPsw : string;
  res : integer;  //�޸Ľ��
begin
  userName := admin_userName_Edit.Text;
  oldPsw := admin_oldPsw_Edit.Text;
  newPsw := admin_newPsw_Edit.Text;
  checkPsw := admin_checkPsw_Edit.Text;

  if Comparestr(newPsw,checkPsw) = 0 then
  begin
    res := user.changeAdminInfo(userName, oldPsw, newPsw);
    case res of
      0: showMessage('�����벻��ȷ');
      1: showMessage('�޸ĳɹ�');
    end;
  end else begin
    admin_newPsw_Edit.Text := '';
    admin_checkPsw_Edit.Text := '';
    showMessage('�������������벻һ��');
    admin_newPsw_Edit.SetFocus;
  end;
end;


{***********************************�������***********************************}
procedure TForm1.exam_operate_RGClick(Sender: TObject);
begin
  initExamPanel;
  exam.selectExam(ADOQuery);
  case exam_operate_RG.ItemIndex of
    0:begin      //����
      examName_Edit.Enabled := true;
      term_ComboBox.Enabled := true;
      examTime_Edit.Enabled := true;
      exam_grade_RG.Enabled := true;
      examName_Edit.Text := '';
      examTime_Edit.Text := '';
    end;
    1:begin      //�޸�
      examTime_Edit.Enabled := true;
      exam_grade_RG.Enabled := true;
    end;
    2:begin      //ɾ��
    end;
  end;
end;

procedure TForm1.exam_grade_RGClick(Sender: TObject);
var
  i : integer;
begin
  if exam_grade_RG.ItemIndex = 4 then    //�Զ���
  begin
    for i:=0 to examGradePanel.ControlCount-1 do
    begin
      examGradePanel.Controls[i].Enabled := true;
    end;
  end else begin
    for i:=0 to examGradePanel.ControlCount-1 do
    begin
      examGradePanel.Controls[i].Enabled := false;
    end;
  end;
end;

function TForm1.getExamGrade;
var
  buf: array[0..8] of Char;
begin
  if examGrade1_CheckBox.Checked then
  begin
    buf[8] := '1';
  end else begin
    buf[8] := '0';
  end;

  if examGrade2_CheckBox.Checked then
  begin
    buf[7] := '1';
  end else begin
    buf[7] := '0';
  end;

  if examGrade3_CheckBox.Checked then
  begin
    buf[6] := '1';
  end else begin
    buf[6] := '0';
  end;
  if examGrade4_CheckBox.Checked then
  begin
    buf[5] := '1';
  end else begin
    buf[5] := '0';
  end;
  if examGrade5_CheckBox.Checked then
  begin
    buf[4] := '1';
  end else begin
    buf[4] := '0';
  end;
  if examGrade6_CheckBox.Checked then
  begin
    buf[3] := '1';
  end else begin
    buf[3] := '0';
  end;
  if examGrade7_CheckBox.Checked then
  begin
    buf[2] := '1';
  end else begin
    buf[2] := '0';
  end;
  if examGrade8_CheckBox.Checked then
  begin
    buf[1] := '1';
  end else begin
    buf[1] := '0';
  end;
  if examGrade9_CheckBox.Checked then
  begin
    buf[0] := '1';
  end else begin
    buf[0] := '0';
  end;

  result := string(buf);
end;

procedure TForm1.exam_submit_btnClick(Sender: TObject);
var
  examGrade : string;
begin
  examGrade := '000000000';
  case exam_grade_RG.ItemIndex of
    0:begin     //�����꼶
      examGrade := '111111111';
    end;
    1:begin     //1~3�꼶
      examGrade := '000000111';
    end;
    2:begin     //4~6�꼶
      examGrade := '000111000';
    end;
    3:begin     //7~9�꼶
      examGrade := '111000000';
    end;
    4:begin     //�Զ���
      examGrade := getExamGrade;
    end;
  end;

  exam.examName := examName_Edit.Text;
  exam.term := term_ComboBox.Text;
  exam.examDate := examTime_Edit.Text;
  exam.examGrade := examGrade;
  case exam_operate_RG.ItemIndex of
    0:begin      //����
      exam.addExam(ADOQuery);
    end;
    1:begin      //�޸�
      exam.changeExam(ADOQuery);
    end;
    2:begin      //ɾ��
      exam.delExam(ADOQuery);
    end;
  end;
  exam.selectExam(ADOQuery);
end;

{***********************************�û�����***********************************}
procedure TForm1.user_operate_RGClick(Sender: TObject);
begin
  user.selectUser(ADOQuery);
  case user_operate_RG.ItemIndex of
    0:begin      //����
      userName_Edit.Enabled := true;
      userPsw_Edit.Enabled := true;
      userName_Edit.Text := '';
      userPsw_Edit.Text := '';
    end;
    1:begin      //�޸�
      userName_Edit.Enabled := false;
      userPsw_Edit.Enabled := true;
    end;
    2:begin      //ɾ��
      userName_Edit.Enabled := false;
      userPsw_Edit.Enabled := false;
    end;
  end;
end;

procedure TForm1.user_power_RGClick(Sender: TObject);
var
  i : integer;
begin
  if user_power_RG.ItemIndex = 4 then    //�Զ���
  begin
    for i:=0 to userPowerPanel.ControlCount-1 do
    begin
      userPowerPanel.Controls[i].Enabled := true;
    end;
  end else begin
    for i:=0 to userPowerPanel.ControlCount-1 do
    begin
      userPowerPanel.Controls[i].Enabled := false;
    end;
  end;
end;

function TForm1.getUserPower;
var
  buf: array[0..8] of Char;
begin
  if userPower1_CheckBox.Checked then
  begin
    buf[8] := '1';
  end else begin
    buf[8] := '0';
  end;

  if userPower2_CheckBox.Checked then
  begin
    buf[7] := '1';
  end else begin
    buf[7] := '0';
  end;

  if userPower3_CheckBox.Checked then
  begin
    buf[6] := '1';
  end else begin
    buf[6] := '0';
  end;
  if userPower4_CheckBox.Checked then
  begin
    buf[5] := '1';
  end else begin
    buf[5] := '0';
  end;
  if userPower5_CheckBox.Checked then
  begin
    buf[4] := '1';
  end else begin
    buf[4] := '0';
  end;
  if userPower6_CheckBox.Checked then
  begin
    buf[3] := '1';
  end else begin
    buf[3] := '0';
  end;
  if userPower7_CheckBox.Checked then
  begin
    buf[2] := '1';
  end else begin
    buf[2] := '0';
  end;
  if userPower8_CheckBox.Checked then
  begin
    buf[1] := '1';
  end else begin
    buf[1] := '0';
  end;
  if userPower9_CheckBox.Checked then
  begin
    buf[0] := '1';
  end else begin
    buf[0] := '0';
  end;

  result := string(buf);
end;

procedure TForm1.user_submit_btnClick(Sender: TObject);
var
  userPower : string;
begin
  userPower := '000000000';
  case user_power_RG.ItemIndex of
    0:begin     //�����꼶
      userPower := '111111111';
    end;
    1:begin     //1~3�꼶
      userPower := '000000111';
    end;
    2:begin     //4~6�꼶
      userPower := '000111000';
    end;
    3:begin     //7~9�꼶
      userPower := '111000000';
    end;
    4:begin     //�Զ���
      userPower := getUserPower;
    end;
  end;

  user.userName := userName_Edit.Text;
  user.password := userPsw_Edit.Text;
  user.power := userPower;
  case user_operate_RG.ItemIndex of
    0:begin      //����
      user.addUser(ADOQuery);
    end;
    1:begin      //�޸�
      user.changeUser(ADOQuery);
    end;
    2:begin      //ɾ��
      user.delUser(ADOQuery);
    end;
  end;
  user.selectUser(ADOQuery);
end;


{***********************************�ļ�����***********************************}
procedure TForm1.report_submit_btnClick(Sender: TObject);
var
  output1 : output;
  assessment : Tb_assessment;

  exam : string;
  course : string;
  classID : string;
begin
  promptPanel.SetBounds(round((form1.Width-promptLabel.Width)/2),
      round((form1.Height-promptLabel.Height)/2),promptLabel.Width,promptLabel.Height);
  promptLabel.SetBounds(0,0,promptPanel.Width,promptPanel.Height);
  promptLabel.Caption := '���ݵ����У����Ժ�...';
  promptPanel.Visible := true;
  promptPanel.BringToFront;

  output1 := output.create;
  output1.isVisual(visual_CheckBox.Checked);
  assessment := Tb_assessment.Create;

  case report_type_ComboBox.ItemIndex of
    0:begin   //��ĩ����(word)
      course := report_course_ComboBox.Text;
      assessment.createReport('��ĩ_��',course);
      assessment.createReport('��ĩ_��',course);
      output1.finalReport(course);
    end;
    1:begin   //��������(word)
      exam := report_exam_ComboBox.Text;
      course := report_course_ComboBox.Text;
      assessment.createReport(exam,course);
      output1.examReport(exam,course);
    end;
    2:begin   //ѧ���ɼ�ͳ�Ʊ�(word)
      classID := report_classID_ComboBox.Text;
      output1.roster(classID,'','');
    end;
    3:begin   //���Ƴɼ�ͳ�Ʊ�(word)
      exam := report_exam_ComboBox.Text;
      course := report_course_ComboBox.Text;
      classID := report_classID_ComboBox.Text;
      output1.roster(classID,course,exam);
    end;
    4:begin   //ѧ���ɼ�ͳ�Ʊ�(excel)
      classID := report_classID_ComboBox.Text;
      output1.rosterExcel(classID,'','');
    end;
    5:begin   //���Ƴɼ���(excel)
      exam := report_exam_ComboBox.Text;
      course := report_course_ComboBox.Text;
      classID := report_classID_ComboBox.Text;
      output1.rosterExcel(classID,course,exam);
    end;
    6:begin   //�ɼ��ܱ�(excel)
      exam := report_exam_ComboBox.Text;
      classID := report_classID_ComboBox.Text;
      output1.allScoresExcel(classID,exam);
    end;
  end;
  promptPanel.SetBounds(form1.Width,form1.height,0,0);
  promptPanel.Visible := false;
end;


procedure TForm1.report_type_ComboBoxChange(Sender: TObject);
begin
  report_exam_ComboBox.Enabled := false;
  report_grade_ComboBox.Enabled := false;
  report_course_ComboBox.Enabled := false;
  report_classID_ComboBox.Enabled := false;
  report_exam_ComboBox.ItemIndex := -1;
  report_grade_ComboBox.ItemIndex := -1;
  report_course_ComboBox.ItemIndex := -1;
  report_classID_ComboBox.ItemIndex := -1;

  case report_type_ComboBox.ItemIndex of
    0:begin                //��ĩ����(word)
      report_course_ComboBox.Enabled := true;
    end;
    1:begin               //��������(word)
      report_exam_ComboBox.Enabled := true;
      report_course_ComboBox.Enabled := true;
    end;
    2:begin               //ѧ���ɼ�ͳ�Ʊ�(word)
      report_grade_ComboBox.Enabled := true;
      report_classID_ComboBox.Enabled := true;
    end;
    3:begin               //���Ƴɼ���(word)
      report_exam_ComboBox.Enabled := true;
      report_grade_ComboBox.Enabled := true;
      report_course_ComboBox.Enabled := true;
      report_classID_ComboBox.Enabled := true;
    end;
    4:begin               //ѧ���ɼ�ͳ�Ʊ�(excel)
      report_grade_ComboBox.Enabled := true;
      report_classID_ComboBox.Enabled := true;
    end;
    5:begin   //���Ƴɼ���(excel)
      report_exam_ComboBox.Enabled := true;
      report_grade_ComboBox.Enabled := true;
      report_course_ComboBox.Enabled := true;
      report_classID_ComboBox.Enabled := true;
    end;
    6:begin   //�ɼ��ܱ�(excel)
      report_exam_ComboBox.Enabled := true;
      report_grade_ComboBox.Enabled := true;
      report_classID_ComboBox.Enabled := true;
    end;
  end;
end;




{***********************************�ļ�����***********************************}
procedure TForm1.input_getFile_ButtonClick(Sender: TObject);
begin
  if opendialog1.Execute then
    input_filePath_Edit.text:=opendialog1.FileName ;
end;

procedure TForm1.input_type_ComboBoxChange(Sender: TObject);
begin
  if input_type_ComboBox.ItemIndex = 3 then
  begin
    input_exam_ComboBox.Enabled := true;
  end else begin
    input_exam_ComboBox.Enabled := false;
  end;
end;


procedure TForm1.N2Click(Sender: TObject);
begin
  Form2.Visible := true;
end;

procedure TForm1.inout_submit_btnClick(Sender: TObject);
var
  path : string;
  input1 : Input;
begin
  promptPanel.SetBounds(round((form1.Width-promptLabel.Width)/2),
      round((form1.Height-promptLabel.Height)/2),promptLabel.Width,promptLabel.Height);
  promptLabel.SetBounds(0,0,promptPanel.Width,promptPanel.Height);
  promptLabel.Caption := '���ݵ����У����Ժ�...';
  promptPanel.Visible := true;
  promptPanel.BringToFront;

  input1 := Input.Create;
  path := input_filePath_Edit.text;
  case input_type_ComboBox.ItemIndex of
    0:begin      //����γ�
      input1.course(path);
    end;
    1:begin      //����༶
      input1.classes(path);
    end;
    2:begin      //����ѧ��
      input1.student(path);
    end;
    3:begin      //����ɼ�
      if input_exam_ComboBox.ItemIndex = -1 then
      begin
        showmessage('���ڿ�������ѡ����ѡ�������ε���ĳɼ������Ĵο��ԡ�');
      end else begin
        input1.scores(input_exam_ComboBox.Text,path);
      end;
    end;
  end;

  promptPanel.SetBounds(form1.Width,form1.height,0,0);
  promptPanel.Visible := false;
end;

{***********************************���ݿ����*********************************}
procedure TForm1.keepBack_CheckBoxClick(Sender: TObject);
begin
  if keepBack_CheckBox.Checked then
  begin
    data_course_CheckBox.Enabled := true;
    data_par_CheckBox.Enabled := true;
    data_teacher_CheckBox.Enabled := true;
    data_user_CheckBox.Enabled := true;
    data_stu_CheckBox.Enabled := true;
  end else begin
    data_course_CheckBox.Enabled := false;
    data_par_CheckBox.Enabled := false;
    data_teacher_CheckBox.Enabled := false;
    data_user_CheckBox.Enabled := false;
    data_stu_CheckBox.Enabled := false;
  end;

end;

procedure TForm1.database_submit_btnClick(Sender: TObject);
var
  data : Database;
  flag : boolean;
  y : integer;
begin
  data := Database.Create;
  flag := true;
  y:= check.year(database_beginYear_Edit.Text,flag);

  if flag then
  begin
    if data.createNewDatabase(y) then
    begin
      //��ʾ��ʾ��Ϣ
      promptPanel.SetBounds(round((form1.Width-promptLabel.Width)/2),
      round((form1.Height-promptLabel.Height)/2),promptLabel.Width,promptLabel.Height);
      promptLabel.SetBounds(0,0,promptPanel.Width,promptPanel.Height);
      promptLabel.Caption := '���ݿ��ʼ�������Ժ�...';
      promptPanel.Visible := true;
      promptPanel.BringToFront;
      //���ݵ���
      if data_course_CheckBox.Checked then  data.keepCourse(y);
      if data_par_CheckBox.Checked then  data.keepPar(y);
      if data_teacher_CheckBox.Checked then  data.keepTeacher(y);
      if data_user_CheckBox.Checked then  data.keepUser(y);
      if data_stu_CheckBox.Checked then  data.keepStu(y);
      //������ʾ��Ϣ
      promptPanel.SetBounds(form1.Width,form1.height,0,0);
      promptPanel.Visible := false;
      showmessage('���ݿⴴ�����');
    end;
  end;

end;
{*********************************ȫ�ָ�������*********************************}
{
    ����ѡ����Ϣ���涯̬�仯
}
procedure TForm1.grade_ComboBoxChange(Sender: TObject);
var
  grade : integer;    //�꼶
  classID : string;
  ComboBox:TComboBox;
  trans : CTransForm;
begin
  if PageControl1.ActivePage = coursePage then        //�γ̹���
  begin
    grade := course_grade_ComboBox.ItemIndex + 1;
    ComboBox := course_classID_ComboBox;
    getInfoByGrade(ComboBox,grade);
    course.getCourseByGrade(ADOQuery,grade);
  end;

  if PageControl1.ActivePage = studentPage then        //ѧ������
  begin
    grade := stu_grade_ComboBox.ItemIndex + 1;
    ComboBox := stu_classID_ComboBox;
    getInfoByGrade(ComboBox,grade);
  end;

  if PageControl1.ActivePage = outputPage then         //�ļ�����
  begin
    grade := report_grade_ComboBox.ItemIndex + 1;
    ComboBox := report_classID_ComboBox;
    getInfoByGrade(ComboBox,grade);
  end;
end;

procedure TForm1.getInfoByGrade(var ComboBox:TComboBox; grade:integer);
begin
// ��ѯ�꼶Ϊgrade�����а༶
  classes.selectByGrade(ADOQuery, grade);

//����ѯ�õ��İ༶����class_classID_ComboBox.Items��
  ComboBox.Items.Clear;
  while not ADOQuery.eof do
  begin
    ComboBox.Items.Add(ADOQuery.FieldByName('���').AsString);
    ADOQuery.Next;
  end;
  ADOQuery.Active := false;
end;

{
    ���ݱ�����ѡ�е����ݶ�̬��������
}
procedure TForm1.DBGrid1CellClick(Column: TColumn);
var
  trans : CTransForm;
begin
  trans := CTransForm.Create;
  if PageControl1.ActivePage = classPage then        //�༶����
  begin
    if (class_operate_RG.ItemIndex = 1) or (class_operate_RG.ItemIndex = 2) then
    begin  //�޸Ļ�ɾ��
      class_classID_ComboBox.Text := ADOQuery.FieldByName('���').AsString;
      class_studentsNum_Edit.Text := ADOQuery.FieldByName('ѧ������').AsString;
      class_teacher_Edit.Text := ADOQuery.FieldByName('������').AsString;
      class_grade_ComboBox.ItemIndex := trans.classIDToGrade(ADOQuery.FieldByName('���').AsString) - 1;
    end;
  end;

  if PageControl1.ActivePage = coursePage then        //�γ̹���
  begin
    if course_operate_RG.ItemIndex = 1 then      //�޸�
    begin
      try
        course_courseName_Edit.Text := ADOQuery.FieldByName('�γ�����').AsString;
        if Comparestr('�Ŀ�',ADOQuery.FieldByName('�γ�����').AsString)=0 then
        begin
          course_courseType_ComboBox.ItemIndex := 1;
        end else if Comparestr('����',ADOQuery.FieldByName('�γ�����').AsString)=0 then
        begin
          course_courseType_ComboBox.ItemIndex := 0;
        end;
      except
        course_courseName_Edit.Text := ADOQuery.FieldByName('�γ�����').AsString;
        course_teacher_Edit.Text := ADOQuery.FieldByName('�ον�ʦ').AsString;
      end;
    end;

    if course_operate_RG.ItemIndex = 2 then      //ɾ��
    begin
      course_courseName_Edit.Text := ADOQuery.FieldByName('�γ�����').AsString;
      if Comparestr('�Ŀ�',ADOQuery.FieldByName('�γ�����').AsString)=0 then
      begin
        course_courseType_ComboBox.ItemIndex := 1;
      end else if Comparestr('����',ADOQuery.FieldByName('�γ�����').AsString)=0 then
      begin
        course_courseType_ComboBox.ItemIndex := 0;
      end;
    end;
  end;

  if PageControl1.ActivePage = studentPage then        //ѧ������
  begin
    if (stu_operate_RG.ItemIndex = 1) or (stu_operate_RG.ItemIndex =2) then   //�޸Ļ���ɾ��
    begin
      stu_stuID_Edit.Text := ADOQuery.FieldByName('ѧ��').AsString;
      stu_name_Edit.Text := ADOQuery.FieldByName('����').AsString;
      stu_sex_ComboBox.Text := ADOQuery.FieldByName('�Ա�').AsString;
      stu_age_ComboBox.Text := ADOQuery.FieldByName('����').AsString;
    end;
  end;

  if PageControl1.ActivePage = examPage then           //�������
  begin
    examName_Edit.Text := ADOQuery.FieldByName('��������').AsString;
    if Comparestr(ADOQuery.FieldByName('ѧ��').AsString,'��') = 0 then
    begin
      term_ComboBox.ItemIndex := 0;
    end else begin
      term_ComboBox.ItemIndex := 1;
    end;
    examTime_Edit.Text := ADOQuery.FieldByName('����ʱ��').AsString;
  end;

  if PageControl1.ActivePage = parPage then
  begin
    par_grade_ComboBox.ItemIndex  := ADOQuery.FieldByName('�꼶').AsInteger - 1;
    par_averWen_base_Edit.Text    := ADOQuery.FieldByName('�Ŀ�ƽ�����½�').AsString;
    par_averWen_top_Edit.Text     := ADOQuery.FieldByName('�Ŀ�ƽ�����Ͻ�').AsString;
    par_averLi_base_Edit.Text     := ADOQuery.FieldByName('����ƽ�����½�').AsString;
    par_averLi_top_Edit.Text      := ADOQuery.FieldByName('����ƽ�����Ͻ�').AsString;
    par_dev_base_Edit.Text        := ADOQuery.FieldByName('��׼��������ֵ').AsString;
    par_greatRatio_base_Edit.Text := ADOQuery.FieldByName('������������ֵ').AsString;
  end;

end;

end.