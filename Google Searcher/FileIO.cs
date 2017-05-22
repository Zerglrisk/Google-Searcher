using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class FileIO
{
    public class dataFormat
    {
        public string section;
        public Dictionary<string, string> item;

    } //저장할 때string 이나 List에 넣을 item 앞에 4byte를 읽어(뒤에 읽을 string의 byte 크기) 그 바이트 만큼 읽어 들여 값을 대칭 시킨다.
    
    public bool IsExistFile()
    {
        if (File.Exists("data.dat"))
            return true;
        else
            return false;
    }

    public bool InitializeFile(ref dataFormat browser, ref dataFormat searchType, ref int browserIndex)
    {
        
        if(!IsExistFile())
        {
            int count = -1;
            browserIndex = 0;
            int searchtypeIndex = 0;

            browser = new BrowserFinder().getInstalledBrowser();
            searchType = new dataFormat();
            searchType.item = new Dictionary<string, string>();

            browser.section = "Browser";
            searchType.section = "Search Type";

            searchType.item.Add("Music", " -html -htm -php -shtml -opendivx -md5 -md5sums -mp3free4 intitle:Index.of (mp3)  -site:spats.tokyo -site:unknownsecret.info -site:sirens.rocks"); // -xxx
            searchType.item.Add("Images", " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (gif|jpeg|jpg|png|bmp|tif|tiff)"); // -xxx
            searchType.item.Add("eBook", " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (/ebook|/ebooks|/book|/books)"); // -xxx
            searchType.item.Add("Pdf", " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (chm|pdf)"); // -xxx
            searchType.item.Add("Text File", " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (txt|rtf)"); // -xxx
            searchType.item.Add("Compressed File", " -html -htm -php -shtml -opendivx -md5 -md5sums intitle:index.of (zip|rar)"); // -xxx

            dataFormat additionalSite = new dataFormat();
            additionalSite.item = new Dictionary<string, string>();

            Stream fs = new FileStream("data.dat", FileMode.Append);

            //Set Deafult Browser System Used
            string defaultBrowserName = new BrowserFinder().getDefaultBrowser();
            foreach (var brow in browser.item)
            {
                count++;
                string[] spstring = brow.Value.Split('\\');
                if (defaultBrowserName.Equals(spstring[spstring.Length - 1].Substring(0, spstring[spstring.Length - 1].Length - (spstring[spstring.Length - 1].Contains('\"') ? 5 : 4))))
                {
                    browserIndex = count;
                    break;
                }
            }

            Serialize(browser, fs, browserIndex);
            Serialize(searchType, fs, searchtypeIndex);
            return true;
        }
        else
        {
            return false;
        }
        

        
        

    }

    public void Serialize(dataFormat data,Stream stream, int index)
    {
        BinaryWriter writer = new BinaryWriter(stream);
        writer.Write(data.section);
        writer.Write(data.item.Count);

        foreach(var kvp in data.item)
        {
            writer.Write(kvp.Key);
            writer.Write(kvp.Value);
        }
        writer.Write(index);
        writer.Flush();
    }

    public void Deserialize(Stream stream, ref dataFormat browser, ref dataFormat searchtype, ref int browserindex, ref int searchtypeindex)
    {
        BinaryReader reader = new BinaryReader(stream);
        int count;

        browser = new dataFormat();
        browser.item = new Dictionary<string, string>();
        searchtype = new dataFormat();
        searchtype.item = new Dictionary<string, string>();

        //Browser
        
        browser.section = reader.ReadString();
        count = reader.ReadInt32();
        for (int i = 0; i < count; i++)
        {
            var key = reader.ReadString();
            var value = reader.ReadString();
            browser.item.Add(key, value);
        }
        browserindex = reader.ReadInt32();

        //SearchType
        searchtype.section = reader.ReadString();
        count = reader.ReadInt32();
        for (int i = 0; i < count; i++)
        {
            var key = reader.ReadString();
            var value = reader.ReadString();
            searchtype.item.Add(key, value);
        }
        searchtypeindex = reader.ReadInt32();

    }

}

