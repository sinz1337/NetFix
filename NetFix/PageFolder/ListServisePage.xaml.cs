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
    /// Логика взаимодействия для ListServisePage.xaml
    /// </summary>
    public partial class ListServisePage : Page
    {
        SqlConnection sqlConnection = new SqlConnection
                                          (ConnectClass.ConnectString);
        DGClass dGClass;
        public ListServisePage()
        {
            InitializeComponent();
            dGClass = new DGClass(ListServiseDG);
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            dGClass.LoadDG("SELECT * FROM dbo.Servise " +
                $"WHERE NameService Like '%{SearchTB.Text}%'");
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            dGClass.LoadDG("SELECT * FROM dbo.Servise");
        }
    }
}
