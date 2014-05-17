using System;
using System.Web;

namespace SecureDefaults
{
    public class HeaderModule : IHttpModule
    {
        void IHttpModule.Dispose()
        {
        }

        void IHttpModule.Init(HttpApplication context)
        {
            context.PreSendRequestHeaders += context_PreSendRequestHeaders;
        }

        void context_PreSendRequestHeaders(object sender, EventArgs e)
        {
            HttpApplication application = (HttpApplication)sender;
            HttpContext context = application.Context;

            context.Response.Headers.Remove("Server");
        }
    }
}
