using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PWMS.PerForm
{
    public partial class F_WordPad : Form
    {
        public F_WordPad()
        {
            InitializeComponent();
        }
        ModuleClass.MyModule MyMC = new PWMS.ModuleClass.MyModule();
        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();
        public static string AllSql = "select ID,BlotterDate as 记事时间,BlotterSort as 记事类别,Motif as 主题,Wordpad from tb_DayWordPad";
        public static DataSet MyDS_Grid;  //存储数据表信息
        public static string Word_ID = "";  //存储添加信息时的自动编号
        public static int Word_S = 0;

        public void Show_N()
        {
            if (dataGridView1.RowCount > 0)
            {
                try
                {
                    WordPad_1.Value = Convert.ToDateTime(dataGridView1[1, dataGridView1.CurrentCell.RowIndex].Value.ToString());
                    WordPad_2.Text = dataGridView1[2, dataGridView1.CurrentCell.RowIndex].Value.ToString();
                    WordPad_3.Text = dataGridView1[3, dataGridView1.CurrentCell.RowIndex].Value.ToString();
                    WordPad_4.Text = dataGridView1[4, dataGridView1.CurrentCell.RowIndex].Value.ToString();
                    Word_ID = dataGridView1[0, dataGridView1.CurrentCell.RowIndex].Value.ToString();
                }
                catch
                {
                    WordPad_2.Text = "";
                    WordPad_3.Text = "";
                    WordPad_4.Text = "";
                    Word_ID = "";
                }
            }
            else
            {
                MyMC.Clear_Control(groupBox3.Controls);
                Word_ID = "";
                WordPad_1.Value = Convert.ToDateTime(System.DateTime.Now.ToString());
            }
        }

        private void F_WordPad_Load(object sender, EventArgs e)
        {
            dateTimePicker1.Value = DateTime.Today;
            //用dataGridView1控件显示职工的名称
            MyDS_Grid = MyDataClass.getDataSet(AllSql, "tb_DayWordPad");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.AutoGenerateColumns = true;  //是否自动创建列
            dataGridView1.Columns[1].Width = 80;
            dataGridView1.Columns[2].Width = 80;
            dataGridView1.Columns[3].Width = 100;
            
            //隐藏dataGridView1控件中不需要的列字段
            dataGridView1.Columns[0].Visible = false;
            dataGridView1.Columns[4].Visible = false;

            MyMC.CoPassData(WordPad_2, "tb_WordPad");  //向“记事类别”列表框中添加信息
            MyMC.CoPassData(comboBox1, "tb_WordPad");

            MyMC.Ena_Button(Word_Add, Word_Amend, Word_Cancel, Word_Save, 1, 1, 0, 0);
        }

        private void dataGridView1_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            Show_N();
        }

        private Button Word_Save;
        private Button Word_Cancel;
        private Button Word_Delete;
        private Button Word_Add;
        private GroupBox groupBox4;
        private Button Word_Amend;
        private Label label4;
        private GroupBox groupBox3;
        private Label label3;
        private Label label2;
        private Label label1;
        private TextBox WordPad_4;
        private TextBox WordPad_3;
        private ComboBox WordPad_2;
        private DateTimePicker WordPad_1;
        private CheckBox checkBox3;
        private GroupBox groupBox2;
        private DataGridView dataGridView1;
        private CheckBox checkBox1;
        private Button button1;
        private ComboBox comboBox1;
        private DateTimePicker dateTimePicker1;
        private CheckBox checkBox2;
        private GroupBox groupBox1;

        private void InitializeComponent()
        {
            this.Word_Save = new System.Windows.Forms.Button();
            this.Word_Cancel = new System.Windows.Forms.Button();
            this.Word_Delete = new System.Windows.Forms.Button();
            this.Word_Add = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.Word_Amend = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.WordPad_4 = new System.Windows.Forms.TextBox();
            this.WordPad_3 = new System.Windows.Forms.TextBox();
            this.WordPad_2 = new System.Windows.Forms.ComboBox();
            this.WordPad_1 = new System.Windows.Forms.DateTimePicker();
            this.checkBox3 = new System.Windows.Forms.CheckBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.button1 = new System.Windows.Forms.Button();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.checkBox2 = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox4.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // Word_Save
            // 
            this.Word_Save.Location = new System.Drawing.Point(347, 22);
            this.Word_Save.Margin = new System.Windows.Forms.Padding(4);
            this.Word_Save.Name = "Word_Save";
            this.Word_Save.Size = new System.Drawing.Size(71, 29);
            this.Word_Save.TabIndex = 4;
            this.Word_Save.Text = "保存";
            this.Word_Save.UseVisualStyleBackColor = true;
            // 
            // Word_Cancel
            // 
            this.Word_Cancel.Location = new System.Drawing.Point(268, 22);
            this.Word_Cancel.Margin = new System.Windows.Forms.Padding(4);
            this.Word_Cancel.Name = "Word_Cancel";
            this.Word_Cancel.Size = new System.Drawing.Size(71, 29);
            this.Word_Cancel.TabIndex = 3;
            this.Word_Cancel.Text = "取消";
            this.Word_Cancel.UseVisualStyleBackColor = true;
            // 
            // Word_Delete
            // 
            this.Word_Delete.Location = new System.Drawing.Point(189, 22);
            this.Word_Delete.Margin = new System.Windows.Forms.Padding(4);
            this.Word_Delete.Name = "Word_Delete";
            this.Word_Delete.Size = new System.Drawing.Size(71, 29);
            this.Word_Delete.TabIndex = 2;
            this.Word_Delete.Text = "删除";
            this.Word_Delete.UseVisualStyleBackColor = true;
            // 
            // Word_Add
            // 
            this.Word_Add.Location = new System.Drawing.Point(32, 22);
            this.Word_Add.Margin = new System.Windows.Forms.Padding(4);
            this.Word_Add.Name = "Word_Add";
            this.Word_Add.Size = new System.Drawing.Size(71, 29);
            this.Word_Add.TabIndex = 0;
            this.Word_Add.Text = "添加";
            this.Word_Add.UseVisualStyleBackColor = true;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.Word_Save);
            this.groupBox4.Controls.Add(this.Word_Cancel);
            this.groupBox4.Controls.Add(this.Word_Delete);
            this.groupBox4.Controls.Add(this.Word_Amend);
            this.groupBox4.Controls.Add(this.Word_Add);
            this.groupBox4.Location = new System.Drawing.Point(313, 456);
            this.groupBox4.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox4.Size = new System.Drawing.Size(447, 62);
            this.groupBox4.TabIndex = 7;
            this.groupBox4.TabStop = false;
            // 
            // Word_Amend
            // 
            this.Word_Amend.Location = new System.Drawing.Point(111, 22);
            this.Word_Amend.Margin = new System.Windows.Forms.Padding(4);
            this.Word_Amend.Name = "Word_Amend";
            this.Word_Amend.Size = new System.Drawing.Size(71, 29);
            this.Word_Amend.TabIndex = 1;
            this.Word_Amend.Text = "修改";
            this.Word_Amend.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 101);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(84, 15);
            this.label4.TabIndex = 7;
            this.label4.Text = "主    题：";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.label1);
            this.groupBox3.Controls.Add(this.WordPad_4);
            this.groupBox3.Controls.Add(this.WordPad_3);
            this.groupBox3.Controls.Add(this.WordPad_2);
            this.groupBox3.Controls.Add(this.WordPad_1);
            this.groupBox3.Location = new System.Drawing.Point(313, 120);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox3.Size = new System.Drawing.Size(447, 334);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "记事本内容";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 131);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 15);
            this.label3.TabIndex = 6;
            this.label3.Text = "内容：";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 68);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 15);
            this.label2.TabIndex = 5;
            this.label2.Text = "记事类别：";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 34);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(82, 15);
            this.label1.TabIndex = 4;
            this.label1.Text = "记事时间：";
            // 
            // WordPad_4
            // 
            this.WordPad_4.Location = new System.Drawing.Point(15, 154);
            this.WordPad_4.Margin = new System.Windows.Forms.Padding(4);
            this.WordPad_4.Multiline = true;
            this.WordPad_4.Name = "WordPad_4";
            this.WordPad_4.Size = new System.Drawing.Size(417, 164);
            this.WordPad_4.TabIndex = 3;
            // 
            // WordPad_3
            // 
            this.WordPad_3.Location = new System.Drawing.Point(103, 95);
            this.WordPad_3.Margin = new System.Windows.Forms.Padding(4);
            this.WordPad_3.Name = "WordPad_3";
            this.WordPad_3.Size = new System.Drawing.Size(329, 25);
            this.WordPad_3.TabIndex = 2;
            // 
            // WordPad_2
            // 
            this.WordPad_2.FormattingEnabled = true;
            this.WordPad_2.Location = new System.Drawing.Point(103, 61);
            this.WordPad_2.Margin = new System.Windows.Forms.Padding(4);
            this.WordPad_2.Name = "WordPad_2";
            this.WordPad_2.Size = new System.Drawing.Size(149, 23);
            this.WordPad_2.TabIndex = 1;
            // 
            // WordPad_1
            // 
            this.WordPad_1.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.WordPad_1.Location = new System.Drawing.Point(103, 28);
            this.WordPad_1.Margin = new System.Windows.Forms.Padding(4);
            this.WordPad_1.Name = "WordPad_1";
            this.WordPad_1.Size = new System.Drawing.Size(149, 25);
            this.WordPad_1.TabIndex = 0;
            // 
            // checkBox3
            // 
            this.checkBox3.AutoSize = true;
            this.checkBox3.Location = new System.Drawing.Point(13, 370);
            this.checkBox3.Margin = new System.Windows.Forms.Padding(4);
            this.checkBox3.Name = "checkBox3";
            this.checkBox3.Size = new System.Drawing.Size(89, 19);
            this.checkBox3.TabIndex = 1;
            this.checkBox3.Text = "全部显示";
            this.checkBox3.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.checkBox3);
            this.groupBox2.Controls.Add(this.dataGridView1);
            this.groupBox2.Location = new System.Drawing.Point(39, 120);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox2.Size = new System.Drawing.Size(267, 399);
            this.groupBox2.TabIndex = 5;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "信息表";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(13, 30);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(4);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 23;
            this.dataGridView1.RowTemplate.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(240, 334);
            this.dataGridView1.TabIndex = 0;
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(31, 31);
            this.checkBox1.Margin = new System.Windows.Forms.Padding(4);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(89, 19);
            this.checkBox1.TabIndex = 0;
            this.checkBox1.Text = "记事时间";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(576, 24);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 29);
            this.button1.TabIndex = 4;
            this.button1.Text = "查询";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(400, 25);
            this.comboBox1.Margin = new System.Windows.Forms.Padding(4);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(139, 23);
            this.comboBox1.TabIndex = 3;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(127, 25);
            this.dateTimePicker1.Margin = new System.Windows.Forms.Padding(4);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(151, 25);
            this.dateTimePicker1.TabIndex = 2;
            this.dateTimePicker1.Value = new System.DateTime(2008, 3, 18, 0, 0, 0, 0);
            // 
            // checkBox2
            // 
            this.checkBox2.AutoSize = true;
            this.checkBox2.Location = new System.Drawing.Point(301, 29);
            this.checkBox2.Margin = new System.Windows.Forms.Padding(4);
            this.checkBox2.Name = "checkBox2";
            this.checkBox2.Size = new System.Drawing.Size(89, 19);
            this.checkBox2.TabIndex = 1;
            this.checkBox2.Text = "记事类别";
            this.checkBox2.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.comboBox1);
            this.groupBox1.Controls.Add(this.dateTimePicker1);
            this.groupBox1.Controls.Add(this.checkBox2);
            this.groupBox1.Controls.Add(this.checkBox1);
            this.groupBox1.Location = new System.Drawing.Point(39, 39);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox1.Size = new System.Drawing.Size(721, 70);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "查询";
            // 
            // F_WordPad
            // 
            this.ClientSize = new System.Drawing.Size(799, 558);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "F_WordPad";
            this.groupBox4.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }
    }
}