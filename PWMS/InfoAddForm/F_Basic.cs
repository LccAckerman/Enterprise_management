using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace PWMS.InfoAddForm
{
    public partial class F_Basic : Form
    {
        public F_Basic()
        {
            InitializeComponent();
        }
        DataClass.MyMeans MyDClass = new PWMS.DataClass.MyMeans();
        public static string reField = "";  //记录要修改的字段
        public static int indvar = -1;
        private void F_Basic_Load(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            DataSet My_Set = MyDClass.getDataSet(DataClass.MyMeans.Mean_SQL, DataClass.MyMeans.Mean_Table);
            if (My_Set.Tables[0].Rows.Count > 0)
            for (int i = 0; i < My_Set.Tables[0].Rows.Count; i++)
            {
                listBox1.Items.Add(My_Set.Tables[0].Rows[i][1].ToString());
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedValueChanged(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex>=0)
            {
                reField = listBox1.SelectedItem.ToString();
                indvar = listBox1.SelectedIndex;
                button2.Enabled = true;
                button3.Enabled = true;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private GroupBox groupBox3;
        private Button button5;
        private Button button4;
        private Button button1;
        private Button button2;
        private Button button3;

        private void InitializeComponent()
        {
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.button5 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.button5);
            this.groupBox3.Controls.Add(this.button4);
            this.groupBox3.Controls.Add(this.button1);
            this.groupBox3.Controls.Add(this.button2);
            this.groupBox3.Controls.Add(this.button3);
            this.groupBox3.Location = new System.Drawing.Point(301, 39);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox3.Size = new System.Drawing.Size(167, 316);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "相关操作";
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(25, 234);
            this.button5.Margin = new System.Windows.Forms.Padding(4);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(100, 29);
            this.button5.TabIndex = 6;
            this.button5.Text = "退出";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(25, 178);
            this.button4.Margin = new System.Windows.Forms.Padding(4);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(100, 29);
            this.button4.TabIndex = 5;
            this.button4.Text = "取消";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(25, 30);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 29);
            this.button1.TabIndex = 2;
            this.button1.Text = "添加";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // button2
            // 
            this.button2.Enabled = false;
            this.button2.Location = new System.Drawing.Point(25, 79);
            this.button2.Margin = new System.Windows.Forms.Padding(4);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(100, 29);
            this.button2.TabIndex = 3;
            this.button2.Text = "修改";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click_1);
            // 
            // button3
            // 
            this.button3.Enabled = false;
            this.button3.Location = new System.Drawing.Point(25, 128);
            this.button3.Margin = new System.Windows.Forms.Padding(4);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(100, 29);
            this.button3.TabIndex = 4;
            this.button3.Text = "删除";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // F_Basic
            // 
            this.ClientSize = new System.Drawing.Size(494, 440);
            this.Controls.Add(this.groupBox3);
            this.Name = "F_Basic";
            this.groupBox3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        private void button2_Click_1(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {

        }
    }
}