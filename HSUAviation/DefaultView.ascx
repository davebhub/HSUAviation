<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DefaultView.ascx.cs" Inherits="HSUAviation.DefaultView" %>

<%@ Register Assembly="Jenzabar.Common" Namespace="Jenzabar.Common.Web.UI.Controls" TagPrefix="common"  %>
<%@Import namespace="Jenzabar.Portal.Framework"%>
<%@ Register TagName="MainMenu" TagPrefix="mom"  src="Screens/MainMenu.ascx"   %>


<%--background-color:#036534  green;
background-color:#265B8C  blue  ;--%>


<style type="text/css" >
.globalizedbutton
{
    width:105px;
    height: 30px;
    background-color: #036534;
    line-height: 30px;
    padding-bottom: 2px;
    vertical-align: middle;
    font-family: "Lucida Grande", Geneva, Verdana, Arial, Helvetica, sans-serif;
    font-size: 16px;
    text-transform: none;
    border:1px solid transparent;
    color:white;
}
.globalizedbutton:hover
{
    background-color:gainsboro;
    color:#265B8C;
}
.buttonBar{
    background-color:#036534;
}
.loader {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url("UI/Common/Images/PortletImages/Lightbox/loading.gif") 50% 50% no-repeat rgb(249,249,249);
}
</style>
<%--    background-color:#265B8C;--%>
<div class="loader"></div>

<div>
    <mom:MainMenu id="mainMenu" runat="server"></mom:MainMenu>
</div>

<asp:Panel ScrollBars="Vertical" Height="500px" runat="server">
    <div>
        <table>
            <tr style="height:50px"></tr>
            <tr >
                <td >
                    <asp:Image ID="Image1" runat="server"  ImageUrl="~/UI/Common/Images/HSUlogo.jpeg"   />
                </td>
            </tr>
            <tr style="height:50px"></tr>
            <tr>
                <td>
                    <p style="width:500px">
                        <strong>Henderson's Department of Aviation</strong> is Arkansas's only university program that offers a four-year Bachelor of Science degree specifically in aviation.
                    </p>
                    <p style="height:20px"></p>
                    <p style="width:500px">
                        Utilizing experienced faculty, flight instructors, and 17 aircraft, our goal is to provide students the training and education necessary to prepare them for a career in the professional aviation industry, and in the safest environment possible.  
                        Our department offers courses and degree tracks for students that want to fly for the airlines or for a corporate flight department or manage the fleet they fly and the airports they serve.
                    </p>
                </td>
            </tr>
        </table>
    </div>
</asp:Panel>

<script type="text/javascript">
    $(window).load(function () {
        $(".loader").fadeOut("slow");
    })

     $(document).ready(function () {
        
     });
</script>