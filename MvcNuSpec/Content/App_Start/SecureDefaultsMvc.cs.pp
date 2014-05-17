using System;
using System.Web.Mvc;

[assembly: WebActivatorEx.PreApplicationStartMethod(
    typeof($rootnamespace$.App_Start.SecureDefaultsMvc), "PreStart")]

namespace $rootnamespace$.App_Start {
    public static class SecureDefaultsMvc {
        public static void PreStart() {
            MvcHandler.DisableMvcResponseHeader = true;
        }
    }
}