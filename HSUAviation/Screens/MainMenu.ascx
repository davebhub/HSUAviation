<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.ascx.cs" Inherits="HSUAviation.Screens.MainMenu" %>
<%@ Register Assembly="Jenzabar.Common" Namespace="Jenzabar.Common.Web.UI.Controls" TagPrefix="common" %>

<%--background-color:#036534  green;
background-color:#265B8C  blue  ;--%>


<style type="text/css" >
.globalizedbutton
{
    width:105px;
    height: 30px;
    background-color:#265B8C;
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
    background-color:#265B8C;
}
</style>


<div class="buttonBar">
<common:Globalizedbutton id="salesBtn"  runat="server" text="SALES" class="globalizedbutton"     width="100px"  ></common:Globalizedbutton>
<common:Globalizedbutton id="adminBtn"  runat="server" text="ADMIN" class="globalizedbutton"    width="100px"  ></common:Globalizedbutton>   
<common:Globalizedbutton id="sysmanBtn"  runat="server" text="SYSMAN" class="globalizedbutton"    width="100px"  ></common:Globalizedbutton> 

<%-- <common:Globalizedbutton id="eduEarnHistBtn"  runat="server" text="EDU_EARN_HIST"  class="globalizedbutton"   OnClick="LoadEduEarnHistScreen" width="125px"  ></common:Globalizedbutton> --%>   
<%-- <common:Globalizedbutton id="coursesBtn"  runat="server" text="COURSES"  class="globalizedbutton"   OnClick="LoadCoursesScreen" width="125px"  ></common:Globalizedbutton> --%>  


    

    <%--the following line is used as a spacer between the menu items and the drop down lists.--%>
    <asp:Label ID="Label1" runat="server" Text="" Width="100px" BorderStyle="None"/>

<%--    <label  style="width:auto;color:white" >YEAR:</label>
    <asp:DropDownList ID="DropDownList_year" runat="server"  AutoPostBack="true" Width="75px" 
        OnLoad="DropDownList_year_OnLoad"  
        OnSelectedIndexChanged="ddl_year_OnSelectedIndexChanged"   DataTextField="data" DataValueField="value" >
    </asp:DropDownList>

    <label  style="width:auto;color:white" >TERM:</label>
    <asp:DropDownList ID="DropDownList_term" runat="server"  AutoPostBack="true" Width="75px"  
        OnLoad="DropDownList_term_OnLoad"  
        OnSelectedIndexChanged="ddl_term_OnSelectedIndexChanged"   DataTextField="data" DataValueField="value" >
    </asp:DropDownList>--%>
</div>

