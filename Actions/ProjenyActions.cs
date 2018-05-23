using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Deployment.WindowsInstaller;

namespace Actions
{
    public class ProjenyActions
    {
        [CustomAction]
        public static ActionResult InstallProjeny(Session session)
        {
            session.Log("Installing Projeny");

            return ActionResult.Success;
        }

        [CustomAction]
        public static ActionResult ConfigureProjenyPath(Session session)
        {
            session.Log("Configuring Projeny Path");

            return ActionResult.Success;
        }

        public static ActionResult InstallProjenyBootstrapper(Session session)
        {
            session.Log("Installing Bootstrapper");

            return ActionResult.Success;
        }
    }
}
