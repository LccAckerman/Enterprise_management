using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PWMS.PerForm
{
    public partial class F_AddressList : Form
    {
        public F_AddressList()
        {
            InitializeComponent();
        }
        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();
        ModuleClass.MyModule MyMC = new PWMS.ModuleClass.MyModule();
        public static DataSet MyDS_Grid;
        public static string AllSql = "Select ID,Name as ����,Sex as �Ա�,Phone as �绰,WordPhone as �����绰,Handset as �ֻ�, QQ as QQ��,E_Mail as �����ַ from tb_AddressBook";
        public static string Find_Field = "";
        
        public void ShowAll()
        {
            ModuleClass.MyModule.Address_ID = "";
            //��dataGridView1�ؼ���ʾְ��������
            MyDS_Grid = MyDataClass.getDataSet(AllSql, "tb_AddressBook");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.Columns[0].Visible = false;
            if (dataGridView1.RowCount > 1)
            {
                Address_Amend.Enabled = true;
                Address_Delete.Enabled = true;
            }
            else
            {
                Address_Amend.Enabled = false;
                Address_Delete.Enabled = false;
            }
        }
        
        private void F_AddressList_Load(object sender, EventArgs e)
        {
            ShowAll();
        }

        private void Address_Add_Click(object sender, EventArgs e)
        {
            InfoAddForm.F_Address FrmAddress = new PWMS.InfoAddForm.F_Address();
            FrmAddress.Text = "ͨѶ¼��Ӳ���";
            FrmAddress.Tag = 1;
            FrmAddress.ShowDialog(this);
            ShowAll();
        }

        private void Address_Amend_Click(object sender, EventArgs e)
        {
            InfoAddForm.F_Address FrmAddress = new PWMS.InfoAddForm.F_Address();
            FrmAddress.Text = "ͨѶ¼�޸Ĳ���";
            FrmAddress.Tag = 2;
            FrmAddress.ShowDialog(this);
            ShowAll();
        }

        private void dataGridView1_CellEnter(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Address_Delete_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            ShowAll();
        }

        private void Address_Quit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void InitializeComponent()
        {
            this.SuspendLayout();
            // 
            // F_AddressList
            // 
            this.ClientSize = new System.Drawing.Size(803, 495);
            this.Name = "F_AddressList";
            this.Text = "F_AddressList";
            this.Load += new System.EventHandler(this.F_AddressList_Load_1);
            this.ResumeLayout(false);

        }

        private void F_AddressList_Load_1(object sender, EventArgs e)
        {

        }
    }
}