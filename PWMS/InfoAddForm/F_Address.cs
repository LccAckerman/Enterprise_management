using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PWMS.InfoAddForm
{
    public partial class F_Address :Form
    {
        public F_Address()
        {
            InitializeComponent();
        }

        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();
        ModuleClass.MyModule MyMC = new PWMS.ModuleClass.MyModule();
        public static DataSet MyDS_Grid;
        public static string Address_ID = "";


        private GroupBox groupBox2;
        private Button button2;
        private Button button1;
        private GroupBox groupBox1;
        private Label label7;
        private Label label6;
        private TextBox Address_7;
        private TextBox Address_6;
        private Label label5;
        private Label label4;
        private TextBox Address_5;
        private TextBox Address_4;
        private Label label3;
        private Label label2;
        private Label label1;
        private TextBox Address_3;
        private ComboBox Address_2;
        private TextBox Address_1;

        private void InitializeComponent()
        {
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.Address_7 = new System.Windows.Forms.TextBox();
            this.Address_6 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.Address_5 = new System.Windows.Forms.TextBox();
            this.Address_4 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.Address_3 = new System.Windows.Forms.TextBox();
            this.Address_2 = new System.Windows.Forms.ComboBox();
            this.Address_1 = new System.Windows.Forms.TextBox();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.button2);
            this.groupBox2.Controls.Add(this.button1);
            this.groupBox2.Location = new System.Drawing.Point(24, 155);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox2.Size = new System.Drawing.Size(513, 61);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(385, 21);
            this.button2.Margin = new System.Windows.Forms.Padding(4);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(100, 29);
            this.button2.TabIndex = 1;
            this.button2.Text = "取消";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(245, 21);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 29);
            this.button1.TabIndex = 0;
            this.button1.Text = "保存";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.Address_7);
            this.groupBox1.Controls.Add(this.Address_6);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.Address_5);
            this.groupBox1.Controls.Add(this.Address_4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.Address_3);
            this.groupBox1.Controls.Add(this.Address_2);
            this.groupBox1.Controls.Add(this.Address_1);
            this.groupBox1.Location = new System.Drawing.Point(24, 22);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(513, 132);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "通讯录信息";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(215, 101);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(70, 15);
            this.label7.TabIndex = 13;
            this.label7.Text = "E-Mail：";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(20, 101);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 15);
            this.label6.TabIndex = 12;
            this.label6.Text = "QQ：";
            // 
            // Address_7
            // 
            this.Address_7.Location = new System.Drawing.Point(285, 94);
            this.Address_7.Margin = new System.Windows.Forms.Padding(4);
            this.Address_7.Name = "Address_7";
            this.Address_7.Size = new System.Drawing.Size(212, 25);
            this.Address_7.TabIndex = 11;
            // 
            // Address_6
            // 
            this.Address_6.Location = new System.Drawing.Point(72, 94);
            this.Address_6.Margin = new System.Windows.Forms.Padding(4);
            this.Address_6.Name = "Address_6";
            this.Address_6.Size = new System.Drawing.Size(132, 25);
            this.Address_6.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(277, 65);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 15);
            this.label5.TabIndex = 9;
            this.label5.Text = "工作电话：";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 66);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 15);
            this.label4.TabIndex = 8;
            this.label4.Text = "手机：";
            // 
            // Address_5
            // 
            this.Address_5.Location = new System.Drawing.Point(365, 59);
            this.Address_5.Margin = new System.Windows.Forms.Padding(4);
            this.Address_5.Name = "Address_5";
            this.Address_5.Size = new System.Drawing.Size(132, 25);
            this.Address_5.TabIndex = 7;
            // 
            // Address_4
            // 
            this.Address_4.Location = new System.Drawing.Point(72, 59);
            this.Address_4.Margin = new System.Windows.Forms.Padding(4);
            this.Address_4.Name = "Address_4";
            this.Address_4.Size = new System.Drawing.Size(196, 25);
            this.Address_4.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(309, 31);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 15);
            this.label3.TabIndex = 5;
            this.label3.Text = "电话：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(173, 31);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 15);
            this.label2.TabIndex = 4;
            this.label2.Text = "性别：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(17, 32);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 15);
            this.label1.TabIndex = 3;
            this.label1.Text = "姓名：";
            // 
            // Address_3
            // 
            this.Address_3.Location = new System.Drawing.Point(365, 25);
            this.Address_3.Margin = new System.Windows.Forms.Padding(4);
            this.Address_3.Name = "Address_3";
            this.Address_3.Size = new System.Drawing.Size(132, 25);
            this.Address_3.TabIndex = 2;
            // 
            // Address_2
            // 
            this.Address_2.FormattingEnabled = true;
            this.Address_2.Items.AddRange(new object[] {
            "男",
            "女"});
            this.Address_2.Location = new System.Drawing.Point(229, 25);
            this.Address_2.Margin = new System.Windows.Forms.Padding(4);
            this.Address_2.Name = "Address_2";
            this.Address_2.Size = new System.Drawing.Size(71, 23);
            this.Address_2.TabIndex = 1;
            // 
            // Address_1
            // 
            this.Address_1.Location = new System.Drawing.Point(72, 25);
            this.Address_1.Margin = new System.Windows.Forms.Padding(4);
            this.Address_1.Name = "Address_1";
            this.Address_1.Size = new System.Drawing.Size(91, 25);
            this.Address_1.TabIndex = 0;
            // 
            // F_Address
            // 
            this.ClientSize = new System.Drawing.Size(605, 327);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "F_Address";
            this.Load += new System.EventHandler(this.F_Address_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (this.Address_1.Text != "")
            {
                MyMC.Part_SaveClass("ID,Name,Sex,Phone,Handset,WordPhone,QQ,E_Mail", Address_ID, "", this.groupBox1.Controls, "Address_", "tb_AddressBook", 8, (int)this.Tag);
                MyDataClass.getsqlcom(ModuleClass.MyModule.ADDs);
                this.Close();
            }
            else
                MessageBox.Show("人员姓名不能为空。");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void F_Address_Load(object sender, EventArgs e)
        {
            if ((int)(this.Tag) == 1)
            {
                Address_ID = MyMC.GetAutocoding("tb_AddressBook", "ID");
            }
            if ((int)this.Tag == 2)
            {
                MyDS_Grid = MyDataClass.getDataSet("select ID,Name,Sex,Phone,Handset,WordPhone,QQ,E_Mail from tb_AddressBook where ID='" + ModuleClass.MyModule.Address_ID + "'", "tb_AddressBook");
                Address_ID = MyDS_Grid.Tables[0].Rows[0][0].ToString();
                this.Address_1.Text = MyDS_Grid.Tables[0].Rows[0][1].ToString();
                this.Address_2.Text = MyDS_Grid.Tables[0].Rows[0][2].ToString();
                this.Address_3.Text = MyDS_Grid.Tables[0].Rows[0][3].ToString();
                this.Address_4.Text = MyDS_Grid.Tables[0].Rows[0][4].ToString();
                this.Address_5.Text = MyDS_Grid.Tables[0].Rows[0][5].ToString();
                this.Address_6.Text = MyDS_Grid.Tables[0].Rows[0][6].ToString();
                this.Address_7.Text = MyDS_Grid.Tables[0].Rows[0][7].ToString();
            }
        }
    }
}