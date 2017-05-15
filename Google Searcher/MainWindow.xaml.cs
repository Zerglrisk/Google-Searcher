using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Deployment;
using System.Reflection;

namespace Google_Searcher
{
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {
        //General
        public static int BrowserTotal;
        int BrowserIndex;
        Dictionary<int, BrowseData> Browser;
        public static int SearchTypeTotal;
        int SearchTypeIndex;
        Dictionary<int, SearchData> SearchType;

        public class BrowseData
        {
            public string browserName { get; set; }
            public string exePath { get; set; }
        }

        public class SearchData
        {
            public string SearchContent { get; set; }
            public string SearchAdditional { get; set; }
            public List<BrowseData> AdditionalSite { get; set; }

        }


        public MainWindow()
        {
            InitializeComponent();
            Browser = new BrowserFinder().getInstalledBrowser();
            SearchType = new Dictionary<int, SearchData>();
            string defaultBrowserName = new BrowserFinder().getDefaultBrowser();
            foreach(var browser in Browser)
            {
                string[] spstring = browser.Value.exePath.Split('\\');
                if(defaultBrowserName.Equals(spstring[spstring.Length - 1].Substring(0, spstring[spstring.Length - 1].Length - (spstring[spstring.Length - 1].Contains('\"') ? 5 : 4)))){
                    BrowserIndex = browser.Key;
                    break;
                }
            }
            Label_Browser.Content = Browser[BrowserIndex].browserName;

            SearchData temp = new SearchData();
            temp.SearchContent = "Music";
            temp.SearchAdditional = " -html -htm -php -shtml -opendivx -md5 -md5sums -mp3free4 intitle:Index.of (mp3)  -site:spats.tokyo -site:unknownsecret.info -site:sirens.rocks"; // -xxx
            SearchType.Add(0, temp);
            temp = new SearchData();
            temp.SearchContent = "Images";
            temp.SearchAdditional = " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (gif|jpeg|jpg|png|bmp|tif|tiff)"; // -xxx
            SearchType.Add(1, temp);
            temp = new SearchData();
            temp.SearchContent = "eBook";
            temp.SearchAdditional = " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (/ebook|/ebooks|/book|/books)"; // -xxx
            SearchType.Add(2, temp);
            temp = new SearchData();
            temp.SearchContent = "Pdf";
            temp.SearchAdditional = " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (chm|pdf)"; // -xxx
            SearchType.Add(3, temp);
            temp = new SearchData();
            temp.SearchContent = "Text File";
            temp.SearchAdditional = " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (txt|rtf)"; // -xxx
            SearchType.Add(4, temp);
            temp = new SearchData();
            temp.SearchContent = "Compressed File";
            temp.SearchAdditional = " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (zip|rar)"; // -xxx
            SearchType.Add(5, temp);

            SearchTypeIndex = 0;
            SearchTypeTotal = 6;


            Label_Version.Content = "Version " + getRunningVersion();

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
            BrowserIndex = (BrowserIndex == 0 ? BrowserTotal - 1 : BrowserIndex - 1);
            Label_Browser.Content = Browser[BrowserIndex].browserName;
        }

        private void Browser_Right_Click(object sender, RoutedEventArgs e)
        {
            BrowserIndex = (BrowserIndex == BrowserTotal -1 ? 0 : BrowserIndex + 1);
            Label_Browser.Content = Browser[BrowserIndex].browserName;
        }

        private void Browser_Add_Click(object sender, RoutedEventArgs e)
        {
           
        }

        private void Browser_Delete_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Search_Type_Left_Click(object sender, RoutedEventArgs e)
        {
            SearchTypeIndex = (SearchTypeIndex == 0 ? SearchTypeTotal - 1 : SearchTypeIndex - 1);
            Label_Search_Type.Content = SearchType[SearchTypeIndex].SearchContent;
        }

        private void Search_Type_Right_Click(object sender, RoutedEventArgs e)
        {
            SearchTypeIndex = (SearchTypeIndex == SearchTypeTotal - 1 ? 0 : SearchTypeIndex + 1);
            Label_Search_Type.Content = SearchType[SearchTypeIndex].SearchContent;
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

        private void btn_Search_Click(object sender, RoutedEventArgs e)
        {
            string str;
            str = "https://www.google.com/search?q=" + textBox.Text;
            str += SearchType[SearchTypeIndex].SearchAdditional;
            Process.Start(new ProcessStartInfo(Browser[BrowserIndex].exePath, str.Replace(' ', '+')));
        }

        private void window_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (textBox.Focus() == false)
            {
                textBox.Focus();
                textBox.Text = e.Key.ToString();
            }
            else if (textBox.Focus() == true && e.Key == Key.Enter)
                btn_Search.RaiseEvent(new RoutedEventArgs(Button.ClickEvent));

            if (e.Key == Key.Left)
            {
                if (Keyboard.IsKeyDown(Key.LeftShift))
                    Search_Type_Left.RaiseEvent(new RoutedEventArgs(Button.ClickEvent));
                else
                    Browser_Left.RaiseEvent(new RoutedEventArgs(Button.ClickEvent));
            }
            if (e.Key == Key.Right)
            {
                if (Keyboard.IsKeyDown(Key.LeftShift))
                    Search_Type_Right.RaiseEvent(new RoutedEventArgs(Button.ClickEvent));
                else
                    Browser_Right.RaiseEvent(new RoutedEventArgs(Button.ClickEvent));
            }
            //http://stackoverflow.com/questions/257587/bring-a-window-to-the-front-in-wpf
        }

        //https://msftstack.wordpress.com/2015/12/30/how-to-display-the-version-in-a-c-wpf-app/
        private Version getRunningVersion()
        {
            return Assembly.GetExecutingAssembly().GetName().Version;
            
        }
    }
}
