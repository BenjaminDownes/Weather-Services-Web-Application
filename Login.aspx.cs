using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Xml;
using Project5_Benjamin_Downes.Protected;

namespace Project5_Benjamin_Downes
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string pw = TextBox2.Text;

            //authenticate credentials
            //send to staff, member or admin page
            //credentials stored in an xml page
            if (memberAuthenticate(username, pw))
            {
                //FormsAuthentication.RedirectFromLoginPage(username, myAuthenticate);
                Response.Redirect("Member/Member.aspx");
            }
            else if (staffAuthenticate(username, pw))
            {
                Response.Redirect("Staff/Staff.aspx");
            }
            else if (adminAuthenticate(username, pw))
            {
                Response.Redirect("Staff/Admin.aspx");
            }
            else { //credentials not found in xml files
                TextBox1.Text = "ERROR: INVALID CREDENTIALS";
                TextBox2.Text = "";
            }
        }
        public bool memberAuthenticate(string un, string pw)
        {
            //XML File with list of credentials Members.xml and Staff.xml found in App_Data Folder
            string fileLocation = HttpRuntime.AppDomainAppPath+@"\App_Data\Members.xml";
            if (File.Exists(fileLocation)) //members authentication
            {
                FileStream fs = new FileStream(fileLocation, FileMode.Open);
                XmlDocument xd = new XmlDocument();
                xd.Load(fs);
                fs.Close();
                //XmlNode node = xd;
                //XmlNodeList children = node.ChildNodes;
                XmlElement rootElement = xd.DocumentElement;
                foreach(XmlNode node in rootElement.ChildNodes)
                {
                    if (node["username"].InnerText == un)
                    {
                        if (node["password"].InnerText == pw)
                        {
                            return true;
                        }
                    }
                    
                    //use hash function to decrypt
                    //check if un/pw credentials are valid
                }
                
                
            }
            return false;
        }
        public bool staffAuthenticate(string un, string pw)
        {
            //XML File with list of credentials Members.xml and Staff.xml found in App_Data Folder
            string fileLocation = HttpRuntime.AppDomainAppPath + @"\App_Data\Staff.xml";
            if (File.Exists(fileLocation)) //members authentication
            {
                FileStream fs = new FileStream(fileLocation, FileMode.Open);
                XmlDocument xd = new XmlDocument(); 
                xd.Load(fs);
                fs.Close();
                //XmlNode node = xd;
                //XmlNodeList children = node.ChildNodes;
                XmlElement rootElement = xd.DocumentElement;
                foreach (XmlNode node in rootElement.ChildNodes)
                {
                    if (node["username"].InnerText == un)
                    {
                        if (node["password"].InnerText == pw)
                        {
                            if (node["authorization"].InnerText == "staff") //check authorization attribute to see if credentials are assoicated with a staff account
                            {
                                return true;
                            }
                        }
                    }

                    //use hash function to decrypt
                    //check if un/pw credentials are valid
                }
                //fs.Close();

            }
            return false;
        }
        public bool adminAuthenticate(string un, string pw)
        {
            //XML File with list of credentials Members.xml and Staff.xml found in App_Data Folder
            string fileLocation = HttpRuntime.AppDomainAppPath + @"\App_Data\Staff.xml";
            if (File.Exists(fileLocation)) //members authentication
            {
                FileStream fs = new FileStream(fileLocation, FileMode.Open);
                XmlDocument xd = new XmlDocument();
                xd.Load(fs);
                //XmlNode node = xd;
                //XmlNodeList children = node.ChildNodes;
                XmlElement rootElement = xd.DocumentElement;
                foreach (XmlNode node in rootElement.ChildNodes)
                {
                    if (node["username"].InnerText == un)
                    {
                        if (node["password"].InnerText == pw)
                        {
                            if (node["authorization"].InnerText == "admin") //check authorization of staff account to see if they are admin
                            {
                                return true;
                            }
                        }
                    }

                }
                fs.Close();

            }
            return false;
        }
    }
}