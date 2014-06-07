using System;
using System.Collections.Generic;
using System.Text;
using System.Web;

namespace SecureDefaultsSsl
{
    public class SslOnlyModule : IHttpModule
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

            if (context.Request.Url.Scheme == "http")
            {
                string path = "https://" + context.Request.Url.Host + context.Request.Url.PathAndQuery;
                context.Response.Status = "301 Moved Permanently";
                context.Response.AddHeader("Location", path);
            }
        }
    }
}
