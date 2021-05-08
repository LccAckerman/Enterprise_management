using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace PWMS.PerForm
{
    public partial class F_ManFile : Form
    {
        public F_ManFile()
        {
            InitializeComponent();
        }

        #region  ��ǰ��������й�������
        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();
        ModuleClass.MyModule MyMC = new PWMS.ModuleClass.MyModule();
        public static DataSet MyDS_Grid;
        public static string tem_Field = "";
        public static string tem_Value = "";
        public static string tem_ID = "";
        public static int hold_n = 0;
        public static byte[] imgBytesIn;  //�����洢ͼƬ�Ķ�������
        public static int Ima_n = 0;  //�ж��Ƿ��ͼƬ�����˲���
        public static string Part_ID = "";  //�洢���ݱ��ID��Ϣ
        #endregion

        public void ShowData_Image(byte[] DI, PictureBox Ima)  //��ʾ���ݿ�ͼƬ
        {
            byte[] buffer = DI;
            MemoryStream ms = new MemoryStream(buffer);
            Ima.Image = Image.FromStream(ms);
        }

        #region  ��ʾ��ְ��������Ϣ�����е�ָ����¼
        /// <summary>
        /// ��̬��ȡָ���ļ�¼�У���������ʾ.
        /// </summary>
        /// <param name="DGrid">DataGridView�ؼ�</param>
        /// <returns>����string����</returns> 
        public string Grid_Inof(DataGridView DGrid)
        {
            byte[] pic; //����һ���ֽ�����
            //��DataGridView�ؼ��ļ�¼>1ʱ������ǰ������Ϣ��ʾ����Ӧ�Ŀؼ���
            if (DGrid.RowCount > 1)
            {
                S_0.Text = DGrid[0, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_1.Text = DGrid[1, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_2.Text = Convert.ToString(DGrid[2, DGrid.CurrentCell.RowIndex].Value).Trim();
                S_3.Text = MyMC.Date_Format(Convert.ToString(DGrid[3, DGrid.CurrentCell.RowIndex].Value).Trim());
                S_4.Text = Convert.ToString(DGrid[4, DGrid.CurrentCell.RowIndex].Value).Trim();
                S_5.Text = DGrid[5, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_6.Text = DGrid[6, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_7.Text = DGrid[7, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_8.Text = DGrid[8, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_9.Text = DGrid[9, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_10.Text = MyMC.Date_Format(Convert.ToString(DGrid[10, DGrid.CurrentCell.RowIndex].Value).Trim());
                S_11.Text = Convert.ToString(DGrid[11, DGrid.CurrentCell.RowIndex].Value).Trim();
                S_12.Text = DGrid[12, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_13.Text = DGrid[13, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_14.Text = DGrid[14, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_15.Text = DGrid[15, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_16.Text = DGrid[16, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_17.Text = DGrid[17, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_18.Text = DGrid[18, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_19.Text = DGrid[19, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_20.Text = DGrid[20, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_21.Text = MyMC.Date_Format(Convert.ToString(DGrid[21, DGrid.CurrentCell.RowIndex].Value).Trim());
                S_22.Text = DGrid[22, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_23.Text = DGrid[24, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_24.Text = DGrid[25, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_25.Text = Convert.ToString(DGrid[26, DGrid.CurrentCell.RowIndex].Value).Trim();
                S_26.Text = DGrid[27, DGrid.CurrentCell.RowIndex].Value.ToString();
                S_27.Text = MyMC.Date_Format(Convert.ToString(DGrid[28, DGrid.CurrentCell.RowIndex].Value).Trim());
                S_28.Text = MyMC.Date_Format(Convert.ToString(DGrid[29, DGrid.CurrentCell.RowIndex].Value).Trim());
                S_29.Text = Convert.ToString(DGrid[30, DGrid.CurrentCell.RowIndex].Value).Trim();
                try
                {
                    //�����ݿ��е�ͼƬ���뵽�ֽ�������
                    pic = (byte[])(MyDS_Grid.Tables[0].Rows[DGrid.CurrentCell.RowIndex][23]);
                    MemoryStream ms = new MemoryStream(pic);			//���ֽ�������뵽����������
                    S_Photo.Image = Image.FromStream(ms);   //��������Image�ؼ�����ʾ
                }
                catch { S_Photo.Image = null; } //�����ִ���ʱ����Image�ؼ����
                tem_ID = S_0.Text.Trim();   //��ȡ��ǰְ�����
                return DGrid[1, DGrid.CurrentCell.RowIndex].Value.ToString();   //���ص�ǰְ��������
            }
            else
            {
                //ʹ��MyMeans�������е�Clear_Control()�������ָ���ؼ����е���Ӧ�ؼ�
                MyMC.Clear_Control(tabControl1.TabPages[0].Controls);
                tem_ID = "";
                return "";
            }
        }
        #endregion

        #region  ��������ʾ��ְ��������Ϣ���������
        /// <summary>
        /// ͨ������������̬���в�ѯ.
        /// </summary>
        /// <param name="C_Value">����ֵ</param>
        public void Condition_Lookup(string C_Value)
        {
            MyDS_Grid = MyDataClass.getDataSet("Select * from tb_Stuffbasic where " + tem_Field + "='" + tem_Value + "'", "tb_Stuffbasic");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            textBox1.Text = Grid_Inof(dataGridView1);  //��ʾְ����Ϣ��ĵ�ǰ��¼            
        }
        #endregion

        #region  ��ͼƬת�����ֽ�����
        public void Read_Image(OpenFileDialog openF, PictureBox MyImage)
        {
            openF.Filter = "*.jpg|*.jpg|*.bmp|*.bmp";   //ָ��OpenFileDialog�ؼ��򿪵��ļ���ʽ
            if (openF.ShowDialog(this) == DialogResult.OK)  //�������ͼƬ�ļ�
            {
                try
                {
                    MyImage.Image = System.Drawing.Image.FromFile(openF.FileName);  //��ͼƬ�ļ����뵽PictureBox�ؼ���
                    string strimg = openF.FileName.ToString();  //��¼ͼƬ������·��
                    FileStream fs = new FileStream(strimg, FileMode.Open, FileAccess.Read); //��ͼƬ���ļ�������ʽ���б���
                    BinaryReader br = new BinaryReader(fs);
                    imgBytesIn = br.ReadBytes((int)fs.Length);  //�������뵽�ֽ�������
                }
                catch
                {
                    MessageBox.Show("��ѡ���ͼƬ���ܱ���ȡ���ļ����Ͳ��ԣ�", "����", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    S_Photo.Image = null;
                }
            }
        }
        #endregion

        private void F_ManFile_Load(object sender, EventArgs e)
        {
            //��dataGridView1�ؼ���ʾְ��������
            MyDS_Grid = MyDataClass.getDataSet(DataClass.MyMeans.AllSql, "tb_Stuffbasic");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.AutoGenerateColumns = true;  //�Ƿ��Զ�������
            dataGridView1.Columns[0].Width = 60;
            dataGridView1.Columns[1].Width = 80;

            for (int i = 2; i < dataGridView1.ColumnCount; i++)  //����dataGridView1�ؼ��в���Ҫ�����ֶ�
            {
                dataGridView1.Columns[i].Visible = false;
            }

            MyMC.MaskedTextBox_Format(S_3);  //ָ��MaskedTextBox�ؼ��ĸ�ʽ
            MyMC.MaskedTextBox_Format(S_10);
            MyMC.MaskedTextBox_Format(S_21);
            MyMC.MaskedTextBox_Format(S_27);
            MyMC.MaskedTextBox_Format(S_28);

            MyMC.CoPassData(S_2, "tb_Folk");  //����������б���������Ϣ
            MyMC.CoPassData(S_5, "tb_Kultur");  //��"�Ļ��̶ȡ��б���������Ϣ
            MyMC.CoPassData(S_8, "tb_Visage");  //��"������ò���б���������Ϣ
            MyMC.CoPassData(S_12, "tb_EmployeeGenre");  //��"ְ������б���������Ϣ
            MyMC.CoPassData(S_13, "tb_Business");  //��"ְ������б���������Ϣ
            MyMC.CoPassData(S_14, "tb_Laborage");  //��"��������б���������Ϣ
            MyMC.CoPassData(S_15, "tb_Branch");  //��"��������б���������Ϣ
            MyMC.CoPassData(S_16, "tb_Duthcall");  //��"ְ������б���������Ϣ
            MyMC.CityInfo(S_23, "select distinct beaware from tb_City", 0);

            S_23.AutoCompleteMode = AutoCompleteMode.SuggestAppend;  //ʹS_BeAware�ؼ����в�ѯ����
            S_23.AutoCompleteSource = AutoCompleteSource.ListItems;

            textBox1.Text = Grid_Inof(dataGridView1);  //��ʾְ����Ϣ����׼�¼
            DataClass.MyMeans.AllSql = "Select * from tb_Stuffbasic";

        }

        private void Sut_Add_Click(object sender, EventArgs e)
        {
            MyMC.Clear_Control(tabControl1.TabPages[0].Controls);   //���ְ��������Ϣ����Ӧ�ı���
            S_0.Text = MyMC.GetAutocoding("tb_Stuffbasic", "ID");  //�Զ���ӱ��
            hold_n = 1;  //���ڼ�¼��Ӳ����ı�ʶ
            MyMC.Ena_Button(Sut_Add, Sut_Amend, Sut_Cancel, Sut_Save, 0, 0, 1, 1);
            groupBox5.Text = "��ǰ���������Ϣ";
            Img_Clear.Enabled = true;   //ʹͼƬѡ��ťΪ����״̬
            Img_Save.Enabled = true;
        }

        private void S_BeAware_TextChanged(object sender, EventArgs e)
        {
            S_24.Items.Clear();
            MyMC.CityInfo(S_24, "select beaware,city from tb_City where beaware='" + S_23.Text.Trim() + "'", 1);
        }

        private void tabControl1_Click(object sender, EventArgs e)
        {
            groupBox5.Enabled = true;
            Sut_Delete.Enabled = true;
            MyMC.Ena_Button(Sut_Add, Sut_Amend, Sut_Cancel, Sut_Save, 1, 1, 0, 0);
            if (tabControl1.SelectedTab.Name == "tabPage1") //���ѡ����ǡ�ְ��������Ϣ��ѡ�
            {
                hold_n = 0;  //�ָ�ԭʼ��ʶ
                MyMC.Ena_Button(Sut_Add, Sut_Amend, Sut_Cancel, Sut_Save, 1, 1, 0, 0);  //
                groupBox5.Text = "";
                Ima_n = 0;//��ʶ�Ƿ�ѡ����ְ����Ƭ
                Img_Clear.Enabled = false;  //ʹ��ťΪ������״̬
                Img_Save.Enabled = false;
                Sub_Table.Enabled = true;
                Sub_Excel.Enabled = true;
            }
            //���ѡ����ǡ�����������������ͥ��ϵ��������ѵ��¼���͡����ͼ�¼��ѡ�
            if (tabControl1.SelectedTab.Name == "tabPage2" | tabControl1.SelectedTab.Name == "tabPage3" | tabControl1.SelectedTab.Name == "tabPage4" | tabControl1.SelectedTab.Name == "tabPage5")
            {
                groupBox5.Enabled = false;  //ʹ�����еĲ�����ťΪ������״̬
                Sub_Table.Enabled = false;
                Sub_Excel.Enabled = false;
                if (tabControl1.SelectedTab.Name == "tabPage2") //������������ѡ�
                {
                    groupBox6.Parent = (TabPage)tabPage2;
                    MyMC.MaskedTextBox_Format(Word_2);  //ָ��MaskedTextBox�ؼ��ĸ�ʽ
                    MyMC.MaskedTextBox_Format(Word_3);
                }
                if (tabControl1.SelectedTab.Name == "tabPage3") //����ͥ��ϵ��ѡ�
                {
                    groupBox6.Parent = (TabPage)tabPage3;
                    MyMC.MaskedTextBox_Format(Famity_4);

                }
                if (tabControl1.SelectedTab.Name == "tabPage4") //����ѵ��¼��ѡ�
                {
                    groupBox6.Parent = (TabPage)tabPage4;
                    MyMC.MaskedTextBox_Format(TrainNote_3);
                    MyMC.MaskedTextBox_Format(TrainNote_4);
                }
                if (tabControl1.SelectedTab.Name == "tabPage5") //�����ͼ�¼��ѡ�
                {
                    groupBox6.Parent = (TabPage)tabPage5;
                    MyMC.MaskedTextBox_Format(RANDP_3);
                    MyMC.MaskedTextBox_Format(RANDP_5);
                    MyMC.CoPassData(RANDP_2, "tb_RPKind");  //�򡰽�������б���������Ϣ
                }
                MyMC.Ena_Button(Part_Add, Part_Amend, Part_Cancel, Part_Save, 1, 1, 0, 0);
            }
            if (tabControl1.SelectedTab.Name == "tabPage6") //�����˼�����ѡ�
            {
                MyMC.Ena_Button(Sut_Add, Sut_Amend, Sut_Cancel, Sut_Delete, 0, 0, 0, 0);    //ʹ�����еĲ�����ťΪ������
                Sut_Save.Enabled = true;    //�������еġ����桱��ť��Ϊ����״̬
            }

        }

        private void comboBox1_TextChanged(object sender, EventArgs e)
        {
            switch (comboBox1.SelectedIndex)  //��comboBox2�ؼ��������Ӧ�Ĳ�ѯ����
            {
                case 0:
                    {
                        MyMC.CityInfo(comboBox2, "select distinct StuffName from tb_Stuffbasic", 0);  //ְ������
                        tem_Field = "StuffName";
                        break;
                    }
                case 1:  //�Ա�
                    {
                        comboBox2.Items.Clear();
                        comboBox2.Items.Add("��");
                        comboBox2.Items.Add("Ů");
                        tem_Field = "Sex";
                        break;

                    }
                case 2:
                    {
                        MyMC.CoPassData(comboBox2, "tb_Folk");  //�������
                        tem_Field = "Folk";
                        break;
                    }
                case 3:
                    {
                        MyMC.CoPassData(comboBox2, "tb_Kultur");  //�Ļ��̶�
                        tem_Field = "Kultur";
                        break;
                    }
                case 4:
                    {
                        MyMC.CoPassData(comboBox2, "tb_Visage");  //������ò
                        tem_Field = "Visage";
                        break;
                    }
                case 5:
                    {
                        MyMC.CoPassData(comboBox2, "tb_EmployeeGenre");  //ְ�����
                        tem_Field = "Employee";
                        break;
                    }
                case 6:
                    {
                        MyMC.CoPassData(comboBox2, "tb_Business");  //ְ�����
                        tem_Field = "Business";
                        break;
                    }
                case 7:
                    {
                        MyMC.CoPassData(comboBox2, "tb_Branch");  //�������
                        tem_Field = "Branch";
                        break;
                    }
                case 8:
                    {
                        MyMC.CoPassData(comboBox2, "tb_Duthcall");  //ְ�����
                        tem_Field = "Duthcall";
                        break;
                    }
                case 9:
                    {
                        MyMC.CoPassData(comboBox2, "tb_Laborage");  //�������
                        tem_Field = "Laborage";
                        break;
                    }
            }

        }

        private void N_First_Click(object sender, EventArgs e)
        {
            int ColInd = 0;
            if (dataGridView1.CurrentCell.ColumnIndex == -1 || dataGridView1.CurrentCell.ColumnIndex > 1)
                ColInd = 0;
            else
                ColInd = dataGridView1.CurrentCell.ColumnIndex;
            if ((((Button)sender).Name) == "N_First")
            {
                dataGridView1.CurrentCell = this.dataGridView1[ColInd, 0];
                MyMC.Ena_Button(N_First, N_Previous, N_Next, N_Cauda, 0, 0, 1, 1);
            }
            if ((((Button)sender).Name) == "N_Previous")
            {
                if (dataGridView1.CurrentCell.RowIndex == 0)
                {
                    MyMC.Ena_Button(N_First, N_Previous, N_Next, N_Cauda, 0, 0, 1, 1);
                }
                else
                {
                    dataGridView1.CurrentCell = this.dataGridView1[ColInd, dataGridView1.CurrentCell.RowIndex - 1];
                    MyMC.Ena_Button(N_First, N_Previous, N_Next, N_Cauda, 1, 1, 1, 1);
                }
            }
            if ((((Button)sender).Name) == "N_Next")
            {
                if (dataGridView1.CurrentCell.RowIndex == dataGridView1.RowCount - 2)
                {
                    MyMC.Ena_Button(N_First, N_Previous, N_Next, N_Cauda, 1, 1, 0, 0);
                }
                else
                {
                    dataGridView1.CurrentCell = this.dataGridView1[ColInd, dataGridView1.CurrentCell.RowIndex + 1];
                    MyMC.Ena_Button(N_First, N_Previous, N_Next, N_Cauda, 1, 1, 1, 1);
                }
            }
            if ((((Button)sender).Name) == "N_Cauda")
            {
                dataGridView1.CurrentCell = this.dataGridView1[ColInd, dataGridView1.RowCount - 2];
                MyMC.Ena_Button(N_First, N_Previous, N_Next, N_Cauda, 1, 1, 0, 0);
            }

        }

        private void N_Previous_Click(object sender, EventArgs e)
        {
            N_First_Click(sender, e);
        }

        private void N_Next_Click(object sender, EventArgs e)
        {
            N_First_Click(sender, e);
        }

        private void N_Cauda_Click(object sender, EventArgs e)
        {
            N_First_Click(sender, e);
        }

        private void dataGridView1_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (dataGridView1.CurrentCell.RowIndex > -1)
                {
                    textBox1.Text = Grid_Inof(dataGridView1);  //��ʾְ����Ϣ��ĵ�ǰ��¼
                    MyMC.Ena_Button(N_First, N_Previous, N_Next, N_Cauda, 1, 1, 1, 1);  //ʹ�����еı༭��ť����
                    //��ȡ�����������е���Ϣ
                    DataSet WDset = MyDataClass.getDataSet("select Stu_ID,ID,BeginDate as ��ʼʱ��,EndDate as ����ʱ��, Branch as ����, Business as ְ��, WordUnit as ������λ from tb_WordResume where Stu_ID='" + tem_ID + "'", "tb_WordResume");
                    MyMC.Correlation_Table(WDset, dataGridView2);   //��WDset�洢����Ϣ��ʾ��dataGridView2�ؼ���
                    if (WDset.Tables[0].Rows.Count < 1) //��WDset��û����Ϣʱ
                        //�����Ӧ�Ŀؼ�
                        MyMC.Clear_Grids(WDset.Tables[0].Columns.Count, groupBox7.Controls, "Word_");
                    //��ȡ��ͥ��ϵ���е���Ϣ
                    DataSet FDset = MyDataClass.getDataSet("select Stu_ID,ID,LeaguerName as ��ͥ��Ա����,Nexus as �뱾�˵Ĺ�ϵ, BirthDate as ��������, WordUnit as ������λ, Business as ְ��, Visage as ������ò, Phone as �绰 from tb_Family where Stu_ID='" + tem_ID + "'", "tb_Family");
                    MyMC.Correlation_Table(FDset, dataGridView3);
                    if (FDset.Tables[0].Rows.Count < 1)
                        MyMC.Clear_Grids(FDset.Tables[0].Columns.Count, groupBox10.Controls, "Famity_");
                    //��ȡ�����������е���Ϣ
                    DataSet TDset = MyDataClass.getDataSet("select Stu_ID,ID,TrainFashion as ��ѵ��ʽ,BeginDate as ��ѵ��ʼʱ��, EndDate as ��ѵ����ʱ��, Speciality as ��ѵרҵ, TrainUnit as ��ѵ��λ, KulturMemo as ��ѵ����, Charge as ����, Effect as Ч�� from tb_TrainNote where Stu_ID='" + tem_ID + "'", "tb_TrainNote");
                    MyMC.Correlation_Table(TDset, dataGridView4);
                    if (TDset.Tables[0].Rows.Count < 1)
                        MyMC.Clear_Grids(TDset.Tables[0].Columns.Count, groupBox12.Controls, "TrainNote_");
                    //��ȡ���ͼ�¼���е���Ϣ
                    DataSet RDset = MyDataClass.getDataSet("select Stu_ID,ID,RPKind as ��������,RPDate as ����ʱ��, SealMan as ��׼��, QuashDate as ����ʱ��, QuashWhys as ����ԭ�� from tb_RANDP where Stu_ID='" + tem_ID + "'", "tb_RANDP");
                    MyMC.Correlation_Table(RDset, dataGridView5);
                    if (RDset.Tables[0].Rows.Count < 1)
                        MyMC.Clear_Grids(RDset.Tables[0].Columns.Count, groupBox14.Controls, "RANDP_");
                    //��ȡ���˼������е���Ϣ
                    SqlDataReader Read_Memo = MyDataClass.getcom("Select * from tb_Individual where ID='" + tem_ID + "'");
                    if (Read_Memo.Read())
                        Ind_Mome.Text = Read_Memo[1].ToString();
                    else
                        Ind_Mome.Clear();

                    //MyMC.Show_DGrid(dataGridView2, groupBox7.Controls, "Word_");
                }
            }
            catch { }
        }

        private void comboBox2_TextChanged(object sender, EventArgs e)
        {
            try
            {
                tem_Value = comboBox2.SelectedItem.ToString();
                Condition_Lookup(tem_Value);
            }
            catch
            {
                comboBox2.Text = "";
                MessageBox.Show("ֻ����ѡ��ʽ��ѯ��");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            tem_Field = "";
            MyDS_Grid = MyDataClass.getDataSet(DataClass.MyMeans.AllSql, "tb_Stuffbasic");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            textBox1.Text = Grid_Inof(dataGridView1);  //��ʾְ����Ϣ��ĵ�ǰ��¼
        }

        private void Sut_Amend_Click(object sender, EventArgs e)
        {
            hold_n = 2;  //���ڼ�¼�޸Ĳ����ı�ʶ
            MyMC.Ena_Button(Sut_Add, Sut_Amend, Sut_Cancel, Sut_Save, 0, 0, 1, 1);
            groupBox5.Text = "��ǰ�����޸���Ϣ";
            Img_Clear.Enabled = true;   //ʹͼƬѡ��ťΪ����״̬
            Img_Save.Enabled = true;
        }

        private void Sut_Cancel_Click(object sender, EventArgs e)
        {
            hold_n = 0;  //�ָ�ԭʼ��ʶ
            MyMC.Ena_Button(Sut_Add, Sut_Amend, Sut_Cancel, Sut_Save, 1, 1, 0, 0);
            groupBox5.Text = "";
            Ima_n = 0;
            if (tem_Field == "")
                button1_Click(sender, e);
            else
                Condition_Lookup(tem_Value);
            Img_Clear.Enabled = false;
            Img_Save.Enabled = false;
        }

        private void Sut_Save_Click(object sender, EventArgs e)
        {
            if (tabControl1.SelectedTab.Name == "tabPage6") //�����ǰ�ǡ����˼�����ѡ�
            {
                //ͨ��MyMeans�������е�getcom()������ѯ��ǰְ���Ƿ�����˸��˼���
                SqlDataReader Read_Memo = MyDataClass.getcom("Select * from tb_Individual where ID='" + tem_ID + "'");
                if (Read_Memo.Read())   //����м�¼
                    //����ǰ���õĸ��˼��������޸�
                    MyDataClass.getsqlcom("update tb_Individual set Memo='" + Ind_Mome.Text + "' where ID='" + tem_ID + "'");
                else
                    //���û�м�¼���������Ӳ���
                    MyDataClass.getsqlcom("insert into tb_Individual (ID,Memo) values('" + tem_ID + "','" + Ind_Mome.Text + "')");
            }
            else //�����ǰ�ǡ�ְ��������Ϣ��ѡ�
            {
                //�����ַ������������洢����ְ��������Ϣ���е������ֶ�
                string All_Field = "ID,StuffName,Folk,Birthday,Age,Kultur,Marriage,Sex,Visage,IDCard,Workdate,WorkLength,Employee,Business,Laborage,Branch,Duthcall,Phone,Handset,School,Speciality,GraduateDate,Address,BeAware,City,M_Pay,Bank,Pact_B,Pact_E,Pact_Y";
                try
                {
                    if (hold_n == 1 || hold_n == 2) //�жϵ�ǰ����ӣ������޸Ĳ���
                    {
                        ModuleClass.MyModule.ADDs = ""; //���MyModule�������е�ADDs����
                        //��MyModule�������е�Part_SaveClass()���������ӻ��޸ĵ�SQL���
                        MyMC.Part_SaveClass(All_Field, S_0.Text.Trim(), "", tabControl1.TabPages[0].Controls, "S_", "tb_Stuffbasic", 30, hold_n);
                        //���ADDs������Ϊ�գ���ͨ��MyMeans�������е�getsqlcom()����ִ����ӡ��޸Ĳ���
                        if (ModuleClass.MyModule.ADDs != "")
                            MyDataClass.getsqlcom(ModuleClass.MyModule.ADDs);
                    }
                    if (Ima_n > 0)  //���ͼƬ��ʶ����0
                    {
                        //ͨ��MyModule��������r��SaveImage()������ͼƬ�������ݿ���
                        MyMC.SaveImage(S_0.Text.Trim(), imgBytesIn);
                    }
                    Sut_Cancel_Click(sender, e);    //���á�ȡ������ť�ĵ����¼�
                }
                catch
                {
                    MessageBox.Show("��������ȷ��ְ����Ϣ��");
                }
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Read_Image(openFileDialog1, S_Photo);
            Ima_n = 1;

        }

        private void button8_Click(object sender, EventArgs e)
        {
            S_Photo.Image = null;
            imgBytesIn = new byte[65536];
            Ima_n = 2;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            hold_n = 1;
            if (tabControl1.SelectedTab.Name == "tabPage2")
            {
                MyMC.Clear_Control(this.groupBox7.Controls);
                Part_ID = MyMC.GetAutocoding("tb_WordResume", "ID");  //�Զ���ӱ��;
            }
            if (tabControl1.SelectedTab.Name == "tabPage3")
            {
                MyMC.Clear_Control(this.groupBox10.Controls);
                Part_ID = MyMC.GetAutocoding("tb_Family", "ID");  //�Զ���ӱ��;
            }
            if (tabControl1.SelectedTab.Name == "tabPage4")
            {
                MyMC.Clear_Control(this.groupBox12.Controls);
                Part_ID = MyMC.GetAutocoding("tb_TrainNote", "ID");  //�Զ���ӱ��;
            }
            if (tabControl1.SelectedTab.Name == "tabPage5")
            {
                MyMC.Clear_Control(this.groupBox14.Controls);
                Part_ID = MyMC.GetAutocoding("tb_RANDP", "ID");  //�Զ���ӱ��;
            }
            MyMC.Ena_Button(Part_Add, Part_Amend, Part_Cancel, Part_Save, 1, 0, 1, 1);
        }

        private void Part_Save_Click(object sender, EventArgs e)
        {
            string s = "";
            if (tabControl1.SelectedTab.Name == "tabPage2")
            {
                s = "ID,Stu_ID,BeginDate,EndDate,Branch,Business,WordUnit";
                //"select Stu_ID,ID,BeginDate as ��ʼʱ��,EndDate as ����ʱ��, Branch as ����, Business as ְ��, WordUnit as ������λ from tb_WordResume
                ModuleClass.MyModule.ADDs = "";
                if (hold_n == 2)
                {
                    if (dataGridView2.RowCount < 2)
                    {
                        MessageBox.Show("���ݱ�Ϊ�գ��������޸�");
                    }
                    else
                        Part_ID = dataGridView2[1, dataGridView2.CurrentCell.RowIndex].Value.ToString();
                }
                MyMC.Part_SaveClass(s, tem_ID, Part_ID, this.groupBox7.Controls, "Word_", "tb_WordResume", 7, hold_n);
            }
            if (tabControl1.SelectedTab.Name == "tabPage3")
            {
                s = "ID,Stu_ID,LeaguerName,Nexus,BirthDate,WordUnit,Business,Visage,Phone";
                ModuleClass.MyModule.ADDs = "";
                if (hold_n == 2)
                {
                    if (dataGridView3.RowCount < 2)
                    {
                        MessageBox.Show("���ݱ�Ϊ�գ��������޸�");
                    }
                    else
                        Part_ID = dataGridView3[1, dataGridView3.CurrentCell.RowIndex].Value.ToString();
                }
                MyMC.Part_SaveClass(s, tem_ID, Part_ID, this.groupBox10.Controls, "Famity_", "tb_Family", 9, hold_n);
            }
            if (tabControl1.SelectedTab.Name == "tabPage4")
            {
                s = "ID,Stu_ID,TrainFashion,BeginDate,EndDate,Speciality,TrainUnit,KulturMemo,Charge,Effect";
                ModuleClass.MyModule.ADDs = "";
                if (hold_n == 2)
                {
                    if (dataGridView4.RowCount < 2)
                    {
                        MessageBox.Show("���ݱ�Ϊ�գ��������޸�");
                    }
                    else
                        Part_ID = dataGridView4[1, dataGridView4.CurrentCell.RowIndex].Value.ToString();
                }
                MyMC.Part_SaveClass(s, tem_ID, Part_ID, this.groupBox12.Controls, "TrainNote_", "tb_TrainNote", 10, hold_n);
            }
            if (tabControl1.SelectedTab.Name == "tabPage5")
            {
                s = "ID,Stu_ID,RPKind,RPDate,SealMan,QuashDate,QuashWhys";
                ModuleClass.MyModule.ADDs = "";
                if (hold_n == 2)
                {
                    if (dataGridView5.RowCount < 2)
                    {
                        MessageBox.Show("���ݱ�Ϊ�գ��������޸�");
                    }
                    else
                        Part_ID = dataGridView5[1, dataGridView5.CurrentCell.RowIndex].Value.ToString();
                }
                MyMC.Part_SaveClass(s, tem_ID, Part_ID, this.groupBox14.Controls, "RANDP_", "tb_RANDP", 7, hold_n);
            }
            if (ModuleClass.MyModule.ADDs != "")
                MyDataClass.getsqlcom(ModuleClass.MyModule.ADDs);
            Part_Cancel_Click(sender, e);
        }

        private void Part_Amend_Click(object sender, EventArgs e)
        {
            hold_n = 2;
            MyMC.Ena_Button(Part_Add, Part_Amend, Part_Cancel, Part_Save, 0, 1, 1, 1);
        }

        private void Part_Cancel_Click(object sender, EventArgs e)
        {
            if (tabControl1.SelectedTab.Name == "tabPage2")
            {
                DataSet WDset = MyDataClass.getDataSet("select Stu_ID,ID,BeginDate as ��ʼʱ��,EndDate as ����ʱ��, Branch as ����, Business as ְ��, WordUnit as ������λ from tb_WordResume where Stu_ID='" + tem_ID + "'", "tb_WordResume");
                MyMC.Correlation_Table(WDset, dataGridView2);
            }
            if (tabControl1.SelectedTab.Name == "tabPage3")
            {
                DataSet FDset = MyDataClass.getDataSet("select Stu_ID,ID,LeaguerName as ��ͥ��Ա����,Nexus as �뱾�˵Ĺ�ϵ, BirthDate as ��������, WordUnit as ������λ, Business as ְ��, Visage as ������ò, Phone as �绰 from tb_Family where Stu_ID='" + tem_ID + "'", "tb_Family");
                MyMC.Correlation_Table(FDset, dataGridView3);
            }
            if (tabControl1.SelectedTab.Name == "tabPage4")
            {
                DataSet TDset = MyDataClass.getDataSet("select Stu_ID,ID,TrainFashion as ��ѵ��ʽ,BeginDate as ��ѵ��ʼʱ��, EndDate as ��ѵ����ʱ��, Speciality as ��ѵרҵ, TrainUnit as ��ѵ��λ, KulturMemo as ��ѵ����, Charge as ����, Effect as Ч�� from tb_TrainNote where Stu_ID='" + tem_ID + "'", "tb_TrainNote");
                MyMC.Correlation_Table(TDset, dataGridView4);
            }
            if (tabControl1.SelectedTab.Name == "tabPage5")
            {
                DataSet RDset = MyDataClass.getDataSet("select Stu_ID,ID,RPKind as ��������,RPDate as ����ʱ��, SealMan as ��׼��, QuashDate as ����ʱ��, QuashWhys as ����ԭ�� from tb_RANDP where Stu_ID='" + tem_ID + "'", "tb_RANDP");
                MyMC.Correlation_Table(RDset, dataGridView5);
            }
            hold_n = 0;  //�ָ�ԭʼ��ʶ
            MyMC.Ena_Button(Part_Add, Part_Amend, Part_Cancel, Part_Save, 1, 1, 0, 0);
        }

        private void dataGridView2_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            MyMC.Show_DGrid(dataGridView2, groupBox7.Controls, "Word_");
        }

        private void S_Pact_B_Leave(object sender, EventArgs e)
        {
            MyMC.Estimate_Date((MaskedTextBox)sender);
        }

        private void S_Pact_B_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void S_Pact_E_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void S_Pact_E_Leave(object sender, EventArgs e)
        {
            bool TDate = MyMC.Estimate_Date((MaskedTextBox)sender);
            if (TDate == true)
                if (MyMC.Date_Format(S_27.Text) != "" && MyMC.Date_Format(S_28.Text) != "")
                {
                    if (Convert.ToDateTime(S_28.Text) <= Convert.ToDateTime(S_27.Text))
                        MessageBox.Show("��ǰ���ڱ��������ǰһ�����ڡ�");
                }
        }

        private void S_GraduateDate_Leave(object sender, EventArgs e)
        {
            MyMC.Estimate_Date((MaskedTextBox)sender);
        }

        private void S_GraduateDate_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void S_Workdate_Leave(object sender, EventArgs e)
        {
            MyMC.Estimate_Date((MaskedTextBox)sender);
        }

        private void S_Workdate_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void S_M_Pay_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, ((TextBox)sender).Text, 1);
        }

        private void S_Pact_Y_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void S_Age_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void S_WorkLength_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, "", 0);
        }

        private void Part_Delete_Click(object sender, EventArgs e)
        {
            string Delete_Table = "";
            string Delete_ID = "";
            if (tabControl1.SelectedTab.Name == "tabPage2")
            {
                if (dataGridView2.RowCount < 2)
                {
                    MessageBox.Show("���ݱ�Ϊ�գ�������ɾ����");
                    return;
                }
                MyMC.Clear_Control(this.groupBox7.Controls);
                Delete_ID = dataGridView2[1, dataGridView2.CurrentCell.RowIndex].Value.ToString();
                Delete_Table = "tb_WordResume";
            }
            if (tabControl1.SelectedTab.Name == "tabPage3")
            {
                if (dataGridView3.RowCount < 2)
                {
                    MessageBox.Show("���ݱ�Ϊ�գ�������ɾ����");
                    return;
                }
                MyMC.Clear_Control(this.groupBox10.Controls);
                Delete_ID = dataGridView3[1, dataGridView3.CurrentCell.RowIndex].Value.ToString();
                Delete_Table = "tb_Family";
            }
            if (tabControl1.SelectedTab.Name == "tabPage4")
            {
                if (dataGridView4.RowCount < 2)
                {
                    MessageBox.Show("���ݱ�Ϊ�գ�������ɾ����");
                    return;
                }
                MyMC.Clear_Control(this.groupBox12.Controls);
                Delete_ID = dataGridView4[1, dataGridView4.CurrentCell.RowIndex].Value.ToString();
                Delete_Table = "tb_TrainNote";
            }
            if (tabControl1.SelectedTab.Name == "tabPage5")
            {
                if (dataGridView5.RowCount < 2)
                {
                    MessageBox.Show("���ݱ�Ϊ�գ�������ɾ����");
                    return;
                }
                MyMC.Clear_Control(this.groupBox14.Controls);
                Delete_ID = dataGridView5[1, dataGridView5.CurrentCell.RowIndex].Value.ToString();
                Delete_Table = "tb_RANDP";
            }
            if ((Delete_ID.Trim()).Length > 0)
            {
                MyDataClass.getsqlcom("Delete " + Delete_Table + " where ID='" + Delete_ID + "'");
                Part_Cancel_Click(sender, e);
            }
        }

        private void Sut_Delete_Click(object sender, EventArgs e)
        {
            if (dataGridView1.RowCount < 2) //�ж�dataGridView1�ؼ����Ƿ��м�¼
            {
                MessageBox.Show("���ݱ�Ϊ�գ�������ɾ����");
                return;
            }
            //ɾ��ְ����Ϣ���еĵ�ǰ��¼����������ر��е���Ϣ
            MyDataClass.getsqlcom("Delete tb_Stuffbasic where ID='" + S_0.Text.Trim() + "'");
            MyDataClass.getsqlcom("Delete tb_WordResume where Stu_ID='" + S_0.Text.Trim() + "'");
            MyDataClass.getsqlcom("Delete tb_Family where Stu_ID='" + S_0.Text.Trim() + "'");
            MyDataClass.getsqlcom("Delete tb_TrainNote where Stu_ID='" + S_0.Text.Trim() + "'");
            MyDataClass.getsqlcom("Delete tb_RANDP where Stu_ID='" + S_0.Text.Trim() + "'");
            MyDataClass.getsqlcom("Delete tb_WordResume where Stu_ID='" + S_0.Text.Trim() + "'");
            MyDataClass.getsqlcom("Delete tb_Individual where ID='" + S_0.Text.Trim() + "'");
            Sut_Cancel_Click(sender, e);    //���á�ȡ������ť�ĵ����¼�
        }

        private void but_Table_Click(object sender, EventArgs e)
        {
            #region ���Word 9.0����
            //object Nothing = System.Reflection.Missing.Value;
            //object missing = System.Reflection.Missing.Value;
            ////����Word�ĵ�
            //Word.Application wordApp = new Word.Application();
            //Word.Document wordDoc = wordApp.Documents.Add(ref Nothing, ref Nothing, ref Nothing, ref Nothing);
            //wordApp.Visible = true;
            ////�����ĵ����
            //wordApp.Selection.PageSetup.LeftMargin = wordApp.CentimetersToPoints(float.Parse("2"));
            //wordApp.ActiveWindow.ActivePane.HorizontalPercentScrolled = 11;
            //wordApp.Selection.PageSetup.RightMargin = wordApp.CentimetersToPoints(float.Parse("2"));
            //Object start = Type.Missing;
            //Object end = Type.Missing;
            //PictureBox pp = new PictureBox();							//�½�һ��PictureBox�ؼ�
            //int p1 = 0;
            //for (int i = 0; i < MyDS_Grid.Tables[0].Rows.Count; i++)
            //{
            //    try
            //    {
            //        byte[] pic = (byte[])(MyDS_Grid.Tables[0].Rows[i][23]);		//�����ݿ��е�ͼƬת���ɶ�������
            //        MemoryStream ms = new MemoryStream(pic);			//���ֽ�������뵽����������
            //        pp.Image = Image.FromStream(ms);					//��������Image�ؼ�����ʾ
            //        pp.Image.Save(@"C:\22.bmp");						//��ͼƬ���뵽ָ����·��
            //    }
            //    catch
            //    {
            //        p1 = 1;
            //    }
            //    object rng = Type.Missing;
            //    string strInfo = "ְ��������Ϣ��" + "(" + MyDS_Grid.Tables[0].Rows[i][1].ToString() + ")";
            //    start = 0;
            //    end = 0;
            //    wordDoc.Range(ref start, ref end).InsertBefore(strInfo);		//�����ı�
            //    wordDoc.Range(ref start, ref end).Font.Name = "Verdana";	//��������
            //    wordDoc.Range(ref start, ref end).Font.Size = 20;			//���������С
            //    wordDoc.Range(ref start, ref end).ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;			//�����������
            //    start = strInfo.Length;
            //    end = strInfo.Length;
            //    wordDoc.Range(ref start, ref end).InsertParagraphAfter();		//����س�
            //    object missingValue = Type.Missing;
            //    //���location���������ַ��ĳ��Ƚ������һ��Ҫ��"��ϸ��"����һ���ַ�
            //    object location = strInfo.Length;
            //    Word.Range rng2 = wordDoc.Range(ref location, ref location);
            //    wordDoc.Tables.Add(rng2, 14, 6, ref missingValue, ref missingValue);
            //    wordDoc.Tables.Item(1).Rows.HeightRule = Word.WdRowHeightRule.wdRowHeightAtLeast;
            //    wordDoc.Tables.Item(1).Rows.Height = wordApp.CentimetersToPoints(float.Parse("0.8"));
            //    wordDoc.Tables.Item(1).Range.Font.Size = 10;
            //    wordDoc.Tables.Item(1).Range.Font.Name = "����";
            //    //���ñ����ʽ
            //    wordDoc.Tables.Item(1).Borders.Item(Word.WdBorderType.wdBorderLeft).LineStyle = Word.WdLineStyle.wdLineStyleSingle;
            //    wordDoc.Tables.Item(1).Borders.Item(Word.WdBorderType.wdBorderLeft).LineWidth = Word.WdLineWidth.wdLineWidth050pt;
            //    wordDoc.Tables.Item(1).Borders.Item(Word.WdBorderType.wdBorderLeft).Color = Word.WdColor.wdColorAutomatic;
            //    wordApp.Selection.ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphRight;				//�����Ҷ���
            //    //��1����ʾ
            //    wordDoc.Tables.Item(1).Cell(1, 5).Merge(wordDoc.Tables.Item(1).Cell(5, 6));
            //    //��1����ʾ
            //    wordDoc.Tables.Item(1).Cell(6, 5).Merge(wordDoc.Tables.Item(1).Cell(6, 6));
            //    //��1����ʾ
            //    wordDoc.Tables.Item(1).Cell(9, 4).Merge(wordDoc.Tables.Item(1).Cell(9, 6));
            //    //��1����ʾ
            //    wordDoc.Tables.Item(1).Cell(12, 2).Merge(wordDoc.Tables.Item(1).Cell(12, 6));
            //    //��1����ʾ
            //    wordDoc.Tables.Item(1).Cell(13, 2).Merge(wordDoc.Tables.Item(1).Cell(13, 6));
            //    //��1����ʾ
            //    wordDoc.Tables.Item(1).Cell(14, 2).Merge(wordDoc.Tables.Item(1).Cell(14, 6));
            //    //��1�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(1, 1).Range.Text = "ְ����ţ�";
            //    wordDoc.Tables.Item(1).Cell(1, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][0].ToString();
            //    wordDoc.Tables.Item(1).Cell(1, 3).Range.Text = "ְ��������";
            //    wordDoc.Tables.Item(1).Cell(1, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][1].ToString();
            //    //����ͼƬ
            //    if (p1 == 0)
            //    {
            //        string FileName = @"C:\22.bmp";							//ͼƬ����·��
            //        object LinkToFile = false;
            //        object SaveWithDocument = true;
            //        object Anchor = wordDoc.Tables.Item(1).Cell(1, 5).Range;		//ָ��ͼƬ���������
            //        //��ͼƬ���뵽��Ԫ����
            //        wordDoc.Tables.Item(1).Cell(1, 5).Range.InlineShapes.AddPicture(FileName, ref LinkToFile, ref SaveWithDocument, ref Anchor);
            //    }
            //    p1 = 0;
            //    //��2�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(2, 1).Range.Text = "�������";
            //    wordDoc.Tables.Item(1).Cell(2, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][2].ToString();
            //    wordDoc.Tables.Item(1).Cell(2, 3).Range.Text = "�������ڣ�";
            //    try
            //    {
            //        wordDoc.Tables.Item(1).Cell(2, 4).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][3]).ToShortDateString());
            //    }
            //    catch { wordDoc.Tables.Item(1).Cell(2, 4).Range.Text = ""; }
            //    //��3�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(3, 1).Range.Text = "���䣺";
            //    wordDoc.Tables.Item(1).Cell(3, 2).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][4]);
            //    wordDoc.Tables.Item(1).Cell(3, 3).Range.Text = "�Ļ��̶ȣ�";
            //    wordDoc.Tables.Item(1).Cell(3, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][5].ToString();
            //    //��4�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(4, 1).Range.Text = "������";
            //    wordDoc.Tables.Item(1).Cell(4, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][6].ToString();
            //    wordDoc.Tables.Item(1).Cell(4, 3).Range.Text = "�Ա�";
            //    wordDoc.Tables.Item(1).Cell(4, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][7].ToString();
            //    //��5�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(5, 1).Range.Text = "������ò��";
            //    wordDoc.Tables.Item(1).Cell(5, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][8].ToString();
            //    wordDoc.Tables.Item(1).Cell(5, 3).Range.Text = "��λ����ʱ�䣺";
            //    try
            //    {
            //        wordDoc.Tables.Item(1).Cell(5, 4).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[0][10]).ToShortDateString());
            //    }
            //    catch { wordDoc.Tables.Item(1).Cell(5, 4).Range.Text = ""; }
            //    //��6�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(6, 1).Range.Text = "���᣺";
            //    wordDoc.Tables.Item(1).Cell(6, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][24].ToString();
            //    wordDoc.Tables.Item(1).Cell(6, 3).Range.Text = MyDS_Grid.Tables[0].Rows[i][25].ToString();
            //    wordDoc.Tables.Item(1).Cell(6, 4).Range.Text = "���֤��";
            //    wordDoc.Tables.Item(1).Cell(6, 5).Range.Text = MyDS_Grid.Tables[0].Rows[i][9].ToString();
            //    //��7�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(7, 1).Range.Text = "���䣺";
            //    wordDoc.Tables.Item(1).Cell(7, 2).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][11]);
            //    wordDoc.Tables.Item(1).Cell(7, 3).Range.Text = "ְ�����";
            //    wordDoc.Tables.Item(1).Cell(7, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][12].ToString();
            //    wordDoc.Tables.Item(1).Cell(7, 5).Range.Text = "ְ�����";
            //    wordDoc.Tables.Item(1).Cell(7, 6).Range.Text = MyDS_Grid.Tables[0].Rows[i][13].ToString();
            //    //��8�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(8, 1).Range.Text = "�������";
            //    wordDoc.Tables.Item(1).Cell(8, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][14].ToString();
            //    wordDoc.Tables.Item(1).Cell(8, 3).Range.Text = "�������";
            //    wordDoc.Tables.Item(1).Cell(8, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][15].ToString();
            //    wordDoc.Tables.Item(1).Cell(8, 5).Range.Text = "ְ�����";
            //    wordDoc.Tables.Item(1).Cell(8, 6).Range.Text = MyDS_Grid.Tables[0].Rows[i][16].ToString();
            //    //��9�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(9, 1).Range.Text = "�¹��ʣ�";
            //    wordDoc.Tables.Item(1).Cell(9, 2).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][26]);
            //    wordDoc.Tables.Item(1).Cell(9, 3).Range.Text = "�����˺ţ�";
            //    wordDoc.Tables.Item(1).Cell(9, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][27].ToString();
            //    //��10�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(10, 1).Range.Text = "��ͬ��ʼ���ڣ�";
            //    try
            //    {
            //        wordDoc.Tables.Item(1).Cell(10, 2).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][28]).ToShortDateString());
            //    }
            //    catch { wordDoc.Tables.Item(1).Cell(10, 2).Range.Text = ""; }
            //    wordDoc.Tables.Item(1).Cell(10, 3).Range.Text = "��ͬ�������ڣ�";
            //    try
            //    {
            //        wordDoc.Tables.Item(1).Cell(10, 4).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][29]).ToShortDateString());
            //    }
            //    catch { wordDoc.Tables.Item(1).Cell(10, 4).Range.Text = ""; }
            //    wordDoc.Tables.Item(1).Cell(10, 5).Range.Text = "��ͬ���ޣ�";
            //    wordDoc.Tables.Item(1).Cell(10, 6).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][30]);
            //    //��11�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(11, 1).Range.Text = "�绰��";
            //    wordDoc.Tables.Item(1).Cell(11, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][17].ToString();
            //    wordDoc.Tables.Item(1).Cell(11, 3).Range.Text = "�ֻ���";
            //    wordDoc.Tables.Item(1).Cell(11, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][18].ToString();
            //    wordDoc.Tables.Item(1).Cell(11, 5).Range.Text = "��ҵʱ�䣺";
            //    try
            //    {
            //        wordDoc.Tables.Item(1).Cell(11, 6).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][21]).ToShortDateString());
            //    }
            //    catch { wordDoc.Tables.Item(1).Cell(11, 6).Range.Text = ""; }
            //    //��12�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(12, 1).Range.Text = "��ҵѧУ��";
            //    wordDoc.Tables.Item(1).Cell(12, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][19].ToString();
            //    //��13�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(13, 1).Range.Text = "����רҵ��";
            //    wordDoc.Tables.Item(1).Cell(13, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][20].ToString();
            //    //��14�и�ֵ
            //    wordDoc.Tables.Item(1).Cell(14, 1).Range.Text = "��ͥ��ַ��";
            //    wordDoc.Tables.Item(1).Cell(14, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][22].ToString();
            //    wordDoc.Range(ref start, ref end).InsertParagraphAfter();			//����س�
            //    wordDoc.Range(ref start, ref end).ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphCenter;				//�����������
            //}
            #endregion

            #region ���Word 9.0���ϰ汾����
            object Nothing = System.Reflection.Missing.Value;
            object missing = System.Reflection.Missing.Value;
            //����Word�ĵ�
            Microsoft.Office.Interop.Word.Application wordApp = new Microsoft.Office.Interop.Word.Application();
            Microsoft.Office.Interop.Word.Document wordDoc = wordApp.Documents.Add(ref Nothing, ref Nothing, ref Nothing, ref Nothing);
            wordApp.Visible = true;

            //�����ĵ����
            wordApp.Selection.PageSetup.LeftMargin = wordApp.CentimetersToPoints(float.Parse("2"));
            wordApp.ActiveWindow.ActivePane.HorizontalPercentScrolled = 11;
            wordApp.Selection.PageSetup.RightMargin = wordApp.CentimetersToPoints(float.Parse("2"));

            Object start = Type.Missing;
            Object end = Type.Missing;

            PictureBox pp = new PictureBox();   //�½�һ��PictureBox�ؼ�
            int p1 = 0;
            for (int i = 0; i < MyDS_Grid.Tables[0].Rows.Count; i++)
            {
                try
                {
                    ShowData_Image((byte[])(MyDS_Grid.Tables[0].Rows[i][23]), pp);
                    pp.Image.Save(@"D:\22.bmp");    //��ͼƬ���뵽ָ����·��
                }
                catch
                {
                    p1 = 1;
                }
                object rng = Type.Missing;
                string strInfo = "ְ��������Ϣ��" + "(" + MyDS_Grid.Tables[0].Rows[i][1].ToString() + ")";
                start = 0;
                end = 0;
                wordDoc.Range(ref start, ref end).InsertBefore(strInfo);    //�����ı�
                wordDoc.Range(ref start, ref end).Font.Name = "Verdana";    //��������
                wordDoc.Range(ref start, ref end).Font.Size = 20;   //���������С
                wordDoc.Range(ref start, ref end).ParagraphFormat.Alignment = Microsoft.Office.Interop.Word.WdParagraphAlignment.wdAlignParagraphCenter; //�����������

                start = strInfo.Length;
                end = strInfo.Length;
                wordDoc.Range(ref start, ref end).InsertParagraphAfter();//����س�

                object missingValue = Type.Missing;
                object location = strInfo.Length; //���location���������ַ��ĳ��Ƚ������һ��Ҫ��"��ϸ��"����һ���ַ�
                Microsoft.Office.Interop.Word.Range rng2 = wordDoc.Range(ref location, ref location);

                Microsoft.Office.Interop.Word.Table tab = wordDoc.Tables.Add(rng2, 14, 6, ref missingValue, ref missingValue);
                tab.Rows.HeightRule = Microsoft.Office.Interop.Word.WdRowHeightRule.wdRowHeightAtLeast;
                tab.Rows.Height = wordApp.CentimetersToPoints(float.Parse("0.8"));
                tab.Range.Font.Size = 10;
                tab.Range.Font.Name = "����";

                //���ñ����ʽ
                tab.Borders.InsideLineStyle = Microsoft.Office.Interop.Word.WdLineStyle.wdLineStyleSingle;
                tab.Borders.InsideLineWidth = Microsoft.Office.Interop.Word.WdLineWidth.wdLineWidth050pt;
                tab.Borders.InsideColor = Microsoft.Office.Interop.Word.WdColor.wdColorAutomatic;
                wordApp.Selection.ParagraphFormat.Alignment = Microsoft.Office.Interop.Word.WdParagraphAlignment.wdAlignParagraphRight;//�����Ҷ���

                //��5����ʾ
                tab.Cell(1, 5).Merge(tab.Cell(5, 6));
                //��6����ʾ
                tab.Cell(6, 5).Merge(tab.Cell(6, 6));
                //��9����ʾ
                tab.Cell(9, 4).Merge(tab.Cell(9, 6));
                //��12����ʾ
                tab.Cell(12, 2).Merge(tab.Cell(12, 6));
                //��13����ʾ
                tab.Cell(13, 2).Merge(tab.Cell(13, 6));
                //��14����ʾ
                tab.Cell(14, 2).Merge(tab.Cell(14, 6));

                //��1�и�ֵ
                tab.Cell(1, 1).Range.Text = "ְ����ţ�";
                tab.Cell(1, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][0].ToString();
                tab.Cell(1, 3).Range.Text = "ְ��������";
                tab.Cell(1, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][1].ToString();

                //����ͼƬ

                if (p1 == 0)
                {
                    string FileName = @"D:\22.bmp";//ͼƬ����·��
                    object LinkToFile = false;
                    object SaveWithDocument = true;
                    object Anchor = tab.Cell(1, 5).Range;    //ָ��ͼƬ���������
                    //��ͼƬ���뵽��Ԫ����
                    tab.Cell(1, 5).Range.InlineShapes.AddPicture(FileName, ref LinkToFile, ref SaveWithDocument, ref Anchor);
                }
                p1 = 0;

                //��2�и�ֵ
                tab.Cell(2, 1).Range.Text = "�������";
                tab.Cell(2, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][2].ToString();
                tab.Cell(2, 3).Range.Text = "�������ڣ�";
                try
                {
                    tab.Cell(2, 4).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][3]).ToShortDateString());
                }
                catch { tab.Cell(2, 4).Range.Text = ""; }
                //��3�и�ֵ
                tab.Cell(3, 1).Range.Text = "���䣺";
                tab.Cell(3, 2).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][4]);
                tab.Cell(3, 3).Range.Text = "�Ļ��̶ȣ�";
                tab.Cell(3, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][5].ToString();
                //��4�и�ֵ
                tab.Cell(4, 1).Range.Text = "������";
                tab.Cell(4, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][6].ToString();
                tab.Cell(4, 3).Range.Text = "�Ա�";
                tab.Cell(4, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][7].ToString();
                //��5�и�ֵ
                tab.Cell(5, 1).Range.Text = "������ò��";
                tab.Cell(5, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][8].ToString();
                tab.Cell(5, 3).Range.Text = "��λ����ʱ�䣺";
                try
                {
                    tab.Cell(5, 4).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[0][10]).ToShortDateString());
                }
                catch { tab.Cell(5, 4).Range.Text = ""; }
                //��6�и�ֵ
                tab.Cell(6, 1).Range.Text = "���᣺";
                tab.Cell(6, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][24].ToString();
                tab.Cell(6, 3).Range.Text = MyDS_Grid.Tables[0].Rows[i][25].ToString();
                tab.Cell(6, 4).Range.Text = "���֤��";
                tab.Cell(6, 5).Range.Text = MyDS_Grid.Tables[0].Rows[i][9].ToString();
                //��7�и�ֵ
                tab.Cell(7, 1).Range.Text = "���䣺";
                tab.Cell(7, 2).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][11]);
                tab.Cell(7, 3).Range.Text = "ְ�����";
                tab.Cell(7, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][12].ToString();
                tab.Cell(7, 5).Range.Text = "ְ�����";
                tab.Cell(7, 6).Range.Text = MyDS_Grid.Tables[0].Rows[i][13].ToString();
                //��8�и�ֵ
                tab.Cell(8, 1).Range.Text = "�������";
                tab.Cell(8, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][14].ToString();
                tab.Cell(8, 3).Range.Text = "�������";
                tab.Cell(8, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][15].ToString();
                tab.Cell(8, 5).Range.Text = "ְ�����";
                tab.Cell(8, 6).Range.Text = MyDS_Grid.Tables[0].Rows[i][16].ToString();
                //��9�и�ֵ
                tab.Cell(9, 1).Range.Text = "�¹��ʣ�";
                tab.Cell(9, 2).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][26]);
                tab.Cell(9, 3).Range.Text = "�����˺ţ�";
                tab.Cell(9, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][27].ToString();
                //��10�и�ֵ
                tab.Cell(10, 1).Range.Text = "��ͬ��ʼ���ڣ�";
                try
                {
                    tab.Cell(10, 2).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][28]).ToShortDateString());
                }
                catch { tab.Cell(10, 2).Range.Text = ""; }
                tab.Cell(10, 3).Range.Text = "��ͬ�������ڣ�";
                try
                {
                    tab.Cell(10, 4).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][29]).ToShortDateString());
                }
                catch { tab.Cell(10, 4).Range.Text = ""; }
                tab.Cell(10, 5).Range.Text = "��ͬ���ޣ�";
                tab.Cell(10, 6).Range.Text = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][30]);
                //��11�и�ֵ
                tab.Cell(11, 1).Range.Text = "�绰��";
                tab.Cell(11, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][17].ToString();
                tab.Cell(11, 3).Range.Text = "�ֻ���";
                tab.Cell(11, 4).Range.Text = MyDS_Grid.Tables[0].Rows[i][18].ToString();
                tab.Cell(11, 5).Range.Text = "��ҵʱ�䣺";
                try
                {
                    tab.Cell(11, 6).Range.Text = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][21]).ToShortDateString());
                }
                catch { tab.Cell(11, 6).Range.Text = ""; }
                //Convert.ToString(MyDS_Grid.Tables[0].Rows[i][21]);
                //��12�и�ֵ
                tab.Cell(12, 1).Range.Text = "��ҵѧУ��";
                tab.Cell(12, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][19].ToString();
                //��13�и�ֵ
                tab.Cell(13, 1).Range.Text = "����רҵ��";
                tab.Cell(13, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][20].ToString();
                //��14�и�ֵ
                tab.Cell(14, 1).Range.Text = "��ͥ��ַ��";
                tab.Cell(14, 2).Range.Text = MyDS_Grid.Tables[0].Rows[i][22].ToString();

                wordDoc.Range(ref start, ref end).InsertParagraphAfter();//����س�
                wordDoc.Range(ref start, ref end).ParagraphFormat.Alignment = Microsoft.Office.Interop.Word.WdParagraphAlignment.wdAlignParagraphCenter; //�����������
            }
            #endregion
        }

        private void dataGridView3_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            MyMC.Show_DGrid(dataGridView3, groupBox10.Controls, "Famity_");
        }

        private void dataGridView4_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            MyMC.Show_DGrid(dataGridView4, groupBox12.Controls, "TrainNote_");
        }

        private void dataGridView5_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            MyMC.Show_DGrid(dataGridView5, groupBox14.Controls, "RANDP_");
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            //��dataGridView1�ؼ���ʾְ��������
            MyDS_Grid = MyDataClass.getDataSet(DataClass.MyMeans.AllSql, "tb_Stuffbasic");
            dataGridView1.DataSource = MyDS_Grid.Tables[0];
            dataGridView1.AutoGenerateColumns = true;  //�Ƿ��Զ�������
            dataGridView1.Columns[0].Width = 60;
            dataGridView1.Columns[1].Width = 80;

            for (int i = 2; i < dataGridView1.ColumnCount; i++)  //����dataGridView1�ؼ��в���Ҫ�����ֶ�
            {
                dataGridView1.Columns[i].Visible = false;
            }
        }

        private void TrainNote_8_KeyPress(object sender, KeyPressEventArgs e)
        {
            MyMC.Estimate_Key(e, ((TextBox)sender).Text, 1);
        }

        private void Sub_Excel_Click(object sender, EventArgs e)
        {
            object rng = Type.Missing;
            //����Excel����
            Microsoft.Office.Interop.Excel.Application excel = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook workbook = excel.Application.Workbooks.Add(Microsoft.Office.Interop.Excel.XlWBATemplate.xlWBATWorksheet);
            Microsoft.Office.Interop.Excel.Worksheet worksheet = (Microsoft.Office.Interop.Excel.Worksheet)(workbook.Worksheets[1]);
            Microsoft.Office.Interop.Excel.Range range = null;

            //��ȡ����һ��֮������е�Ԫ��Χ
            range = worksheet.Range[excel.Cells[2, 1], excel.Cells[15, 6]];

            range.ColumnWidth = 15;//���õ�Ԫ����
            range.RowHeight = 25;//���õ�Ԫ��߶�
            range.Borders.LineStyle = 1;//���ñ߿��ߵĿ��
            //���ñ߿��ߵ���ʽ
            range.BorderAround2(1, Microsoft.Office.Interop.Excel.XlBorderWeight.xlThin, Microsoft.Office.Interop.Excel.XlColorIndex.xlColorIndexAutomatic, Color.Black, Type.Missing);
            range.Font.Size = 12;//���������С
            range.Font.Name = "����";//��������
            //���ö����ʽΪ�����
            range.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlVAlign.xlVAlignJustify;

            PictureBox pp = new PictureBox();//�½�һ��PictureBox�ؼ�
            int p1 = 0;//����һ����ʶ��������ʶ�Ƿ������Ƭ
            for (int i = 0; i < MyDS_Grid.Tables[0].Rows.Count; i++)
            {
                try
                {
                    //��ȡ��Ƭ
                    ShowData_Image((byte[])(MyDS_Grid.Tables[0].Rows[i][23]), pp);
                    pp.Image.Save(@"D:\22.bmp");//��ͼƬ���뵽ָ����·��
                }
                catch
                {
                    p1 = 1;
                }
                //���ñ�������
                string strInfo = "ְ��������Ϣ��" + "(" + MyDS_Grid.Tables[0].Rows[i][1].ToString() + ")";
                //���õ�1��Ҫ�ϲ��ı��
                range = worksheet.Range[excel.Cells[1, 1], excel.Cells[1, 6]];
                range.Merge();//�ϲ���Ԫ��
                range.Font.Size = 30;//���õ�һ�е������С
                range.Font.Name = "����";//���õ�һ�е�����
                range.Font.FontStyle = "Bold";//���õ�һ������Ϊ����
                //���ñ��������ʾ
                range.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlVAlign.xlVAlignCenter;
                excel.Cells[1, 1] = strInfo;//���ñ���

                //��2�е���6�еĺϲ���Χ��������ʾ��Ƭ
                range = worksheet.Range[excel.Cells[2, 5], excel.Cells[6, 6]];
                range.Merge(true);
                //��7����ʾ
                range = worksheet.Range[excel.Cells[7, 5], excel.Cells[7, 6]];
                range.Merge(true);
                //��10����ʾ
                range = worksheet.Range[excel.Cells[10, 4], excel.Cells[10, 6]];
                range.Merge(true);
                //��13����ʾ
                range = worksheet.Range[excel.Cells[13, 2], excel.Cells[13, 6]];
                range.Merge(true);
                //��14����ʾ
                range = worksheet.Range[excel.Cells[14, 2], excel.Cells[14, 6]];
                range.Merge(true);
                //��15����ʾ
                range = worksheet.Range[excel.Cells[15, 2], excel.Cells[15, 6]];
                range.Merge(true);

                //��1�и�ֵ
                excel.Cells[2, 1] = "ְ����ţ�";
                excel.Cells[2, 2] = MyDS_Grid.Tables[0].Rows[i][0].ToString();
                excel.Cells[2, 3] = "ְ��������";
                excel.Cells[2, 4] = MyDS_Grid.Tables[0].Rows[i][1].ToString();

                //������Ƭ
                if (p1 == 0)
                {
                    string FileName = @"D:\22.bmp";//��Ƭ����·��
                    range = worksheet.Range[excel.Cells[2, 5], excel.Cells[6, 5]];
                    range.Merge();
                    worksheet.Shapes.AddPicture(FileName, Microsoft.Office.Core.MsoTriState.msoFalse, Microsoft.Office.Core.MsoTriState.msoTrue, 418, 43, 100, 115);
                }
                p1 = 0;

                //��2�и�ֵ
                excel.Cells[3, 1] = "�������";
                excel.Cells[3, 2] = MyDS_Grid.Tables[0].Rows[i][2].ToString();
                excel.Cells[3, 3] = "�������ڣ�";
                try
                {
                    excel.Cells[3, 4] = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][3]).ToShortDateString());
                }
                catch { excel.Cells[3, 4] = ""; }
                //��3�и�ֵ
                excel.Cells[4, 1] = "���䣺";
                excel.Cells[4, 2] = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][4]);
                excel.Cells[4, 3] = "�Ļ��̶ȣ�";
                excel.Cells[4, 4] = MyDS_Grid.Tables[0].Rows[i][5].ToString();
                //��4�и�ֵ
                excel.Cells[5, 1] = "������";
                excel.Cells[5, 2] = MyDS_Grid.Tables[0].Rows[i][6].ToString();
                excel.Cells[5, 3] = "�Ա�";
                excel.Cells[5, 4] = MyDS_Grid.Tables[0].Rows[i][7].ToString();
                //��5�и�ֵ
                excel.Cells[6, 1] = "������ò��";
                excel.Cells[6, 2] = MyDS_Grid.Tables[0].Rows[i][8].ToString();
                excel.Cells[6, 3] = "��λ����ʱ�䣺";
                try
                {
                    excel.Cells[6, 4] = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[0][10]).ToShortDateString());
                }
                catch { excel.Cells[6, 4] = ""; }
                //��6�и�ֵ
                excel.Cells[7, 1] = "���᣺";
                excel.Cells[7, 2] = MyDS_Grid.Tables[0].Rows[i][24].ToString();
                excel.Cells[7, 3] = MyDS_Grid.Tables[0].Rows[i][25].ToString();
                excel.Cells[7, 4] = "���֤��";
                excel.Cells[7, 5] = MyDS_Grid.Tables[0].Rows[i][9].ToString();
                //��7�и�ֵ
                excel.Cells[8, 1] = "���䣺";
                excel.Cells[8, 2] = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][11]);
                excel.Cells[8, 3] = "ְ�����";
                excel.Cells[8, 4] = MyDS_Grid.Tables[0].Rows[i][12].ToString();
                excel.Cells[8, 5] = "ְ�����";
                excel.Cells[8, 6] = MyDS_Grid.Tables[0].Rows[i][13].ToString();
                //��8�и�ֵ
                excel.Cells[9, 1] = "�������";
                excel.Cells[9, 2] = MyDS_Grid.Tables[0].Rows[i][14].ToString();
                excel.Cells[9, 3] = "�������";
                excel.Cells[9, 4] = MyDS_Grid.Tables[0].Rows[i][15].ToString();
                excel.Cells[9, 5] = "ְ�����";
                excel.Cells[9, 6] = MyDS_Grid.Tables[0].Rows[i][16].ToString();
                //��9�и�ֵ
                excel.Cells[10, 1] = "�¹��ʣ�";
                excel.Cells[10, 2] = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][26]);
                excel.Cells[10, 3] = "�����˺ţ�";
                excel.Cells[10, 4] = MyDS_Grid.Tables[0].Rows[i][27].ToString();
                //��10�и�ֵ
                excel.Cells[11, 1] = "��ͬ��ʼ���ڣ�";
                try
                {
                    excel.Cells[11, 2] = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][28]).ToShortDateString());
                }
                catch { excel.Cells[11, 2] = ""; }
                excel.Cells[11, 3] = "��ͬ�������ڣ�";
                try
                {
                    excel.Cells[11, 4] = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][29]).ToShortDateString());
                }
                catch { excel.Cells[11, 4] = ""; }
                excel.Cells[11, 5] = "��ͬ���ޣ�";
                excel.Cells[11, 6] = Convert.ToString(MyDS_Grid.Tables[0].Rows[i][30]);
                //��11�и�ֵ
                excel.Cells[12, 1] = "�绰��";
                excel.Cells[12, 2] = MyDS_Grid.Tables[0].Rows[i][17].ToString();
                excel.Cells[12, 3] = "�ֻ���";
                excel.Cells[12, 4] = MyDS_Grid.Tables[0].Rows[i][18].ToString();
                excel.Cells[12, 5] = "��ҵʱ�䣺";
                try
                {
                    excel.Cells[12, 6] = Convert.ToString(Convert.ToDateTime(MyDS_Grid.Tables[0].Rows[i][21]).ToShortDateString());
                }
                catch { excel.Cells[12, 6] = ""; }
                //Convert.ToString(MyDS_Grid.Tables[0].Rows[i][21]);
                //��12�и�ֵ
                excel.Cells[13, 1] = "��ҵѧУ��";
                excel.Cells[13, 2] = MyDS_Grid.Tables[0].Rows[i][19].ToString();
                //��13�и�ֵ
                excel.Cells[14, 1] = "����רҵ��";
                excel.Cells[14, 2] = MyDS_Grid.Tables[0].Rows[i][20].ToString();
                //��14�и�ֵ
                excel.Cells[15, 1] = "��ͥ��ַ��";
                excel.Cells[15, 2] = MyDS_Grid.Tables[0].Rows[i][22].ToString();
                if (!System.IO.File.Exists("D:\\" + strInfo + ".xlsx"))
                    worksheet.SaveAs("D:\\" + strInfo + ".xlsx", Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
                else
                    worksheet.Copy(Type.Missing, Type.Missing);
                workbook.Save();//���湤����
                workbook.Close(false, Type.Missing, Type.Missing);//�رչ�����
                MessageBox.Show("������Ϣ������Excel�ɹ���λ��: D:\\" + strInfo + ".xlsx", "��ʾ");
            }
        }
    }
}