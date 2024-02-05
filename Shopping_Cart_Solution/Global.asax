<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Web" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RegisterRoutes(RouteTable.Routes);

    }
    static void RegisterRoutes (RouteCollection routes)
    {
        //routes .MapPageRoute ("UniqueName", "Name to be shown on address bar", "physical path")
        routes.MapPageRoute("Home", "home", "~/index.aspx");
        routes.MapPageRoute("BestSeller_Pop", "bestSellerPop", "~/BestSeller2.aspx");
        routes.MapPageRoute("BestSeller_Hiphop", "bestSellerHiphop", "~/BestSeller.aspx");
        routes.MapPageRoute("BestSeller_Film", "bestSellerFilm", "~/BestSeller3.aspx");
        routes.MapPageRoute("BestSeller_Other", "bestSellerOthers", "~/BestSeller4.aspx");
        routes.MapPageRoute("NewReleases", "newReleases", "~/NewReleases.aspx");
        routes.MapPageRoute("ForgetPw", "forgetPassword", "~/ForgetPassword.aspx");
        routes.MapPageRoute("ResetPw", "resetPassword", "~/ResetPassword.aspx");

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
