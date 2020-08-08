<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project5_Benjamin_Downes._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="text-decoration: underline">&nbsp;<strong>Project 5 - Assignment 8: Home Page</strong></h1>
        <h1 style="text-decoration: underline"><strong dir="ltr"><asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" ClientIDMode="AutoID" Height="73px" Width="340px" />
            </strong></h1>
        <p>The Weather Service Aggregator lets member users use several different weather services, and has a staff page to keep track of the contact info of the members and staff, and an admin page to see user credentials. Members should get value out of having multiple relevant weather services together on one page.</p>
        <p class="lead"><strong><asp:Button ID="Button2" runat="server" Text="Members" OnClick="Button1_Click" />
            </strong>&nbsp; Allow User to Subscribe to Weather Service, UV Index Tool, and a User Control for Temperature Conversions
            </p>
        <p class="lead"><strong><asp:Button ID="Button3" runat="server" Text="Staff Access" OnClick="Button1_Click" />
            &nbsp;</strong>Contact Information of Members and Staff/Admin</p>
        <p class="lead"><strong><asp:Button ID="Button4" runat="server" Text="Admin Access" OnClick="Button1_Click" />
            &nbsp;</strong>Login Credentials for Users are Stored</p>
        <p class="lead">&nbsp;</p>
        <p class="lead">Question 1: Service Directory</p>
        <p class="lead">
            <table style="width: 100%;">
                <tr>
                    <td><b>Service Name and Paramters</td>
                    <td>Service Description</td>
                    <td>Resources Used</td>
                    <td>Try It Page</b></td>
                </tr>
                <tr>
                    <td>5-Day Weather
                        <br />
                        Input: Zipcode (String) Output: 5-Day Forecast (String [])</td>
                    <td>Returns a 5 Day Weather Forecast, given a zipcode</td>
                    <td>Used API from openweathermap.org/forecast5 and used Service from Project 3 - Found in Member.aspx page</td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page2/">Try It</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>UV Index
                        <br />
                        Input: Latitude and Longitude (doubles) Output: UV Index (double)</td>
                    <td>Enter Coordinate pair to Get UV Index Information.</td>
                    <td>Used https://openweathermap.org/api/uvi to fetch UVI from the uvi endpoint and used Service in Project 3 - Found in Member.aspx page</td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page4/">Try It</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>Temperature Conversion
                        <br />
                        Input: Celsius/Farenheight (double) Output: Farenheight/Celsius (double)</td>
                    <td>Given a temperature return the converted temperature (F to C or C to F)</td>
                    <td>Made my own User Control using temperature conversion formulas and Implemented in the Member.aspx page</td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page4/">Try It</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>Home Page</td>
                    <td>Project Summary Page</td>
                    <td>All Web Application Components for Project 5</td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page8/">Try It</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>Login Page</td>
                    <td>&nbsp;Given a username and password credential combo return a boolean and redirect user to relevant page&nbsp;</td>
                    <td>Used Member.xml and Staff.xml to store credentials and authorization level</td>
                    <td>
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page8/Login">Try It</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>Member Page</td>
                    <td>Able to use several weather services and a user control</td>
                    <td>Used 5DayWeather.svc, UVIndex.svc, and WebUserControl1.ascx</td>
                    <td>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page8/Login">Try It</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>Admin Page</td>
                    <td>Able to View Member/Staff Credentials</td>
                    <td>Check Authorization level by referencing Staff.xml and parsing xml</td>
                    <td>
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page8/Login">Try It</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>Staff Page</td>
                    <td>Able to View Member/Staff Contact Information</td>
                    <td>Check Authorization level by referencing Staff.xml and parsing xml</td>
                    <td>
                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="http://webstrar26.fulton.asu.edu/page8/Login">Try It</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </p>
        <p class="lead">Question 2: User Control - Temperature Conversion User Control Implemented in the Member.aspx page (WebUserControl.ascx is the user control file)</p>
        <p class="lead">Question 3: Web Service(s) - Weather Service to Give a 5 Day Weather Forecast given a US-based zipcode as input</p>
        <p class="lead">Question 4: Members.xml and Staff.xml pages located in the App_Data Folder for State Management, Authentication, and Authorization</p>
        <p class="lead">Q5/Q6 - Deployed Website Application on Webstrarr and Submitted Visual Studio Files Through Canvas</p>
        <p class="lead">&nbsp;</p>
        <p class="lead">Benjamin Downes</p>
        <p class="lead">CSE 445 - Summer 2020</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
