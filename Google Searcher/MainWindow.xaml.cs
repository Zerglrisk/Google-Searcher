using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Deployment;
using System.Reflection;
using Microsoft.Win32;
using System.IO;

namespace Google_Searcher
{
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {
        //General
        int BrowserIndex;
        FileIO.dataFormat Browser;
        int SearchTypeIndex;
        FileIO.dataFormat SearchType;
        

        public MainWindow()
        {

            InitializeComponent();
            if(!new FileIO().InitializeFile(ref Browser, ref SearchType, ref BrowserIndex))
            {
                Stream fs = new FileStream("data.dat", FileMode.Open);
                new FileIO().Deserialize(fs, ref Browser, ref SearchType, ref BrowserIndex, ref SearchTypeIndex);
            }

            Label_Browser.Content = Browser.item.ElementAt(BrowserIndex).Key;
            Label_Search_Type.Content = SearchType.item.ElementAt(SearchTypeIndex).Key;
            Label_Version.Content = "Version " + getRunningVersion();
            
            
            //Page1 page = new Page1();
            //this.Content = page;


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
            BrowserIndex = (BrowserIndex == 0 ? Browser.item.Count - 1 : BrowserIndex - 1);
            Label_Browser.Content = Browser.item.ElementAt(BrowserIndex).Key;
            SaveFile();
        }

        private void Browser_Right_Click(object sender, RoutedEventArgs e)
        {
            BrowserIndex = (BrowserIndex == Browser.item.Count - 1 ? 0 : BrowserIndex + 1);
            Label_Browser.Content = Browser.item.ElementAt(BrowserIndex).Key;
            SaveFile();
        }

        private void Browser_Add_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == true)
            {
                string[] spstring = openFileDialog.FileName.Split('\\');
                Browser.item.Add(spstring[spstring.Length - 1].Substring(0, spstring[spstring.Length - 1].Length - (spstring[spstring.Length - 1].Contains('\"') ? 5 : 4)), openFileDialog.FileName);
                BrowserIndex = Browser.item.Count - 1;
                Label_Browser.Content = Browser.item.ElementAt(BrowserIndex).Key;
                SaveFile();
            }

        }

        private void Browser_Delete_Click(object sender, RoutedEventArgs e)
        {
            if(BrowserIndex > 0)
            {
                Browser.item.Remove(Browser.item.ElementAt(BrowserIndex).Key);
                BrowserIndex = (BrowserIndex == 0 ? Browser.item.Count - 1 : BrowserIndex - 1);
                Label_Browser.Content = Browser.item.ElementAt(BrowserIndex).Key;
                SaveFile();
            }
            
        }

        private void Search_Type_Left_Click(object sender, RoutedEventArgs e)
        {
            SearchTypeIndex = (SearchTypeIndex == 0 ? SearchType.item.Count - 1 : SearchTypeIndex - 1);
            Label_Search_Type.Content = SearchType.item.ElementAt(SearchTypeIndex).Key;
        }

        private void Search_Type_Right_Click(object sender, RoutedEventArgs e)
        {
            SearchTypeIndex = (SearchTypeIndex == SearchType.item.Count - 1 ? 0 : SearchTypeIndex + 1);
            Label_Search_Type.Content = SearchType.item.ElementAt(SearchTypeIndex).Key;
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
            str += SearchType.item.ElementAt(SearchTypeIndex).Value;
            Process.Start(new ProcessStartInfo(Browser.item.ElementAt(BrowserIndex).Value, str.Replace(' ', '+')));
        }

        private void window_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if(!textBox.IsFocused && !TextBox_Browser.IsVisible && !TextBox_Search_Type.IsVisible && ((e.Key.GetHashCode() >= 34 && e.Key.GetHashCode() <= 69) || (e.Key >= Key.NumPad0 && e.Key <=Key.NumPad9)))
            {
                
                textBox.Focus();
                textBox.CaretIndex = textBox.Text.Length;
            }
            else if(TextBox_Browser.IsVisible && !TextBox_Search_Type.IsVisible && ((e.Key.GetHashCode() >= 34 && e.Key.GetHashCode() <= 69) || (e.Key >= Key.NumPad0 && e.Key <= Key.NumPad9)))
            {
                TextBox_Browser.Focus();
                TextBox_Browser.CaretIndex = TextBox_Browser.Text.Length;
            }


            if (textBox.IsFocused && e.Key == Key.Enter)
            {
                btn_Search.RaiseEvent(new RoutedEventArgs(Button.ClickEvent));
            }
            else if(TextBox_Browser.IsFocused && e.Key == Key.Enter)
            {
                TextBox_Browser.Visibility = Visibility.Hidden;
                //Browser.item.ElementAt(BrowserIndex).Key //extend dictiony로 클래스 상속 받아서 set도 추가해야함
                Label_Browser.Visibility = Visibility.Visible;
                Label_Browser.Content = TextBox_Browser.Text;
                
            }
                

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

        private void SaveFile()
        {
            Stream fs = new FileStream("data.dat", FileMode.Create);
            FileIO file = new FileIO();
            file.Serialize(Browser, fs, BrowserIndex);
            file.Serialize(SearchType, fs, SearchTypeIndex);
            fs.Close();
        }

        private void Label_Browser_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            TextBox_Browser.Text = Label_Browser.Content.ToString();
            TextBox_Browser.Visibility = Visibility.Visible;
            Label_Browser.Visibility = Visibility.Hidden;
        }
    }
}
