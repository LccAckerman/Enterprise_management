using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace PWMS.PerForm
{
    public partial class F_Find : Form
    {
        public F_Find()
        {
            InitializeComponent();
        }
        ModuleClass.MyModule MyMC = new PWMS.ModuleClass.MyModule();
        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();
        public static DataSet MyDS_Grid;
        public string ARsign = " AND ";
        public static string Sut_SQL = "select ID as ���,StuffName as ְ������,Folk as �������,Birthday as ��������,Age as ����,Kultur as �Ļ��̶�,Marriage as ����,Sex as �Ա�,Visage as ������ò,IDCard as ���֤��,Workdate as ��λ����ʱ��,WorkLength as ����,Employee as ְ�����,Business as ְ�����,Laborage as �������,Branch as �������,Duthcall as ְ�����,Phone as �绰,Handset as �ֻ�,School as ��ҵѧУ,Speciality as ����רҵ,GraduateDate as ��ҵʱ��,M_Pay as �¹���,Bank as �����ʺ�,Pact_B as ��ͬ��ʼʱ��,Pact_E as ��ͬ����ʱ��,Pact_Y as ��ͬ����,BeAware as ��������ʡ,City as ���������� from tb_Stuffbasic";

        #region  ��տؼ����ϵĿؼ���Ϣ
        /// <summary>
        /// ���GroupBox�ؼ��ϵĿؼ���Ϣ.
        /// </summary>
        /// <param name="n">�ؼ�����</param>
        /// <param name="GBox">GroupBox�ؼ������ݼ�</param>
        /// <param name="TName">��ȡ��Ϣ�ؼ��Ĳ�������</param>
        private void Clear_Box(int n, Control.ControlCollection GBox, string TName)
        {
            for (int i = 0; i < n; i++)
            {
                foreach (Control C in GBox)
                {
                    if (C.GetType().Name == "TextBox" | C.GetType().Name == "MaskedTextBox" | C.GetType().Name == "ComboBox")
                        if (C.Name.IndexOf(TName)>-1)
                        {
                            C.Text = "";
                        }
                }
            }
        }
        #endregion
        
        private void F_Find_Load(object sender, EventArgs e)
        {
            MyMC.CoPassData(Find_Folk, "tb_Folk");  //����������б���������Ϣ
            MyMC.CoPassData(Find_Kultur, "tb_Kultur");  //��"�Ļ��̶ȡ��б���������Ϣ
            MyMC.CoPassData(Find_Visage, "tb_Visage");  //��"������ò���б���������Ϣ
            MyMC.CoPassData(Find_Employee, "tb_EmployeeGenre");  //��"ְ������б���������Ϣ
            MyMC.CoPassData(Find_Business, "tb_Business");  //��"ְ������б���������Ϣ
            MyMC.CoPassData(Find_Laborage, "tb_Laborage");  //��"��������б���������Ϣ
            MyMC.CoPassData(Find_Branch, "tb_Branch");  //��"��������б���������Ϣ
            MyMC.CoPassData(Find_Duthcall, "tb_Duthcall");  //��"ְ������б���������Ϣ
            //�������б������ʡ��
            MyMC.CityInfo(Find_BeAware, "select distinct beaware from tb_City", 0);
            //�������б����������
            MyMC.CityInfo(Find_School, "select distinct School from tb_Stuffbasic", 0);
            //�������б����������רҵ
            MyMC.CityInfo(Find_Speciality, "select distinct Speciality from tb_Stuffbasic", 0);
            MyMC.MaskedTextBox_Format(Find1_WorkDate);  //ָ��MaskedTextBox�ؼ��ĸ�ʽ
            MyMC.MaskedTextBox_Format(Find2_WorkDate);
            //����SQL�����в�ѯ
            MyDS_Grid = MyDataClass.getDataSet(Sut_SQL, "tb_Stuffbasic");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.AutoGenerateColumns = true;

        }

        private void Find_BeAware_TextChanged(object sender, EventArgs e)
        {
            Find_City.Items.Clear();
            MyMC.CityInfo(Find_City, "select beaware,city from tb_City where beaware='" + Find_BeAware.Text.Trim() + "'", 1);
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            ARsign = " AND ";
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            ARsign = " OR ";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ModuleClass.MyModule.FindValue = "";    //��մ洢��ѯ���ı���
            string Find_SQL = Sut_SQL;  //�洢��ʾ���ݱ���������Ϣ��SQL���
            MyMC.Find_Grids(groupBox1.Controls, "Find", ARsign);    //��ָ���ؼ����µĿؼ���ϳɲ�ѯ����
            MyMC.Find_Grids(groupBox2.Controls, "Find", ARsign);
            //����ͬ����ʼ���ںͽ������ڲ�Ϊ��ʱ
            if (MyMC.Date_Format(Find1_WorkDate.Text) != "" && MyMC.Date_Format(Find2_WorkDate.Text) != "")
            {
                if (ModuleClass.MyModule.FindValue != "")   //���FindValue�ֶβ�Ϊ��
                    //��ARsign�������Ӳ�ѯ����
                    ModuleClass.MyModule.FindValue = ModuleClass.MyModule.FindValue + ARsign;
                //���ú�ͬ���ڵĲ�ѯ����
                ModuleClass.MyModule.FindValue = ModuleClass.MyModule.FindValue + " (" + "workdate>='" + Find1_WorkDate.Text + "' AND workdate<='" + Find2_WorkDate.Text + "')";
            }
            if (ModuleClass.MyModule.FindValue != "")   //���FindValue�ֶβ�Ϊ��
                //����ѯ������ӵ�SQL����β��
                Find_SQL = Find_SQL + " where " + ModuleClass.MyModule.FindValue;
            //����ָ�����������в�ѯ
            MyDS_Grid = MyDataClass.getDataSet(Find_SQL, "tb_Stuffbasic");
            //��dataGridView1�ؼ�����ʾ��ѯ�Ľ��
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.AutoGenerateColumns = true;
            checkBox1.Checked = false;
        }

        private void Find1_WorkDate_Leave(object sender, EventArgs e)
        {
            MyMC.Estimate_Date((MaskedTextBox)sender);
        }

        private void Find1_WorkDate_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void Find2_WorkDate_Leave(object sender, EventArgs e)
        {

            bool TDate = MyMC.Estimate_Date((MaskedTextBox)sender);
            if (TDate == true)
                if (MyMC.Date_Format(Find1_WorkDate.Text) != "" && MyMC.Date_Format(Find2_WorkDate.Text) != "")
                {
                    if (Convert.ToDateTime(Find2_WorkDate.Text) <= Convert.ToDateTime(Find1_WorkDate.Text))
                        MessageBox.Show("��ǰ���ڱ��������ǰһ�����ڡ�");
                }
        }

        private void Find2_WorkDate_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void Find_Age_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void Find_M_Pay_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, ((TextBox)sender).Text, 1);
        }

        private void Find_WorkLength_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void Find_Pact_Y_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void checkBox1_Click(object sender, EventArgs e)
        {
            if (checkBox1.Checked == true)
            {
                MyDS_Grid = MyDataClass.getDataSet(Sut_SQL, "tb_Stuffbasic");
                dataGridView1.DataSource = MyDS_Grid.Tables[0];
                dataGridView1.AutoGenerateColumns = true;
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Clear_Box(7, groupBox1.Controls, "Find_");
            Clear_Box(12, groupBox2.Controls, "Find");
            Clear_Box(4, groupBox2.Controls, "Sign");
        }

    }
}