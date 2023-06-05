using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using NetFix.ClassFolder;

namespace NetFix.PageFolder
{
    /// <summary>
    /// Логика взаимодействия для AddUserPage.xaml
    /// </summary>
    public partial class AddUserPage : Page
    {
        SqlConnection sqlConnection = new SqlConnection
                                          (ConnectClass.ConnectString);
        SqlCommand sqlCommand;
        SqlDataReader sqlDataReader;
        DGClass dGClass;
        LoadCBClass CBClass;
        public AddUserPage()
        {
            InitializeComponent();
            CBClass = new LoadCBClass();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(FIOTB.Text))
            {
                MBClass.ErrorMB("Введите ФИО");
                FIOTB.Focus();
            }
            else if (string.IsNullOrWhiteSpace(PhoneTB.Text))
            {
                MBClass.ErrorMB("Введите номер телефона");
                PhoneTB.Focus();
            }
            else if (string.IsNullOrWhiteSpace(OrderTB.Text))
            {
                MBClass.ErrorMB("Введите заказ");
                OrderTB.Focus();
            }
            else
            {
                try
                {
                    sqlConnection.Open();
                    sqlCommand = new SqlCommand("Insert Into dbo.Customer " +
                        "(FIOCustomer,OrderCustomer,NumberCustomer)" + 
                        $"Values ('{FIOTB.Text}','{OrderTB.Text}'," +
                        $"'{PhoneTB.Text}')", sqlConnection);
                    sqlCommand.ExecuteNonQuery();

                    MBClass.InfoMB($"Пользователь '{FIOTB.Text}'" +
                        $"успешно добавлен");
                    this.NavigationService.Navigate(new Uri("PageFolder/UserListPage.xaml", UriKind.Relative));
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

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            //CBClass.LoadCB(OrderCB);
        }
    }
}
