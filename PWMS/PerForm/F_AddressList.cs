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
            if (dataGridView1.RowCount > 1)
            {
                ModuleClass.MyModule.Address_ID = dataGridView1[0, dataGridView1.CurrentCell.RowIndex].Value.ToString();
                Address_Amend.Enabled = true;
                Address_Delete.Enabled = true;

            }
            else
            {
                Address_Amend.Enabled = false;
                Address_Delete.Enabled = false;
            }
        }

        private void Address_Delete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("ȷ��Ҫɾ��������Ϣ��", "��ʾ", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                MyDataClass.getsqlcom("Delete tb_AddressBook where ID='" + ModuleClass.MyModule.Address_ID + "'");
                ShowAll();
            }
        }

        private void comboBox1_TextChanged(object sender, EventArgs e)
        {
            switch (((ComboBox)sender).SelectedIndex)
            {
                case 0:
                    {
                        Find_Field = "Name";
                        break;
                    }
                case 1:
                    {
                        Find_Field = "Sex";
                        break;
                    }
                case 2:
                    {
                        Find_Field = "E_Mail";
                        break;
                    }
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "")
            {
                MessageBox.Show("�������ѯ������");
                return;
            }
            ModuleClass.MyModule.Address_ID = "";
            //��dataGridView1�ؼ���ʾְ��������
            MyDS_Grid = MyDataClass.getDataSet(AllSql+" where "+Find_Field+" like '%"+textBox1.Text.Trim()+"%'", "tb_AddressBook");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.Columns[0].Visible = false;
            if (dataGridView1.RowCount > 0)
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

        private void button1_Click(object sender, EventArgs e)
        {
            ShowAll();
        }

        private void Address_Quit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}