using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PWMS.PerForm
{
    public partial class F_Stat : Form
    {
        public F_Stat()
        {
            InitializeComponent();
        }
        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();

        public static string Term_Field = "Folk,Age,Kultur,Marriage,Sex,Visage,WorkLength,Employee,Business,Laborage,Branch,Duthcall,School,Speciality,Pact_Y,BeAware,City";
        public static string Term_Value = "�������,����,�Ļ��̶�,����,�Ա�,������ò,����,ְ�����,ְ�����,�������,�������,ְ�����,��ҵѧУ,����רҵ,��ͬ����,��������ʡ,����������";
        public static string[] A_Field = Term_Field.Split(Convert.ToChar(','));
        public static string[] A_Value = Term_Value.Split(Convert.ToChar(','));
        public static DataSet MyDS_Grid;

        public void Stat_Class(int n)
        {
            MyDS_Grid = MyDataClass.getDataSet("select " + A_Field[n] + " as '" + A_Value[n] + "', count(" + A_Field[n] + ")  as '����' from tb_Stuffbasic group by " + A_Field[n], "tb_Stuffbasic");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.Columns[0].Width = 120;
            dataGridView1.Columns[1].Width = 55;
        }

        private void F_Stat_Load(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            for (int i = 0; i < A_Value.Length; i++)
                listBox1.Items.Add("��" + A_Value[i] + "ͳ��");
            Stat_Class(0);

        }

        private void listBox1_Click(object sender, EventArgs e)
        {
            Stat_Class(listBox1.SelectedIndex);
        }
    }
}