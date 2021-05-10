using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PWMS.PerForm
{
    public partial class F_UserPope : Form
    {
        public F_UserPope()
        {
            InitializeComponent();
        }
        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();
        ModuleClass.MyModule MyMC = new PWMS.ModuleClass.MyModule();

        private void F_UserPope_Shown(object sender, EventArgs e)
        {
            User_ID.Text = ModuleClass.MyModule.User_ID;
            User_Name.Text = ModuleClass.MyModule.User_Name;
            if (User_Name.Text.Trim() == "TSoft")
                User_Save.Enabled = false;
            MyMC.Show_Pope(groupBox2.Controls, ModuleClass.MyModule.User_ID);

        }

        private void User_Close_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private Button User_Close;
        private Button User_Save;
        private CheckBox User_All;
        private CheckBox User_Setup;
        private CheckBox User_NewLogon;
        private CheckBox User_WordBook;
        private CheckBox User_Counter;
        private CheckBox User_Clear;
        private CheckBox User_Back;
        private CheckBox User_AddressBook;
        private CheckBox User_DayWordPad;
        private CheckBox User_Stusum;
        private CheckBox User_Stufind;
        private GroupBox groupBox2;
        private CheckBox User_Stuffbusic;
        private CheckBox User_ClewBargain;
        private CheckBox User_ClewBirthday;
        private CheckBox User_WordPad;
        private CheckBox User_RPKind;
        private CheckBox User_Duthcall;
        private CheckBox User_Business;
        private CheckBox User_Laborage;
        private CheckBox User_Branch;
        private CheckBox User_Visage;
        private CheckBox User_Kultur;
        private CheckBox User_EmployeeGenre;
        private CheckBox User_Folk;
        private TextBox User_Name;
        private GroupBox groupBox1;
        private TextBox User_ID;
        private Label label2;
        private Label label1;

        private void InitializeComponent()
        {
            this.User_Close = new System.Windows.Forms.Button();
            this.User_Save = new System.Windows.Forms.Button();
            this.User_All = new System.Windows.Forms.CheckBox();
            this.User_Setup = new System.Windows.Forms.CheckBox();
            this.User_NewLogon = new System.Windows.Forms.CheckBox();
            this.User_WordBook = new System.Windows.Forms.CheckBox();
            this.User_Counter = new System.Windows.Forms.CheckBox();
            this.User_Clear = new System.Windows.Forms.CheckBox();
            this.User_Back = new System.Windows.Forms.CheckBox();
            this.User_AddressBook = new System.Windows.Forms.CheckBox();
            this.User_DayWordPad = new System.Windows.Forms.CheckBox();
            this.User_Stusum = new System.Windows.Forms.CheckBox();
            this.User_Stufind = new System.Windows.Forms.CheckBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.User_Stuffbusic = new System.Windows.Forms.CheckBox();
            this.User_ClewBargain = new System.Windows.Forms.CheckBox();
            this.User_ClewBirthday = new System.Windows.Forms.CheckBox();
            this.User_WordPad = new System.Windows.Forms.CheckBox();
            this.User_RPKind = new System.Windows.Forms.CheckBox();
            this.User_Duthcall = new System.Windows.Forms.CheckBox();
            this.User_Business = new System.Windows.Forms.CheckBox();
            this.User_Laborage = new System.Windows.Forms.CheckBox();
            this.User_Branch = new System.Windows.Forms.CheckBox();
            this.User_Visage = new System.Windows.Forms.CheckBox();
            this.User_Kultur = new System.Windows.Forms.CheckBox();
            this.User_EmployeeGenre = new System.Windows.Forms.CheckBox();
            this.User_Folk = new System.Windows.Forms.CheckBox();
            this.User_Name = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.User_ID = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // User_Close
            // 
            this.User_Close.Location = new System.Drawing.Point(326, 361);
            this.User_Close.Margin = new System.Windows.Forms.Padding(4);
            this.User_Close.Name = "User_Close";
            this.User_Close.Size = new System.Drawing.Size(100, 29);
            this.User_Close.TabIndex = 9;
            this.User_Close.Text = "取消";
            this.User_Close.UseVisualStyleBackColor = true;
            // 
            // User_Save
            // 
            this.User_Save.Location = new System.Drawing.Point(203, 361);
            this.User_Save.Margin = new System.Windows.Forms.Padding(4);
            this.User_Save.Name = "User_Save";
            this.User_Save.Size = new System.Drawing.Size(100, 29);
            this.User_Save.TabIndex = 8;
            this.User_Save.Text = "保存";
            this.User_Save.UseVisualStyleBackColor = true;
            // 
            // User_All
            // 
            this.User_All.AutoSize = true;
            this.User_All.Location = new System.Drawing.Point(46, 365);
            this.User_All.Margin = new System.Windows.Forms.Padding(4);
            this.User_All.Name = "User_All";
            this.User_All.Size = new System.Drawing.Size(59, 19);
            this.User_All.TabIndex = 7;
            this.User_All.Text = "全选";
            this.User_All.UseVisualStyleBackColor = true;
            // 
            // User_Setup
            // 
            this.User_Setup.AutoSize = true;
            this.User_Setup.Location = new System.Drawing.Point(164, 228);
            this.User_Setup.Margin = new System.Windows.Forms.Padding(4);
            this.User_Setup.Name = "User_Setup";
            this.User_Setup.Size = new System.Drawing.Size(89, 19);
            this.User_Setup.TabIndex = 22;
            this.User_Setup.Text = "用户设置";
            this.User_Setup.UseVisualStyleBackColor = true;
            // 
            // User_NewLogon
            // 
            this.User_NewLogon.AutoSize = true;
            this.User_NewLogon.Location = new System.Drawing.Point(19, 228);
            this.User_NewLogon.Margin = new System.Windows.Forms.Padding(4);
            this.User_NewLogon.Name = "User_NewLogon";
            this.User_NewLogon.Size = new System.Drawing.Size(89, 19);
            this.User_NewLogon.TabIndex = 21;
            this.User_NewLogon.Text = "重新登录";
            this.User_NewLogon.UseVisualStyleBackColor = true;
            // 
            // User_WordBook
            // 
            this.User_WordBook.AutoSize = true;
            this.User_WordBook.Location = new System.Drawing.Point(303, 196);
            this.User_WordBook.Margin = new System.Windows.Forms.Padding(4);
            this.User_WordBook.Name = "User_WordBook";
            this.User_WordBook.Size = new System.Drawing.Size(74, 19);
            this.User_WordBook.TabIndex = 20;
            this.User_WordBook.Text = "计算器";
            this.User_WordBook.UseVisualStyleBackColor = true;
            // 
            // User_Counter
            // 
            this.User_Counter.AutoSize = true;
            this.User_Counter.Location = new System.Drawing.Point(164, 196);
            this.User_Counter.Margin = new System.Windows.Forms.Padding(4);
            this.User_Counter.Name = "User_Counter";
            this.User_Counter.Size = new System.Drawing.Size(74, 19);
            this.User_Counter.TabIndex = 19;
            this.User_Counter.Text = "记事本";
            this.User_Counter.UseVisualStyleBackColor = true;
            // 
            // User_Clear
            // 
            this.User_Clear.AutoSize = true;
            this.User_Clear.Location = new System.Drawing.Point(19, 199);
            this.User_Clear.Margin = new System.Windows.Forms.Padding(4);
            this.User_Clear.Name = "User_Clear";
            this.User_Clear.Size = new System.Drawing.Size(104, 19);
            this.User_Clear.TabIndex = 18;
            this.User_Clear.Text = "清空数据库";
            this.User_Clear.UseVisualStyleBackColor = true;
            // 
            // User_Back
            // 
            this.User_Back.AutoSize = true;
            this.User_Back.Location = new System.Drawing.Point(303, 169);
            this.User_Back.Margin = new System.Windows.Forms.Padding(4);
            this.User_Back.Name = "User_Back";
            this.User_Back.Size = new System.Drawing.Size(97, 19);
            this.User_Back.TabIndex = 17;
            this.User_Back.Text = "备份/还原";
            this.User_Back.UseVisualStyleBackColor = true;
            // 
            // User_AddressBook
            // 
            this.User_AddressBook.AutoSize = true;
            this.User_AddressBook.Location = new System.Drawing.Point(164, 169);
            this.User_AddressBook.Margin = new System.Windows.Forms.Padding(4);
            this.User_AddressBook.Name = "User_AddressBook";
            this.User_AddressBook.Size = new System.Drawing.Size(74, 19);
            this.User_AddressBook.TabIndex = 16;
            this.User_AddressBook.Text = "通讯录";
            this.User_AddressBook.UseVisualStyleBackColor = true;
            // 
            // User_DayWordPad
            // 
            this.User_DayWordPad.AutoSize = true;
            this.User_DayWordPad.Location = new System.Drawing.Point(19, 170);
            this.User_DayWordPad.Margin = new System.Windows.Forms.Padding(4);
            this.User_DayWordPad.Name = "User_DayWordPad";
            this.User_DayWordPad.Size = new System.Drawing.Size(89, 19);
            this.User_DayWordPad.TabIndex = 15;
            this.User_DayWordPad.Text = "日常记事";
            this.User_DayWordPad.UseVisualStyleBackColor = true;
            // 
            // User_Stusum
            // 
            this.User_Stusum.AutoSize = true;
            this.User_Stusum.Location = new System.Drawing.Point(303, 141);
            this.User_Stusum.Margin = new System.Windows.Forms.Padding(4);
            this.User_Stusum.Name = "User_Stusum";
            this.User_Stusum.Size = new System.Drawing.Size(119, 19);
            this.User_Stusum.TabIndex = 14;
            this.User_Stusum.Text = "人事资料统计";
            this.User_Stusum.UseVisualStyleBackColor = true;
            // 
            // User_Stufind
            // 
            this.User_Stufind.AutoSize = true;
            this.User_Stufind.Location = new System.Drawing.Point(164, 141);
            this.User_Stufind.Margin = new System.Windows.Forms.Padding(4);
            this.User_Stufind.Name = "User_Stufind";
            this.User_Stufind.Size = new System.Drawing.Size(119, 19);
            this.User_Stufind.TabIndex = 13;
            this.User_Stufind.Text = "人事资料查找";
            this.User_Stufind.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.User_Setup);
            this.groupBox2.Controls.Add(this.User_NewLogon);
            this.groupBox2.Controls.Add(this.User_WordBook);
            this.groupBox2.Controls.Add(this.User_Counter);
            this.groupBox2.Controls.Add(this.User_Clear);
            this.groupBox2.Controls.Add(this.User_Back);
            this.groupBox2.Controls.Add(this.User_AddressBook);
            this.groupBox2.Controls.Add(this.User_DayWordPad);
            this.groupBox2.Controls.Add(this.User_Stusum);
            this.groupBox2.Controls.Add(this.User_Stufind);
            this.groupBox2.Controls.Add(this.User_Stuffbusic);
            this.groupBox2.Controls.Add(this.User_ClewBargain);
            this.groupBox2.Controls.Add(this.User_ClewBirthday);
            this.groupBox2.Controls.Add(this.User_WordPad);
            this.groupBox2.Controls.Add(this.User_RPKind);
            this.groupBox2.Controls.Add(this.User_Duthcall);
            this.groupBox2.Controls.Add(this.User_Business);
            this.groupBox2.Controls.Add(this.User_Laborage);
            this.groupBox2.Controls.Add(this.User_Branch);
            this.groupBox2.Controls.Add(this.User_Visage);
            this.groupBox2.Controls.Add(this.User_Kultur);
            this.groupBox2.Controls.Add(this.User_EmployeeGenre);
            this.groupBox2.Controls.Add(this.User_Folk);
            this.groupBox2.Location = new System.Drawing.Point(15, 95);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox2.Size = new System.Drawing.Size(440, 258);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "权限";
            // 
            // User_Stuffbusic
            // 
            this.User_Stuffbusic.AutoSize = true;
            this.User_Stuffbusic.Location = new System.Drawing.Point(19, 141);
            this.User_Stuffbusic.Margin = new System.Windows.Forms.Padding(4);
            this.User_Stuffbusic.Name = "User_Stuffbusic";
            this.User_Stuffbusic.Size = new System.Drawing.Size(119, 19);
            this.User_Stuffbusic.TabIndex = 12;
            this.User_Stuffbusic.Text = "人事档案浏览";
            this.User_Stuffbusic.UseVisualStyleBackColor = true;
            // 
            // User_ClewBargain
            // 
            this.User_ClewBargain.AutoSize = true;
            this.User_ClewBargain.Location = new System.Drawing.Point(303, 111);
            this.User_ClewBargain.Margin = new System.Windows.Forms.Padding(4);
            this.User_ClewBargain.Name = "User_ClewBargain";
            this.User_ClewBargain.Size = new System.Drawing.Size(119, 19);
            this.User_ClewBargain.TabIndex = 11;
            this.User_ClewBargain.Text = "员工合同提示";
            this.User_ClewBargain.UseVisualStyleBackColor = true;
            // 
            // User_ClewBirthday
            // 
            this.User_ClewBirthday.AutoSize = true;
            this.User_ClewBirthday.Location = new System.Drawing.Point(164, 112);
            this.User_ClewBirthday.Margin = new System.Windows.Forms.Padding(4);
            this.User_ClewBirthday.Name = "User_ClewBirthday";
            this.User_ClewBirthday.Size = new System.Drawing.Size(119, 19);
            this.User_ClewBirthday.TabIndex = 10;
            this.User_ClewBirthday.Text = "员工生日提示";
            this.User_ClewBirthday.UseVisualStyleBackColor = true;
            // 
            // User_WordPad
            // 
            this.User_WordPad.AutoSize = true;
            this.User_WordPad.Location = new System.Drawing.Point(19, 112);
            this.User_WordPad.Margin = new System.Windows.Forms.Padding(4);
            this.User_WordPad.Name = "User_WordPad";
            this.User_WordPad.Size = new System.Drawing.Size(104, 19);
            this.User_WordPad.TabIndex = 9;
            this.User_WordPad.Text = "记事本类别";
            this.User_WordPad.UseVisualStyleBackColor = true;
            // 
            // User_RPKind
            // 
            this.User_RPKind.AutoSize = true;
            this.User_RPKind.Location = new System.Drawing.Point(303, 80);
            this.User_RPKind.Margin = new System.Windows.Forms.Padding(4);
            this.User_RPKind.Name = "User_RPKind";
            this.User_RPKind.Size = new System.Drawing.Size(89, 19);
            this.User_RPKind.TabIndex = 8;
            this.User_RPKind.Text = "奖惩类别";
            this.User_RPKind.UseVisualStyleBackColor = true;
            // 
            // User_Duthcall
            // 
            this.User_Duthcall.AutoSize = true;
            this.User_Duthcall.Location = new System.Drawing.Point(164, 80);
            this.User_Duthcall.Margin = new System.Windows.Forms.Padding(4);
            this.User_Duthcall.Name = "User_Duthcall";
            this.User_Duthcall.Size = new System.Drawing.Size(89, 19);
            this.User_Duthcall.TabIndex = 7;
            this.User_Duthcall.Text = "职称类别";
            this.User_Duthcall.UseVisualStyleBackColor = true;
            // 
            // User_Business
            // 
            this.User_Business.AutoSize = true;
            this.User_Business.Location = new System.Drawing.Point(19, 84);
            this.User_Business.Margin = new System.Windows.Forms.Padding(4);
            this.User_Business.Name = "User_Business";
            this.User_Business.Size = new System.Drawing.Size(89, 19);
            this.User_Business.TabIndex = 6;
            this.User_Business.Text = "职务类别";
            this.User_Business.UseVisualStyleBackColor = true;
            // 
            // User_Laborage
            // 
            this.User_Laborage.AutoSize = true;
            this.User_Laborage.Location = new System.Drawing.Point(303, 52);
            this.User_Laborage.Margin = new System.Windows.Forms.Padding(4);
            this.User_Laborage.Name = "User_Laborage";
            this.User_Laborage.Size = new System.Drawing.Size(89, 19);
            this.User_Laborage.TabIndex = 5;
            this.User_Laborage.Text = "工资类别";
            this.User_Laborage.UseVisualStyleBackColor = true;
            // 
            // User_Branch
            // 
            this.User_Branch.AutoSize = true;
            this.User_Branch.Location = new System.Drawing.Point(164, 52);
            this.User_Branch.Margin = new System.Windows.Forms.Padding(4);
            this.User_Branch.Name = "User_Branch";
            this.User_Branch.Size = new System.Drawing.Size(89, 19);
            this.User_Branch.TabIndex = 4;
            this.User_Branch.Text = "部门类别";
            this.User_Branch.UseVisualStyleBackColor = true;
            // 
            // User_Visage
            // 
            this.User_Visage.AutoSize = true;
            this.User_Visage.Location = new System.Drawing.Point(19, 55);
            this.User_Visage.Margin = new System.Windows.Forms.Padding(4);
            this.User_Visage.Name = "User_Visage";
            this.User_Visage.Size = new System.Drawing.Size(89, 19);
            this.User_Visage.TabIndex = 3;
            this.User_Visage.Text = "政治面貌";
            this.User_Visage.UseVisualStyleBackColor = true;
            // 
            // User_Kultur
            // 
            this.User_Kultur.AutoSize = true;
            this.User_Kultur.Location = new System.Drawing.Point(303, 25);
            this.User_Kultur.Margin = new System.Windows.Forms.Padding(4);
            this.User_Kultur.Name = "User_Kultur";
            this.User_Kultur.Size = new System.Drawing.Size(89, 19);
            this.User_Kultur.TabIndex = 2;
            this.User_Kultur.Text = "文化程度";
            this.User_Kultur.UseVisualStyleBackColor = true;
            // 
            // User_EmployeeGenre
            // 
            this.User_EmployeeGenre.AutoSize = true;
            this.User_EmployeeGenre.Location = new System.Drawing.Point(164, 25);
            this.User_EmployeeGenre.Margin = new System.Windows.Forms.Padding(4);
            this.User_EmployeeGenre.Name = "User_EmployeeGenre";
            this.User_EmployeeGenre.Size = new System.Drawing.Size(89, 19);
            this.User_EmployeeGenre.TabIndex = 1;
            this.User_EmployeeGenre.Text = "职工类别";
            this.User_EmployeeGenre.UseVisualStyleBackColor = true;
            // 
            // User_Folk
            // 
            this.User_Folk.AutoSize = true;
            this.User_Folk.Location = new System.Drawing.Point(19, 26);
            this.User_Folk.Margin = new System.Windows.Forms.Padding(4);
            this.User_Folk.Name = "User_Folk";
            this.User_Folk.Size = new System.Drawing.Size(89, 19);
            this.User_Folk.TabIndex = 0;
            this.User_Folk.Text = "民族类别";
            this.User_Folk.UseVisualStyleBackColor = true;
            // 
            // User_Name
            // 
            this.User_Name.BackColor = System.Drawing.SystemColors.Window;
            this.User_Name.Location = new System.Drawing.Point(260, 25);
            this.User_Name.Margin = new System.Windows.Forms.Padding(4);
            this.User_Name.Name = "User_Name";
            this.User_Name.ReadOnly = true;
            this.User_Name.Size = new System.Drawing.Size(149, 25);
            this.User_Name.TabIndex = 5;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.User_Name);
            this.groupBox1.Controls.Add(this.User_ID);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(15, 22);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(440, 65);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "当前用户";
            // 
            // User_ID
            // 
            this.User_ID.BackColor = System.Drawing.SystemColors.Window;
            this.User_ID.Location = new System.Drawing.Point(85, 25);
            this.User_ID.Margin = new System.Windows.Forms.Padding(4);
            this.User_ID.Name = "User_ID";
            this.User_ID.ReadOnly = true;
            this.User_ID.Size = new System.Drawing.Size(72, 25);
            this.User_ID.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(185, 28);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 15);
            this.label2.TabIndex = 3;
            this.label2.Text = "用户名：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(28, 32);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 15);
            this.label1.TabIndex = 2;
            this.label1.Text = "编号：";
            // 
            // F_UserPope
            // 
            this.ClientSize = new System.Drawing.Size(468, 427);
            this.Controls.Add(this.User_Close);
            this.Controls.Add(this.User_Save);
            this.Controls.Add(this.User_All);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "F_UserPope";
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
    }
}