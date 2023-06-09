using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для ServisePage.xaml
    /// </summary>
    public partial class ServisePage : Page
    {
        public ServisePage()
        {
            InitializeComponent();
        }

        private void AboutBtn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("PageFolder/ServerInstallPage.xaml", UriKind.Relative));
        }

        private void About2Btn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("PageFolder/ComputerWashPage.xaml", UriKind.Relative));
        }

        private void About1Btn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("PageFolder/ComputerInstallPage.xaml", UriKind.Relative));
        }
    }
}
