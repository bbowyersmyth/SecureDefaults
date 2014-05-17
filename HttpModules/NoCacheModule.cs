using System;
using System.Web;

namespace SecureDefaults
{
    public class NoCacheModule : IHttpModule
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

            string contentType = context.Response.Headers.Get("Content-Type");

            if (contentType == null)
            {
                return;
            }

            if (contentType.StartsWith("text/html", true, System.Globalization.CultureInfo.InvariantCulture) || 
                contentType.StartsWith("application/xhtml+xml", true, System.Globalization.CultureInfo.InvariantCulture))
            {
                context.Response.Headers.Set("Cache-Control", "no-cache; no-store");
                context.Response.Headers.Set("Pragma", "no-cache");
                context.Response.Headers.Set("Expires", "-1");
            }
        }
    }
}
