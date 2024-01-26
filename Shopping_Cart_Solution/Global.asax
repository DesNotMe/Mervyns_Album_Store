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
        routes.MapPageRoute("Home", "Home", "~/Index.aspx");
        routes.MapPageRoute("BestSeller_Pop", "BestSellerPop", "~/BestSeller2.aspx");
        routes.MapPageRoute("BestSeller_Hiphop", "BestSellerHiphop", "~/BestSeller.aspx");
        routes.MapPageRoute("BestSeller_Film", "BestSellerFilm", "~/BestSeller3.aspx");
        routes.MapPageRoute("BestSeller_Other", "BestSellerOthers", "~/BestSeller4.aspx");
        routes.MapPageRoute("NewReleases", "NewReleases", "~/NewReleases.aspx");

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
