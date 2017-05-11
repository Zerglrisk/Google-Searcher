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

namespace Google_Searcher
{
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Label_Caption_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            window.DragMove();
        }

        private void button10_Click(object sender, RoutedEventArgs e)
        {
            //X Button
            Environment.Exit(0);
        }

        private void button11_Click(object sender, RoutedEventArgs e)
        {
            //_ Button
            window.WindowState = WindowState.Minimized;
        }

        private void Browser_Left_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void Browser_Right_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Browser_Add_Click(object sender, RoutedEventArgs e)
        {
           
        }

        private void Browser_Delete_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Search_Type_Left_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void Search_Type_Right_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Search_Type_Add_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void Search_Type_Delete_Click(object sender, RoutedEventArgs e)
        {
            
        }
        private void Search_Type_Edit_Site_Click(object sender, RoutedEventArgs e)
        {

        }

        
    }
}
