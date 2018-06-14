using System;
using System.Web;
using Jenzabar.Portal.Framework.Web.UI;
using Jenzabar.Portal.Framework;
///using HSUAviation.Views;


namespace HSUAviation
{
    public class HSUAviation : LinkablePortletBase
    {
        private string cxConnStr = String.Empty;
        private string selectedID = String.Empty;
        private string userName = String.Empty;
        private string memberOf = String.Empty;
        private string childrenOf = String.Empty;
        string membership = String.Empty;
        private bool isLoginPortlet = false;
        private PortletViewBase screen;
        
 ///       private PortletUserCntl userCntl = new PortletUserCntl();
        bool canAdmin;
        string friendlyName = "HSU Aviation";
        string purposeDesc;
        bool rtn = false;

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            //PopulateToolbar();



            if (!Page.IsPostBack)
            {
                rtn = CheckUserAccess();
            }

        }


        protected override PortletViewBase GetCurrentScreen()
        {
            switch (CurrentPortletScreenName)
            {
                case "MainView":
                    return LoadPortletView("HSUAviation/MainView.ascx");

                default:
                    return LoadPortletView("HSUAviation/DefaultView.ascx");
            }





        }

            //public Boolean PopulateToolbar()
            //{
            //    Toolbar Manage = new Toolbar();
            //    MenuItem Default = new MenuItem("DefaultView", "HSUAviation/DefaultView.ascx");
            //    MenuItem Main = new MenuItem("MainView", "HSUAviation/MainView.ascx");

            //    Manage.MenuItems.Add(Default);
            //    Manage.MenuItems.Add(Main);

            //    return true;
            //}


        public Boolean CheckUserAccess()
        {
   ///         bool IsFirstLoad = userCntl.IsFirstLoad;
            bool loggedin = PortalUser.Current.HasLoggedIn;
            //  isLoginPortlet = HttpContext.Current.Session["sourceLoad"] == "LPP";
            if (!loggedin)
            {
                selectedID = HttpContext.Current.Session["LoginUserID"].ToString();
            }

            //Session["LIUuserid"] = HttpContext.Current.Session["LoginUserID"].ToString();
            Session["LIUuserid"] = PortalUser.Current.Guid;
            Session["LIUfirstname"] = PortalUser.Current.FirstName;
            Session["LIUlastname"] = PortalUser.Current.LastName;

            selectedID = PortalUser.Current.ID.ToString();
            userName = PortalUser.Current.Username;
            memberOf = PortalUser.Current.MemberOf.ToString();
            childrenOf = PortalUser.Current.Children.ToString();



   ///         Session["userLevel"] = approveview.approverLevelSQL(PortalUser.Current.FirstName, PortalUser.Current.LastName);



            if (checkConfirmation())
                return true;
            //pnl1.Visible = true;
            else
                return false;
            //pnl1.Visible = false;

        }

        private bool checkConfirmation()
        {
            /*
            //Check to see if any of the credentials have been confirmed for the user during this term
            string STMT = @"select COUNT(*)
                            from EDU_EARN_HIST h
                            where h.ID_NUM=@id_num and h.UDEF_DTE_1 <= (
                            select y.TRM_BEGIN_DTE 
                            from REG_CONFIG r
                            join YEAR_TERM_TABLE y on r.CUR_YR_DFLT=y.YR_CDE and r.CUR_TRM_DFLT=y.TRM_CDE
                            where y.TRM_BEGIN_DTE <= GETDATE() and y.TRM_END_DTE >= GETDATE() and (y.TRM_CDE in ('10','20')))";

            bool confirmed = true;

            try
            {
                DataAccess da = CUS.EX.DAL.EXConnect.GetDataAccess();

                string recordCount1 = da.execScalar(STMT,
                                    System.Data.CommandType.Text,
                                    new ParamStruct[]{
                                        new ParamStruct("id_num", selectedID, System.Data.DbType.Int32, System.Data.ParameterDirection.Input )
                                    }).ToString();

                if (Convert.ToInt32(recordCount1) > 0)
                    confirmed = false;
                else
                    confirmed = true;

                return confirmed;
            }
            catch (Exception ex)
            {
                ExceptionManager.Publish(ex);
                return false;
            }
            */

            return true;
        }
    }
}