using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace NetFix.ClassFolder
{
    class LoadCBClass
    {
        SqlConnection sqlConnection = new SqlConnection(ConnectClass.ConnectString);
        SqlDataAdapter sqlDataAdapter;
        DataSet dataSet;

        public void LoadCB(ComboBox combobox)
        {
            try
            {
                sqlConnection.Open();
                sqlDataAdapter = new SqlDataAdapter("Select " +
                    "IdService,NameService From dbo.Service " +
                    "Order by NameService ASC", sqlConnection);
                dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet, "Service");
                combobox.ItemsSource = dataSet.Tables["Service"]
                    .DefaultView;
                combobox.DisplayMemberPath = dataSet.Tables["Service"]
                    .Columns["NameService"].ToString();
                combobox.SelectedValuePath = dataSet.Tables["Service"]
                    .Columns["IdService"].ToString();
            }
            catch (Exception ex)
            {
                MBClass.ErrorMB(ex);

            }
            finally
            {
                sqlConnection.Close();
            }
        }

    }
}
