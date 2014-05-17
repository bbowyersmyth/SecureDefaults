using System;
using System.Collections.Generic;
using System.Text;
using System.Web;

namespace SecureDefaults
{
    public class DomainSslOnlyModule : IHttpModule
    {
        void IHttpModule.Dispose()
        {
        }

        void IHttpModule.Init(HttpApplication context)
        {
            context.BeginRequest += context_BeginRequest;
        }

        void context_BeginRequest(object sender, EventArgs e)
        {
            HttpApplication application = (HttpApplication)sender;
            HttpContext context = application.Context;

            switch (context.Request.Url.Scheme)
            {
                case "https":
                    context.Response.AddHeader("Strict-Transport-Security", "max-age=31536000");
                    break;
                case "http":
                    string path = "https://" + context.Request.Url.Host + context.Request.Url.PathAndQuery;
                    context.Response.Status = "301 Moved Permanently";
                    context.Response.AddHeader("Location", path);
                    break;
            }
        }
    }
}
