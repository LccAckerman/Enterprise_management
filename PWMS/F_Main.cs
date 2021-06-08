using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PWMS
{
    public partial class F_Main : Form
    {
        DataClass.MyMeans MyClass = new PWMS.DataClass.MyMeans();
        ModuleClass.MyModule MyMenu = new PWMS.ModuleClass.MyModule();
        public F_Main()
        {
            InitializeComponent();
        }

        #region  通过权限对主窗体进行初始化
        /// <summary>
        /// 对主窗体初始化
        /// </summary>
        private void Preen_Main()
        {
            statusStrip1.Items[2].Text = DataClass.MyMeans.Login_Name;  //在状态栏显示当前登录的用户名
            treeView1.Nodes.Clear();
            MyMenu.GetMenu(treeView1, menuStrip1);  //调用公共类MyModule下的GetMenu()方法，将menuStrip1控件的子菜单添加到treeView1控件中
            MyMenu.MainMenuF(menuStrip1);   //将菜单栏中的各子菜单项设为不可用状态
            MyMenu.MainPope(menuStrip1, DataClass.MyMeans.Login_Name);  //根据权限设置相应子菜单的可用状态
        }
        #endregion

        private void F_Main_Load(object sender, EventArgs e)
        {
            F_Login FrmLogin = new F_Login();   //声时登录窗体，进行调用
            FrmLogin.Tag = 1;   //将登录窗体的Tag属性设为1，表示调用的是登录窗体
            FrmLogin.ShowDialog();
            FrmLogin.Dispose();
            //当调用的是登录窗体时
            if (DataClass.MyMeans.Login_n == 1)
            {
                Preen_Main();   //自定义方法，通过权限对窗体进行初始化
                MyMenu.PactDay(1);  //MyModule类中的自定义方法，用于查找指定时间内，过生日的职工
                MyMenu.PactDay(2);  //MyModule类中的自定义方法，用于查找合同到期的职工
            }
            DataClass.MyMeans.Login_n = 3;  //将公共变量设为3，便于控制登录窗体的关闭
            Tool_Help.Enabled = true;
        }

        private void F_Main_Activated(object sender, EventArgs e)
        {
            if (DataClass.MyMeans.Login_n == 2) //当调用的是重新登录窗体时
                Preen_Main();   //自定义方法，通过权限对窗体进行初始化
            DataClass.MyMeans.Login_n = 3;
        }

        private void 系统退出ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        public void Tool_Folk_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 2);
        }

        private void Tool_Stuffbusic_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);   //用MyModule公共类中的Show_Form()方法调用各窗体
        }

        private void Tool_ClewBirthday_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_ClewBargain_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_Stufind_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_Stusum_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_DayWordPad_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_AddressBook_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_Back_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_Clear_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_NewLogon_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_Setup_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void treeView1_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
        {
            if (e.Node.Text.Trim() == "系统退出")   //如果当前节点的文本为“系统退出”
            {
                Application.Exit(); //关闭应用程序
            }
            MyMenu.TreeMenuF(menuStrip1, e);   //用MyModule公共类中的TreeMenuF()方法调用各窗体
        }

        private void Button_Close_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Button_Stuffbusic_Click(object sender, EventArgs e)
        {
            if (Tool_Stuffbusic.Enabled==true)
                Tool_Stuffbusic_Click(sender, e);
            else
                MessageBox.Show("当前用户无权限调用" + "\"" + ((ToolStripButton)sender).Text + "\"" + "窗体");
        }

        private void Button_Stufind_Click(object sender, EventArgs e)
        {
            if (Tool_Stufind.Enabled == true)
                Tool_Stufind_Click(sender, e);
            else
                MessageBox.Show("当前用户无权限调用" + "\"" + ((ToolStripButton)sender).Text + "\"" + "窗体");
        }

        private void Button_ClewBargain_Click(object sender, EventArgs e)
        {
            if (Tool_ClewBargain.Enabled == true)
                Tool_ClewBargain_Click(sender, e);
            else
                MessageBox.Show("当前用户无权限调用" + "\"" + ((ToolStripButton)sender).Text + "\"" + "窗体");

        }

        private void Botton_AddressBook_Click(object sender, EventArgs e)
        {
            if (Tool_AddressBook.Enabled == true)
                Tool_AddressBook_Click(sender, e);
            else
                MessageBox.Show("当前用户无权限调用" + "\"" + ((ToolStripButton)sender).Text + "\"" + "窗体");
        }

        private void Botton_DayWordPad_Click(object sender, EventArgs e)
        {
            if (Tool_DayWordPad.Enabled == true)
                Tool_DayWordPad_Click(sender, e);
            else
                MessageBox.Show("当前用户无权限调用" + "\"" + ((ToolStripButton)sender).Text + "\"" + "窗体");
        }

        private void Tool_Counter_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private void Tool_WordBook_Click(object sender, EventArgs e)
        {
            MyMenu.Show_Form(sender.ToString().Trim(), 1);
        }

        private MenuStrip menuStrip1;
        private ToolStripMenuItem Menu_1;
        private ToolStripMenuItem Menu_2;
        private ToolStripMenuItem Tool_Folk;
        private ToolStripMenuItem Tool_EmployeeGenre;
        private ToolStripMenuItem Tool_Kultur;
        private ToolStripMenuItem Tool_Visage;
        private ToolStripMenuItem Tool_Branch;
        private ToolStripMenuItem Tool_Laborage;
        private ToolStripMenuItem Tool_Business;
        private ToolStripMenuItem Tool_Duthcall;
        private ToolStripMenuItem Tool_RPKind;
        private ToolStripMenuItem Tool_WordPad;
        private ToolStripMenuItem Menu_3;
        private ToolStripMenuItem Tool_ClewBirthday;
        private ToolStripMenuItem Tool_ClewBargain;
        private ToolStripMenuItem Menu_4;
        private ToolStripMenuItem Tool_Stuffbusic;
        private ToolStripMenuItem Tool_Stufind;
        private ToolStripMenuItem Tool_Stusum;
        private ToolStripMenuItem Menu_5;
        private ToolStripMenuItem Tool_DayWordPad;
        private ToolStripMenuItem Tool_AddressBook;
        private ToolStripMenuItem Menu_6;
        private ToolStripMenuItem Tool_Back;
        private ToolStripMenuItem Tool_Clear;
        private ToolStripMenuItem Menu_7;
        private ToolStripMenuItem Tool_Counter;
        private ToolStripMenuItem Tool_WordBook;
        private ToolStripMenuItem Menu_8;
        private ToolStripMenuItem Tool_NewLogon;
        private ToolStripMenuItem Tool_Setup;
        private ToolStripMenuItem Menu_9;
        private ToolStripMenuItem Menu_10;
        private ToolStripMenuItem Tool_Help;
        private ToolStrip toolStrip1;
        private ToolStripButton Button_Stuffbusic;
        private ToolStripButton Button_Stufind;
        private ToolStripButton Button_ClewBargain;
        private ToolStripSeparator toolStripButton4;
        private ToolStripButton Botton_AddressBook;
        private ToolStripButton Botton_DayWordPad;
        private ToolStripSeparator toolStripSeparator1;
        private ToolStripButton Button_Close;
        private TreeView treeView1;

        private void toolStripStatusLabel2_Click(object sender, EventArgs e)
        {

        }

        private void toolStripStatusLabel3_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void 合同提示ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 奖惩类别设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 职称类别设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 职务类别设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 工资类别设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 部门类别设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 正治面貌设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 文化程度设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 职工类别设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 民族类别设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 基本数据ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void 帮助ToolStripMenuItem1_Click(object sender, EventArgs e)
        {

        }

        private void 职工提示设置ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(F_Main));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.Menu_1 = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_2 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Folk = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_EmployeeGenre = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Kultur = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Visage = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Branch = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Laborage = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Business = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Duthcall = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_RPKind = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_WordPad = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_3 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_ClewBirthday = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_ClewBargain = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_4 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Stuffbusic = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Stufind = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Stusum = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_5 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_DayWordPad = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_AddressBook = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_6 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Back = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Clear = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_7 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Counter = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_WordBook = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_8 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_NewLogon = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Setup = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_9 = new System.Windows.Forms.ToolStripMenuItem();
            this.Menu_10 = new System.Windows.Forms.ToolStripMenuItem();
            this.Tool_Help = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.Button_Stuffbusic = new System.Windows.Forms.ToolStripButton();
            this.Button_Stufind = new System.Windows.Forms.ToolStripButton();
            this.Button_ClewBargain = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton4 = new System.Windows.Forms.ToolStripSeparator();
            this.Botton_AddressBook = new System.Windows.Forms.ToolStripButton();
            this.Botton_DayWordPad = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.Button_Close = new System.Windows.Forms.ToolStripButton();
            this.treeView1 = new System.Windows.Forms.TreeView();
            this.menuStrip1.SuspendLayout();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Menu_1,
            this.Menu_4,
            this.Menu_5,
            this.Menu_6,
            this.Menu_7,
            this.Menu_8,
            this.Menu_10});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Padding = new System.Windows.Forms.Padding(8, 2, 0, 2);
            this.menuStrip1.Size = new System.Drawing.Size(893, 28);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // Menu_1
            // 
            this.Menu_1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Menu_2,
            this.Menu_3});
            this.Menu_1.Name = "Menu_1";
            this.Menu_1.Size = new System.Drawing.Size(113, 24);
            this.Menu_1.Text = "基础信息管理";
            // 
            // Menu_2
            // 
            this.Menu_2.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_Folk,
            this.Tool_EmployeeGenre,
            this.Tool_Kultur,
            this.Tool_Visage,
            this.Tool_Branch,
            this.Tool_Laborage,
            this.Tool_Business,
            this.Tool_Duthcall,
            this.Tool_RPKind,
            this.Tool_WordPad});
            this.Menu_2.Name = "Menu_2";
            this.Menu_2.Size = new System.Drawing.Size(182, 26);
            this.Menu_2.Text = "基础数据";
            // 
            // Tool_Folk
            // 
            this.Tool_Folk.Name = "Tool_Folk";
            this.Tool_Folk.Size = new System.Drawing.Size(197, 26);
            this.Tool_Folk.Text = "民族类别设置";
            // 
            // Tool_EmployeeGenre
            // 
            this.Tool_EmployeeGenre.Name = "Tool_EmployeeGenre";
            this.Tool_EmployeeGenre.Size = new System.Drawing.Size(197, 26);
            this.Tool_EmployeeGenre.Text = "职工类别设置";
            // 
            // Tool_Kultur
            // 
            this.Tool_Kultur.Name = "Tool_Kultur";
            this.Tool_Kultur.Size = new System.Drawing.Size(197, 26);
            this.Tool_Kultur.Text = "文化程度设置";
            // 
            // Tool_Visage
            // 
            this.Tool_Visage.Name = "Tool_Visage";
            this.Tool_Visage.Size = new System.Drawing.Size(197, 26);
            this.Tool_Visage.Text = "政治面貌设置";
            // 
            // Tool_Branch
            // 
            this.Tool_Branch.Name = "Tool_Branch";
            this.Tool_Branch.Size = new System.Drawing.Size(197, 26);
            this.Tool_Branch.Text = "部门类别设置";
            // 
            // Tool_Laborage
            // 
            this.Tool_Laborage.Name = "Tool_Laborage";
            this.Tool_Laborage.Size = new System.Drawing.Size(197, 26);
            this.Tool_Laborage.Text = "工资类别设置";
            // 
            // Tool_Business
            // 
            this.Tool_Business.Name = "Tool_Business";
            this.Tool_Business.Size = new System.Drawing.Size(197, 26);
            this.Tool_Business.Text = "职务类别设置";
            // 
            // Tool_Duthcall
            // 
            this.Tool_Duthcall.Name = "Tool_Duthcall";
            this.Tool_Duthcall.Size = new System.Drawing.Size(197, 26);
            this.Tool_Duthcall.Text = "职称类别设置";
            // 
            // Tool_RPKind
            // 
            this.Tool_RPKind.Name = "Tool_RPKind";
            this.Tool_RPKind.Size = new System.Drawing.Size(197, 26);
            this.Tool_RPKind.Text = "奖惩类别设置";
            // 
            // Tool_WordPad
            // 
            this.Tool_WordPad.Name = "Tool_WordPad";
            this.Tool_WordPad.Size = new System.Drawing.Size(197, 26);
            this.Tool_WordPad.Text = "记事本类别设置";
            // 
            // Menu_3
            // 
            this.Menu_3.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_ClewBirthday,
            this.Tool_ClewBargain});
            this.Menu_3.Name = "Menu_3";
            this.Menu_3.Size = new System.Drawing.Size(182, 26);
            this.Menu_3.Text = "员工提示信息";
            // 
            // Tool_ClewBirthday
            // 
            this.Tool_ClewBirthday.Name = "Tool_ClewBirthday";
            this.Tool_ClewBirthday.Size = new System.Drawing.Size(182, 26);
            this.Tool_ClewBirthday.Tag = "1";
            this.Tool_ClewBirthday.Text = "员工生日提示";
            // 
            // Tool_ClewBargain
            // 
            this.Tool_ClewBargain.Name = "Tool_ClewBargain";
            this.Tool_ClewBargain.Size = new System.Drawing.Size(182, 26);
            this.Tool_ClewBargain.Tag = "2";
            this.Tool_ClewBargain.Text = "员工合同提示";
            // 
            // Menu_4
            // 
            this.Menu_4.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_Stuffbusic,
            this.Tool_Stufind,
            this.Tool_Stusum});
            this.Menu_4.Name = "Menu_4";
            this.Menu_4.Size = new System.Drawing.Size(83, 24);
            this.Menu_4.Text = "人事管理";
            // 
            // Tool_Stuffbusic
            // 
            this.Tool_Stuffbusic.Name = "Tool_Stuffbusic";
            this.Tool_Stuffbusic.Size = new System.Drawing.Size(182, 26);
            this.Tool_Stuffbusic.Text = "人事档案管理";
            // 
            // Tool_Stufind
            // 
            this.Tool_Stufind.Name = "Tool_Stufind";
            this.Tool_Stufind.Size = new System.Drawing.Size(182, 26);
            this.Tool_Stufind.Text = "人事资料查询";
            // 
            // Tool_Stusum
            // 
            this.Tool_Stusum.Name = "Tool_Stusum";
            this.Tool_Stusum.Size = new System.Drawing.Size(182, 26);
            this.Tool_Stusum.Text = "人事资料统计";
            // 
            // Menu_5
            // 
            this.Menu_5.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_DayWordPad,
            this.Tool_AddressBook});
            this.Menu_5.Name = "Menu_5";
            this.Menu_5.Size = new System.Drawing.Size(83, 24);
            this.Menu_5.Text = "备忘记录";
            // 
            // Tool_DayWordPad
            // 
            this.Tool_DayWordPad.Name = "Tool_DayWordPad";
            this.Tool_DayWordPad.Size = new System.Drawing.Size(152, 26);
            this.Tool_DayWordPad.Text = "日常记事";
            // 
            // Tool_AddressBook
            // 
            this.Tool_AddressBook.Name = "Tool_AddressBook";
            this.Tool_AddressBook.Size = new System.Drawing.Size(152, 26);
            this.Tool_AddressBook.Text = "通讯录";
            // 
            // Menu_6
            // 
            this.Menu_6.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_Back,
            this.Tool_Clear});
            this.Menu_6.Name = "Menu_6";
            this.Menu_6.Size = new System.Drawing.Size(98, 24);
            this.Menu_6.Text = "数据库维护";
            // 
            // Tool_Back
            // 
            this.Tool_Back.Name = "Tool_Back";
            this.Tool_Back.Size = new System.Drawing.Size(203, 26);
            this.Tool_Back.Text = "备份/还原数据库";
            // 
            // Tool_Clear
            // 
            this.Tool_Clear.Name = "Tool_Clear";
            this.Tool_Clear.Size = new System.Drawing.Size(203, 26);
            this.Tool_Clear.Text = "清空数据库";
            // 
            // Menu_7
            // 
            this.Menu_7.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_Counter,
            this.Tool_WordBook});
            this.Menu_7.Name = "Menu_7";
            this.Menu_7.Size = new System.Drawing.Size(83, 24);
            this.Menu_7.Text = "工具管理";
            // 
            // Tool_Counter
            // 
            this.Tool_Counter.Name = "Tool_Counter";
            this.Tool_Counter.Size = new System.Drawing.Size(137, 26);
            this.Tool_Counter.Text = "计算器";
            // 
            // Tool_WordBook
            // 
            this.Tool_WordBook.Name = "Tool_WordBook";
            this.Tool_WordBook.Size = new System.Drawing.Size(137, 26);
            this.Tool_WordBook.Text = "记事本";
            // 
            // Menu_8
            // 
            this.Menu_8.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_NewLogon,
            this.Tool_Setup,
            this.Menu_9});
            this.Menu_8.Name = "Menu_8";
            this.Menu_8.Size = new System.Drawing.Size(83, 24);
            this.Menu_8.Text = "系统管理";
            // 
            // Tool_NewLogon
            // 
            this.Tool_NewLogon.Name = "Tool_NewLogon";
            this.Tool_NewLogon.Size = new System.Drawing.Size(152, 26);
            this.Tool_NewLogon.Text = "重新登录";
            // 
            // Tool_Setup
            // 
            this.Tool_Setup.Name = "Tool_Setup";
            this.Tool_Setup.Size = new System.Drawing.Size(152, 26);
            this.Tool_Setup.Text = "用户设置";
            // 
            // Menu_9
            // 
            this.Menu_9.Name = "Menu_9";
            this.Menu_9.Size = new System.Drawing.Size(152, 26);
            this.Menu_9.Text = "系统退出";
            // 
            // Menu_10
            // 
            this.Menu_10.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Tool_Help});
            this.Menu_10.Name = "Menu_10";
            this.Menu_10.Size = new System.Drawing.Size(53, 24);
            this.Menu_10.Text = "帮助";
            // 
            // Tool_Help
            // 
            this.Tool_Help.Name = "Tool_Help";
            this.Tool_Help.Size = new System.Drawing.Size(152, 26);
            this.Tool_Help.Text = "系统帮助";
            // 
            // toolStrip1
            // 
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Button_Stuffbusic,
            this.Button_Stufind,
            this.Button_ClewBargain,
            this.toolStripButton4,
            this.Botton_AddressBook,
            this.Botton_DayWordPad,
            this.toolStripSeparator1,
            this.Button_Close});
            this.toolStrip1.Location = new System.Drawing.Point(0, 28);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(893, 27);
            this.toolStrip1.TabIndex = 3;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // Button_Stuffbusic
            // 
            this.Button_Stuffbusic.Image = ((System.Drawing.Image)(resources.GetObject("Button_Stuffbusic.Image")));
            this.Button_Stuffbusic.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Button_Stuffbusic.Name = "Button_Stuffbusic";
            this.Button_Stuffbusic.Size = new System.Drawing.Size(123, 24);
            this.Button_Stuffbusic.Text = "人事档案管理";
            // 
            // Button_Stufind
            // 
            this.Button_Stufind.Image = ((System.Drawing.Image)(resources.GetObject("Button_Stufind.Image")));
            this.Button_Stufind.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Button_Stufind.Name = "Button_Stufind";
            this.Button_Stufind.Size = new System.Drawing.Size(123, 24);
            this.Button_Stufind.Text = "人事资料查询";
            // 
            // Button_ClewBargain
            // 
            this.Button_ClewBargain.Image = ((System.Drawing.Image)(resources.GetObject("Button_ClewBargain.Image")));
            this.Button_ClewBargain.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Button_ClewBargain.Name = "Button_ClewBargain";
            this.Button_ClewBargain.Size = new System.Drawing.Size(123, 24);
            this.Button_ClewBargain.Text = "员工合同提示";
            // 
            // toolStripButton4
            // 
            this.toolStripButton4.Name = "toolStripButton4";
            this.toolStripButton4.Size = new System.Drawing.Size(6, 27);
            // 
            // Botton_AddressBook
            // 
            this.Botton_AddressBook.Image = ((System.Drawing.Image)(resources.GetObject("Botton_AddressBook.Image")));
            this.Botton_AddressBook.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Botton_AddressBook.Name = "Botton_AddressBook";
            this.Botton_AddressBook.Size = new System.Drawing.Size(78, 24);
            this.Botton_AddressBook.Text = "通讯录";
            // 
            // Botton_DayWordPad
            // 
            this.Botton_DayWordPad.Image = ((System.Drawing.Image)(resources.GetObject("Botton_DayWordPad.Image")));
            this.Botton_DayWordPad.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Botton_DayWordPad.Name = "Botton_DayWordPad";
            this.Botton_DayWordPad.Size = new System.Drawing.Size(93, 24);
            this.Botton_DayWordPad.Text = "日常记事";
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 27);
            // 
            // Button_Close
            // 
            this.Button_Close.Image = ((System.Drawing.Image)(resources.GetObject("Button_Close.Image")));
            this.Button_Close.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Button_Close.Name = "Button_Close";
            this.Button_Close.Size = new System.Drawing.Size(93, 24);
            this.Button_Close.Text = "退出系统";
            // 
            // treeView1
            // 
            this.treeView1.Dock = System.Windows.Forms.DockStyle.Left;
            this.treeView1.Location = new System.Drawing.Point(0, 55);
            this.treeView1.Margin = new System.Windows.Forms.Padding(4);
            this.treeView1.Name = "treeView1";
            this.treeView1.Size = new System.Drawing.Size(271, 509);
            this.treeView1.TabIndex = 4;
            // 
            // F_Main
            // 
            this.ClientSize = new System.Drawing.Size(893, 564);
            this.Controls.Add(this.treeView1);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.menuStrip1);
            this.Name = "F_Main";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void treeView1_AfterSelect(object sender, TreeViewEventArgs e)
        {

        }
    }
}