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

namespace NetFix.PageFolder
{
    /// <summary>
    /// Логика взаимодействия для StaffListPage.xaml
    /// </summary>
    public partial class StaffListPage : Page
    {
        DGClass dGClass;
        SqlConnection sqlConnection = new SqlConnection
                                          (ConnectClass.ConnectString);
        public StaffListPage()
        {
            InitializeComponent();
            dGClass = new DGClass(ListStaffDG);
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            dGClass.LoadDG("SELECT * FROM dbo.Staff " +
                $"WHERE FIOStaff Like '%{SearchTB.Text}%' " +
                $"or NumberStaff Like '%{SearchTB.Text}%'");
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            dGClass.LoadDG("SELECT * FROM dbo.Staff");
        }

        private void EditMI_Click(object sender, RoutedEventArgs e)
        {
            if (ListStaffDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выбирите сотрудника для редактирования");
            }
            else
            {
                try
                {
                    GlobalVariableClass.IdStaff =
                        Int32.Parse(dGClass.SelectId());
                    this.NavigationService.Navigate(new Uri("PageFolder/EditStaffPage.xaml", UriKind.Relative));
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }
    }
}
