using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

namespace PWMS.ModuleClass
{
    class MyModule
    {
        #region  ��������
        DataClass.MyMeans MyDataClass = new PWMS.DataClass.MyMeans();   //����MyMeans���һ�������Ե����䷽��
        public static string ADDs = "";  //�����洢��ӻ��޸ĵ�SQL���
        public static string FindValue = "";  //�洢��ѯ����
        public static string Address_ID = "";  //�洢ͨѶ¼����޸�ʱ��ID���
        public static string User_ID = "";  //�洢�û���ID���
        public static string User_Name = "";    //�洢�û���
        #endregion

        #region  ����ĵ���
        /// <summary>
        /// ����ĵ���.
        /// </summary>
        /// <param name="FrmName">���ô����Text����ֵ</param>
        /// <param name="n">��ʶ</param>
        public void Show_Form(string FrmName, int n)
        {
            if (n == 1)
            {
                if (FrmName == "���µ�������")  //�жϵ�ǰҪ�򿪵Ĵ���
                {
                    PerForm.F_ManFile FrmManFile = new PWMS.PerForm.F_ManFile();
                    FrmManFile.Text = "���µ�������";   //���ô�������
                    FrmManFile.ShowDialog();    //��ʾ����
                    FrmManFile.Dispose();
                }
                if (FrmName == "�������ϲ�ѯ")
                {
                    PerForm.F_Find FrmFind = new PWMS.PerForm.F_Find();
                    FrmFind.Text = "�������ϲ�ѯ";
                    FrmFind.ShowDialog();
                    FrmFind.Dispose();
                }
                if (FrmName == "��������ͳ��")
                {
                    PerForm.F_Stat FrmStat = new PWMS.PerForm.F_Stat();
                    FrmStat.Text = "��������ͳ��";
                    FrmStat.ShowDialog();
                    FrmStat.Dispose();
                }
                if (FrmName == "Ա��������ʾ")
                {
                    InfoAddForm.F_ClewSet FrmClewSet = new PWMS.InfoAddForm.F_ClewSet();
                    FrmClewSet.Text = "Ա��������ʾ";   //���ô�������
                    FrmClewSet.Tag = 1; //���ô����Tag���ԣ������ڴ򿪴���ʱ�жϴ������ʾ����
                    FrmClewSet.ShowDialog();    //��ʾ����
                    FrmClewSet.Dispose();
                }
                if (FrmName == "Ա����ͬ��ʾ")
                {
                    InfoAddForm.F_ClewSet FrmClewSet = new PWMS.InfoAddForm.F_ClewSet();
                    FrmClewSet.Text = "Ա����ͬ��ʾ";
                    FrmClewSet.Tag = 2;
                    FrmClewSet.ShowDialog();
                    FrmClewSet.Dispose();
                }
                if (FrmName == "�ճ�����")
                {
                    PerForm.F_WordPad FrmWordPad = new PWMS.PerForm.F_WordPad();
                    FrmWordPad.Text = "�ճ�����";
                    FrmWordPad.ShowDialog();
                    FrmWordPad.Dispose();
                }
                if (FrmName == "ͨѶ¼")
                {
                    PerForm.F_AddressList FrmAddressList = new PWMS.PerForm.F_AddressList();
                    FrmAddressList.Text = "ͨѶ¼";
                    FrmAddressList.ShowDialog();
                    FrmAddressList.Dispose();
                }
                if (FrmName == "����/��ԭ���ݿ�")
                {
                    PerForm.F_HaveBack FrmHaveBack = new PWMS.PerForm.F_HaveBack();
                    FrmHaveBack.Text = "����/��ԭ���ݿ�";
                    FrmHaveBack.ShowDialog();
                    FrmHaveBack.Dispose();
                }
                if (FrmName == "������ݿ�")
                {
                    PerForm.F_ClearData FrmClearData = new PWMS.PerForm.F_ClearData();
                    FrmClearData.Text = "������ݿ�";
                    FrmClearData.ShowDialog();
                    FrmClearData.Dispose();
                }

                if (FrmName == "���µ�¼")
                {
                    F_Login FrmLogin = new F_Login();
                    FrmLogin.Tag = 2;
                    FrmLogin.ShowDialog();
                    FrmLogin.Dispose();
                }
                if (FrmName == "�û�����")
                {
                    PerForm.F_User FrmUser = new PWMS.PerForm.F_User();
                    FrmUser.Text = "�û�����";
                    FrmUser.ShowDialog();
                    FrmUser.Dispose();
                }
                if (FrmName == "������")
                {
                    System.Diagnostics.Process.Start("calc.exe");
                }
                if (FrmName == "���±�")
                {
                    System.Diagnostics.Process.Start("notepad.exe");
                }
                if (FrmName == "ϵͳ����")
                {
                    System.Diagnostics.Process.Start("readme.doc");
                }
            }
            if (n == 2)
            {
                String FrmStr = ""; //��¼��������
                if (FrmName == "�����������")  //�ж�Ҫ�򿪵Ĵ���
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_Folk";   //SQL���
                    DataClass.MyMeans.Mean_Table = "tb_Folk";   //����
                    DataClass.MyMeans.Mean_Field = "FolkName";  //��ӡ��޸����ݵ��ֶ���
                    FrmStr = FrmName;
                }
                if (FrmName == "ְ���������")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_EmployeeGenre";
                    DataClass.MyMeans.Mean_Table = "tb_EmployeeGenre";
                    DataClass.MyMeans.Mean_Field = "EmployeeName";
                    FrmStr = FrmName;
                }
                if (FrmName == "�Ļ��̶�����")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_Kultur";
                    DataClass.MyMeans.Mean_Table = "tb_Kultur";
                    DataClass.MyMeans.Mean_Field = "KulturName";
                    FrmStr = FrmName;
                }
                if (FrmName == "������ò����")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_Visage";
                    DataClass.MyMeans.Mean_Table = "tb_Visage";
                    DataClass.MyMeans.Mean_Field = "VisageName";
                    FrmStr = FrmName;
                }
                if (FrmName == "�����������")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_Branch";
                    DataClass.MyMeans.Mean_Table = "tb_Branch";
                    DataClass.MyMeans.Mean_Field = "BranchName";
                    FrmStr = FrmName;
                }
                if (FrmName == "�����������")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_Laborage";
                    DataClass.MyMeans.Mean_Table = "tb_Laborage";
                    DataClass.MyMeans.Mean_Field = "LaborageName";
                    FrmStr = FrmName;
                }
                if (FrmName == "ְ���������")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_Business";
                    DataClass.MyMeans.Mean_Table = "tb_Business";
                    DataClass.MyMeans.Mean_Field = "BusinessName";
                    FrmStr = FrmName;
                }
                if (FrmName == "ְ���������")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_Duthcall";
                    DataClass.MyMeans.Mean_Table = "tb_Duthcall";
                    DataClass.MyMeans.Mean_Field = "DuthcallName";
                    FrmStr = FrmName;
                }
                if (FrmName == "�����������")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_RPKind";
                    DataClass.MyMeans.Mean_Table = "tb_RPKind";
                    DataClass.MyMeans.Mean_Field = "RPKind";
                    FrmStr = FrmName;
                }
                if (FrmName == "���±��������")
                {
                    DataClass.MyMeans.Mean_SQL = "select * from tb_WordPad";
                    DataClass.MyMeans.Mean_Table = "tb_WordPad";
                    DataClass.MyMeans.Mean_Field = "WordPad";
                    FrmStr = FrmName;
                }
                InfoAddForm.F_Basic FrmBasic = new PWMS.InfoAddForm.F_Basic();
                FrmBasic.Text = FrmStr; //���ô�������
                FrmBasic.ShowDialog();  //��ʾ���õĴ���
                FrmBasic.Dispose();
            }
        }
        #endregion

        #region  ��StatusStrip�ؼ��е���Ϣ��ӵ�treeView�ؼ���
        /// <summary>
        /// ��ȡ�˵��е���Ϣ.
        /// </summary>
        /// <param name="treeV">TreeView�ؼ�</param>
        /// <param name="MenuS">MenuStrip�ؼ�</param>
        public void GetMenu(TreeView treeV, MenuStrip MenuS)
        {
            for (int i = 0; i < MenuS.Items.Count; i++) //����MenuStrip����е�һ���˵���
            {
                //��һ���˵����������ӵ�TreeView����ĸ��ڵ��У������õ�ǰ�ڵ���ӽڵ�newNode1
                TreeNode newNode1 = treeV.Nodes.Add(MenuS.Items[i].Text);
                //����ǰ�˵�������������Ϣ���뵽ToolStripDropDownItem������
                ToolStripDropDownItem newmenu = (ToolStripDropDownItem)MenuS.Items[i];
                //�жϵ�ǰ�˵������Ƿ��ж����˵���
                if (newmenu.HasDropDownItems && newmenu.DropDownItems.Count > 0)
                    for (int j = 0; j < newmenu.DropDownItems.Count; j++)    //���������˵���
                    {
                        //�������˵�������ӵ�TreeView������ӽڵ�newNode1�У������õ�ǰ�ڵ���ӽڵ�newNode2
                        TreeNode newNode2 = newNode1.Nodes.Add(newmenu.DropDownItems[j].Text);
                        //����ǰ�˵�������������Ϣ���뵽ToolStripDropDownItem������
                        ToolStripDropDownItem newmenu2 = (ToolStripDropDownItem)newmenu.DropDownItems[j];
                        //�ж϶����˵������Ƿ��������˵���
                        if (newmenu2.HasDropDownItems && newmenu2.DropDownItems.Count > 0)
                            for (int p = 0; p < newmenu2.DropDownItems.Count; p++)    //���������˵���
                                //�������˵�������ӵ�TreeView������ӽڵ�newNode2��
                                newNode2.Nodes.Add(newmenu2.DropDownItems[p].Text);
                    }
            }
        }
        #endregion

        #region  �Զ����
        /// <summary>
        /// �������Ϣʱ�Զ�������.
        /// </summary>
        /// <param name="TableName">����</param>
        /// <param name="ID">�ֶ���</param>
        /// <returns>����String����</returns>
        public String GetAutocoding(string TableName, string ID)
        {
            //����ָ������ID��Ϊ���ļ�¼
            SqlDataReader MyDR = MyDataClass.getcom("select max(" + ID + ") NID from " + TableName);
            int Num = 0;
            if (MyDR.HasRows)   //�����ҵ���¼ʱ
            {
                MyDR.Read();    //��ȡ��ǰ��¼
                if (MyDR[0].ToString() == "")
                    return "0001";
                Num = Convert.ToInt32(MyDR[0].ToString());  //����ǰ�ҵ��������ת��������
                ++Num;  //����ż�1
                string s = string.Format("{0:0000}", Num);  //������ֵת����ָ����ʽ���ַ���
                return s;   //�����Զ����ɵı��
            }
            else
            {
                return "0001";  //�����ݱ�û�м�¼ʱ������0001
            }
        }
        #endregion

        #region  ��comboBox�ؼ��������ݱ��е�����
        /// <summary>
        /// ��̬��comboBox�ؼ��������б��������.
        /// </summary>
        /// <param name="cobox">comboBox�ؼ�</param>
        /// <param name="TableName">���ݱ�����</param>
        public void CoPassData(ComboBox cobox, string TableName)
        {
            cobox.Items.Clear();
            DataClass.MyMeans MyDataClsaa = new PWMS.DataClass.MyMeans();
            SqlDataReader MyDR = MyDataClsaa.getcom("select * from " + TableName);
            if (MyDR.HasRows)
            {
                while (MyDR.Read())
                {
                    if (MyDR[1].ToString() != "" && MyDR[1].ToString()!=null)
                        cobox.Items.Add(MyDR[1].ToString());
                }
            }
        }
        #endregion

        #region  ��comboBox�ؼ����ݸ�ʡ�е�����
        /// <summary>
        /// ��̬��comboBox�ؼ��������б����ʡ��.
        /// </summary>
        /// <param name="cobox">comboBox�ؼ�</param>
        /// <param name="SQLstr">SQL���</param>
        /// <param name="n">�ֶ�λ��</param>
        public void CityInfo(ComboBox cobox, string SQLstr, int n)
        {
            cobox.Items.Clear();
            DataClass.MyMeans MyDataClsaa = new PWMS.DataClass.MyMeans();
            SqlDataReader MyDR = MyDataClsaa.getcom(SQLstr);
            if (MyDR.HasRows)
            {
                while (MyDR.Read())
                {
                    if (MyDR[n].ToString() != "" && MyDR[n].ToString() != null)
                        cobox.Items.Add(MyDR[n].ToString());
                }
            }
        }
        #endregion
    }
}