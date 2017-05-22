using Microsoft.Win32;
using System;
using System.Collections.Generic;

public class BrowserFinder
{
    /*
         * Find All Installed Browser
         * http://stackoverflow.com/questions/2370732/how-to-find-all-the-browsers-installed-on-a-machine
         */
    public FileIO.dataFormat getInstalledBrowser()
    {
        FileIO.dataFormat data = new FileIO.dataFormat();
        data.item = new Dictionary<string, string>();
        
        using (RegistryKey hklm = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, RegistryView.Registry32))
        {
            RegistryKey webClientsRootKey = hklm.OpenSubKey(@"SOFTWARE\Clients\StartMenuInternet");
            if (webClientsRootKey != null)
                foreach (var subKeyName in webClientsRootKey.GetSubKeyNames())
                    if (webClientsRootKey.OpenSubKey(subKeyName) != null)
                        if (webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell") != null)
                            if (webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell").OpenSubKey("open") != null)
                                if (webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell").OpenSubKey("open").OpenSubKey("command") != null)
                                {
                                    string commandLineUri = (string)webClientsRootKey.OpenSubKey(subKeyName).OpenSubKey("shell").OpenSubKey("open").OpenSubKey("command").GetValue(null);
                                    string browserName = (string)webClientsRootKey.OpenSubKey(subKeyName).GetValue(null);
                                    //your turn

                                    data.item.Add(browserName, commandLineUri);
                                }
        }
        return data;
    }
    /*
     * Find Default Browser
     * http://stackoverflow.com/questions/13621467/how-to-find-default-web-browser-using-c
     */
    public string getDefaultBrowser()
    {
        //Open Default Browser
        //System.Diagnostics.Process.Start("http://www.google.com");

        string browserName = "iexplore";
        using (RegistryKey userChoiceKey = Registry.CurrentUser.OpenSubKey(@"Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice"))
        {
            if (userChoiceKey != null)
            {
                object progIdValue = userChoiceKey.GetValue("Progid");
                if (progIdValue != null)
                {
                    if (progIdValue.ToString().ToLower().Contains("chrome"))
                        browserName = "chrome";
                    else if (progIdValue.ToString().ToLower().Contains("firefox"))
                        browserName = "firefox";
                    else if (progIdValue.ToString().ToLower().Contains("safari"))
                        browserName = "safari";
                    else if (progIdValue.ToString().ToLower().Contains("opera"))
                        browserName = "opera";
                }
            }
        }
        return browserName;
    }



    /*
     * Find A Installed Web Browser.
     * http://stackoverflow.com/questions/24909108/get-installed-software-list-using-c-sharp
     */
    /*public static bool IsApplicationInstalled(string p_name)
    {
        string displayName;
        RegistryKey key;

        // search in: CurrentUser
        key = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall");
        foreach (String keyName in key.GetSubKeyNames())
        {
            RegistryKey subkey = key.OpenSubKey(keyName);
            displayName = subkey.GetValue("DisplayName") as string;
            if (p_name.Equals(displayName, StringComparison.OrdinalIgnoreCase) == true)
            {
                return true;
            }
        }

        // search in: LocalMachine_32
        key = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall");
        foreach (String keyName in key.GetSubKeyNames())
        {
            RegistryKey subkey = key.OpenSubKey(keyName);
            displayName = subkey.GetValue("DisplayName") as string;
            if (p_name.Equals(displayName, StringComparison.OrdinalIgnoreCase) == true)
            {
                return true;
            }
        }

        // search in: LocalMachine_64
        if(Environment.Is64BitOperatingSystem == true)
        {
            key = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall");
            foreach (String keyName in key.GetSubKeyNames())
            {
                RegistryKey subkey = key.OpenSubKey(keyName);
                displayName = subkey.GetValue("DisplayName") as string;
                if (p_name.Equals(displayName, StringComparison.OrdinalIgnoreCase) == true)
                {
                    return true;
                }
            }
        }


        // NOT FOUND
        return false;
    }*/
}
