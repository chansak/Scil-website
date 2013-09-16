using System;
using System.Web;
using System.Security.Cryptography;
using System.IO;
using System.Configuration;
using System.Web.Configuration;
using System.Collections;
using System.Net.Mail;
using System.Drawing.Text;
using System.Drawing.Imaging;
using System.Drawing;
using System.Text;
using System.Globalization;
using System.Data;
using System.Text.RegularExpressions;
public class AppUtilities
{
    private static string comparevalue;
    public AppUtilities()
    {
    }
    public static string GetDirectoryName(string path)
    {
        if (String.IsNullOrEmpty(path)) return path;
        path = path.Substring(0, path.LastIndexOf("/"));
        path = path.Substring(path.LastIndexOf("/") + 1);
        return path;
    }
    public static string Left(string param, int length)
    {
        string result = param.Substring(0, length);
        return result;
    }
    public static string Left(string param, int length, string overtext)
    {
        string result = "";
        if (param.Length > length)
        {
            result = param.Substring(0, length);
            return string.Format("{0} {1}", result, overtext);
        }
        else
            return string.Format("{0} {1}", param); ;
    }
    public static string Right(string param, int length)
    {
        string result = param.Substring(param.Length - length, length);
        return result;
    }
    public static string Mid(string param, int startIndex, int length)
    {
        string result = param.Substring(startIndex, length);
        return result;
    }
    public static string Mid(string param, int startIndex)
    {
        string result = param.Substring(startIndex);
        return result;
    }
    public static bool ExistsInArray(string value, string[] array)
    {
        if (array == null) return false;
        if (array.Length == 0) return false;
        comparevalue = value;
        Predicate<string> match = new Predicate<string>(exists);
        return Array.Exists<string>(array, match);

    }
    private static bool exists(string value)
    {
        if (comparevalue.Trim() == value.Trim()) return true;
        return false;
    }
    public static void SendMail(string sender, string receiver, string subject, string message, bool isBodyHtml)
    {
        MailMessage mail = new MailMessage();
        System.Net.NetworkCredential cred = new System.Net.NetworkCredential("Chansak.K@bizcon.co.th", "=kPLydfbN");

        mail.To.Add(new MailAddress(receiver));
        mail.Subject = subject;

        mail.From = new MailAddress(sender);
        mail.IsBodyHtml = true;
        mail.Body = message;
        string client = "BIZCONSVR-03.bizcon.co.th";
        try
        {
            SmtpClient smtp = new SmtpClient(client);
            smtp.UseDefaultCredentials = false;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = false;
            smtp.Credentials = cred;
            smtp.Port = 25;
            smtp.Send(mail);
        }
        catch (Exception ex) { HttpContext.Current.Response.Write(ex.Message); }
    }
    public static string getKeyName(string param)
    {
        if (!String.IsNullOrEmpty(param))
        {
            if (param.IndexOf("=") > -1) return param.Substring(0, param.IndexOf("="));
            return param;
        }
        return String.Empty;
    }
    public static string getValue(string param)
    {
        if (!String.IsNullOrEmpty(param))
        {
            return param.Substring(param.IndexOf("=") + 1);
        }
        return String.Empty;
    }
    public string RandomID(int range)
    {
        Random rd = new Random();
        return rd.Next(range).ToString();
    }
    public static string AutoID(int length)
    {
        RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
        byte[] buffer = new byte[length / 2];
        rng.GetBytes(buffer);
        string autoID = ByteToHex(buffer, length);
        return autoID;
    }
    protected static string ByteToHex(byte[] bytes, int lenght)
    {
        System.Text.StringBuilder hexstring = new System.Text.StringBuilder(lenght / 2);
        for (int i = 0; i < bytes.Length; i++)
        {
            hexstring.Append(String.Format("{0:X2}", bytes[i]));
        }
        string str = hexstring.ToString();
        for (int i = 6; i < str.Length - 2; i += 7)
        {
            str = str.Insert(i, "-");
        }
        return str.ToLower();
    }
    public string FilterText(string text)
    {
        if (text.Length < 1) return "";
        string str = text;
        str = str.Replace("\'", "");
        return str;
    }
    public string UrlConvert(object str)
    {
        if (str != null)
        {
            string strOutput = str.ToString();
            string strPattern = "http://((\\w+)\\.)+(\\w+)(/[\\w+./?%=&]*)?";
            System.Text.RegularExpressions.Regex urlRegex = new System.Text.RegularExpressions.Regex(strPattern);
            System.Text.RegularExpressions.MatchCollection mc = urlRegex.Matches(str.ToString());
            if (mc.Count > 0)
            {
                int index = -1;
                foreach (System.Text.RegularExpressions.Match m in mc)
                {
                    string strtmp;
                    index = strOutput.IndexOf(m.Value, index + 1);
                    strtmp = "<A HREF=\"" + m.Value + "\">";
                    strOutput = strOutput.Insert(index, strtmp);
                    strOutput = strOutput.Insert(index + m.Value.Length + strtmp.Length, "</A>");
                }
                return strOutput;
            }
            return str.ToString();
        }
        return String.Empty;
    }
    public static HttpCookie EncryptCookie(HttpCookie cookie)
    {
        try
        {
            HttpCookie encrypted = CloneCookie(cookie);
            encrypted.Value = Encrypt(encrypted.Value);
            return encrypted;
        }
        catch (Exception e)
        {
            throw new HttpException("Unable to Encrypt the cookie.", e);
        }
    }
    public static HttpCookie DecryptCookie(HttpCookie cookie)
    {
        try
        {
            if (cookie == null) throw new ArgumentNullException("cookie");
            if (cookie.Value.Length == 0) return cookie;
        }
        catch
        {
            return cookie;
        }
        try
        {
            HttpCookie decryptedCookie = CloneCookie(cookie);
            decryptedCookie.Value = Decrypt(decryptedCookie.Value);
            return decryptedCookie;
        }
        catch (Exception e)
        {
            throw new HttpException("Unable to Decrypt the cookie.", e);
        }
    }
    public static string Encrypt(object text)
    {
        if (text != null)
        {
            MemoryStream ms = new MemoryStream();
            RijndaelManaged rm = new RijndaelManaged();
            rm.Key = System.Text.Encoding.Default.GetBytes(MachineKey.Length > 32 ? MachineKey.Substring(0, 32) : MachineKey);
            byte[] iv = { 11, 12, 33, 50, 78, 25, 72, 84, 23, 65, 48, 69, 250, 36, 125, 147 };
            rm.IV = iv;
            ICryptoTransform transformer = rm.CreateEncryptor();
            CryptoStream cs = new CryptoStream(ms, transformer, CryptoStreamMode.Write);
            try
            {
                byte[] data = System.Text.Encoding.Default.GetBytes(text.ToString());
                ms.Write(data, 0, data.Length);
                string result = Convert.ToBase64String(ms.ToArray());
                ms.Close();
                return result;
            }
            catch
            {
                return String.Empty;
            }
        }
        return String.Empty;
    }
    public static string MachineKey
    {
        get
        {
            Configuration config = (Configuration)WebConfigurationManager.OpenWebConfiguration("~/web.config");
            MachineKeySection machineKey = (MachineKeySection)config.GetSection("system.web/machineKey");
            return machineKey.DecryptionKey;
        }
    }
    public static string Decrypt(object text)
    {
        if (text != null)
        {
            MemoryStream ms = new MemoryStream();
            RijndaelManaged rm = new RijndaelManaged();
            rm.Key = System.Text.Encoding.Default.GetBytes(MachineKey.Length > 32 ? MachineKey.Substring(0, 32) : MachineKey);
            byte[] iv = { 11, 12, 33, 50, 78, 25, 72, 84, 23, 65, 48, 69, 250, 36, 125, 147 };
            rm.IV = iv;
            ICryptoTransform transformer = rm.CreateDecryptor();
            CryptoStream cs = new CryptoStream(ms, transformer, CryptoStreamMode.Write);
            try
            {
                byte[] data = Convert.FromBase64String(text.ToString());
                ms.Write(data, 0, data.Length);
                string result = System.Text.Encoding.Default.GetString(ms.ToArray());
                ms.Close();
                return result;
            }
            catch
            {
                return String.Empty;
            }
        }
        return String.Empty;
    }
    protected static HttpCookie CloneCookie(HttpCookie source)
    {
        HttpCookie encrypted = new HttpCookie(source.Name);
        encrypted.Expires = source.Expires;
        encrypted.Path = source.Path;
        encrypted.Secure = source.Secure;
        encrypted.Domain = source.Domain;
        encrypted.Value = source.Value;
        return encrypted;
    }
    public static void Alert(System.Web.UI.Page myPage, string text, Boolean back)
    {
        if (back)
        {
            string id = Guid.NewGuid().ToString();
            myPage.ClientScript.RegisterStartupScript(myPage.GetType(), id, string.Format("alert(\"{0}\");history.back();", text), true);
        }
        else
        {
            string id = Guid.NewGuid().ToString();
            myPage.ClientScript.RegisterStartupScript(myPage.GetType(), id, string.Format("alert(\"{0}\");", text), true);
        }
    }
    public static string ConvertNumToString(string text)
    {
        Hashtable lookup = new Hashtable();
        lookup["0"] = "ศูนย์";
        lookup["1"] = "หนึ่ง";
        lookup["2"] = "สอง";
        lookup["3"] = "สาม";
        lookup["4"] = "สี่";
        lookup["5"] = "ห้า";
        lookup["6"] = "หก";
        lookup["7"] = "เจ็ด";
        lookup["8"] = "แปด";
        lookup["9"] = "เก้า";
        lookup["-"] = "-";
        string result = "";
        foreach (char c in text)
        {
            string digit = c.ToString();
            if (lookup.ContainsKey(digit))
            {
                result += lookup[digit];
            }
        }
        return result;
    }
    public static DataTable SelectTopDataRow(DataTable dt, int count)
    {
        DataTable dtn = dt.Clone();
        for (int i = 0; i < count; i++)
        {
            dtn.ImportRow(dt.Rows[i]);
        }
        return dtn;
    }
    public static string ScriptSerializer(object obj)
    {
        System.Web.Script.Serialization.JavaScriptSerializer oSerializer =
          new System.Web.Script.Serialization.JavaScriptSerializer();
        return oSerializer.Serialize(obj);
    }
}

