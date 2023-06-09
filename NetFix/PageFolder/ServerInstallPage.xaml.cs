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
using NetFix.ClassFolder;

namespace NetFix.PageFolder
{
    /// <summary>
    /// Логика взаимодействия для ServerInstallPage.xaml
    /// </summary>
    public partial class ServerInstallPage : Page
    {
        public ServerInstallPage()
        {
            InitializeComponent();
        }

        private void Image_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.NavigationService.Navigate(new Uri("PageFolder/ServisePage.xaml", UriKind.Relative));
        }

        private void BuyBtn_Click(object sender, RoutedEventArgs e)
        {
            MBClass.InfoMB("Вы успешно оформили заказ!");
            this.NavigationService.Navigate(new Uri("PageFolder/ServisePage.xaml", UriKind.Relative));
        }
    }
}
