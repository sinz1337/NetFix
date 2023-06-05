using NetFix.ClassFolder;
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
using NetFix.WindowFolder.AdminFolder;

namespace NetFix.PageFolder
{
    /// <summary>
    /// Логика взаимодействия для UserListPage.xaml
    /// </summary>
    public partial class UserListPage : Page
    {
        DGClass dGClass;
        SqlConnection sqlConnection = new SqlConnection
                                          (ConnectClass.ConnectString);
        public UserListPage()
        {
            InitializeComponent();
            dGClass = new DGClass(ListUserDG);
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            dGClass.LoadDG("SELECT * FROM dbo.Customer " +
                $"WHERE FIOCustomer Like '%{SearchTB.Text}%' " +
                $"or NumberCustomer Like '%{SearchTB.Text}%'");
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            dGClass.LoadDG("SELECT * FROM dbo.Customer");
        }

        private void EditMI_Click(object sender, RoutedEventArgs e)
        {
            if (ListUserDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выбирите пользователя для редактирования");
            }
            else
            {
                try
                {
                    GlobalVariableClass.IdCustomer =
                        Int32.Parse(dGClass.SelectId());
                    this.NavigationService.Navigate(new Uri("PageFolder/EditUserPage.xaml", UriKind.Relative));
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }
    }
}
