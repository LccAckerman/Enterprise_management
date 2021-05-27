using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace PWMS
{
    public partial class F_Login : Form
    {
        DataClass.MyMeans MyClass = new PWMS.DataClass.MyMeans();
        
        public F_Login()
        {
            InitializeComponent();
        }

        private void butClose_Click(object sender, EventArgs e)
        {

        }

        private void butLogin_Click(object sender, EventArgs e)
        {

        }

        private void F_Login_Load(object sender, EventArgs e)
        {
            try
            {
                MyClass.con_open();  //连接数据库
                MyClass.con_close();
                textName.Text = "";
                textPass.Text = "";

            }
            catch
            {
                MessageBox.Show("数据库连接失败。", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Application.Exit();
            }
        }

        private void textName_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void textPass_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void F_Login_Activated(object sender, EventArgs e)
        {
            textName.Focus();
        }

        private Label label2;
        private Label label1;
        private TextBox textPass;
        private TextBox textName;
        private Button butClose;
        private Button butLogin;
        private PictureBox pictureBox1;

        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(F_Login));
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.textPass = new System.Windows.Forms.TextBox();
            this.textName = new System.Windows.Forms.TextBox();
            this.butClose = new System.Windows.Forms.Button();
            this.butLogin = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.SystemColors.Window;
            this.label2.Location = new System.Drawing.Point(89, 181);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 15);
            this.label2.TabIndex = 19;
            this.label2.Text = "密  码：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.Window;
            this.label1.Location = new System.Drawing.Point(89, 148);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(67, 15);
            this.label1.TabIndex = 18;
            this.label1.Text = "用户名：";
            // 
            // textPass
            // 
            this.textPass.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textPass.Location = new System.Drawing.Point(188, 175);
            this.textPass.Margin = new System.Windows.Forms.Padding(4);
            this.textPass.Name = "textPass";
            this.textPass.PasswordChar = '*';
            this.textPass.Size = new System.Drawing.Size(158, 25);
            this.textPass.TabIndex = 17;
            this.textPass.Text = "111";
            // 
            // textName
            // 
            this.textName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.textName.Location = new System.Drawing.Point(188, 141);
            this.textName.Margin = new System.Windows.Forms.Padding(4);
            this.textName.Name = "textName";
            this.textName.Size = new System.Drawing.Size(158, 25);
            this.textName.TabIndex = 16;
            this.textName.Text = "TSoft";
            // 
            // butClose
            // 
            this.butClose.Location = new System.Drawing.Point(255, 219);
            this.butClose.Margin = new System.Windows.Forms.Padding(4);
            this.butClose.Name = "butClose";
            this.butClose.Size = new System.Drawing.Size(69, 29);
            this.butClose.TabIndex = 15;
            this.butClose.Text = "取消";
            this.butClose.UseVisualStyleBackColor = true;
            // 
            // butLogin
            // 
            this.butLogin.Location = new System.Drawing.Point(113, 219);
            this.butLogin.Margin = new System.Windows.Forms.Padding(4);
            this.butLogin.Name = "butLogin";
            this.butLogin.Size = new System.Drawing.Size(71, 29);
            this.butLogin.TabIndex = 14;
            this.butLogin.Text = "登录";
            this.butLogin.UseVisualStyleBackColor = true;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(0, 0);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(470, 268);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 13;
            this.pictureBox1.TabStop = false;
            // 
            // F_Login
            // 
            this.ClientSize = new System.Drawing.Size(470, 268);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textPass);
            this.Controls.Add(this.textName);
            this.Controls.Add(this.butClose);
            this.Controls.Add(this.butLogin);
            this.Controls.Add(this.pictureBox1);
            this.Name = "F_Login";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
    }
}