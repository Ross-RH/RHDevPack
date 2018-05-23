using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Deployment.WindowsInstaller;

namespace GitInstall
{
    public class GitInstallActions
    {
        [CustomAction]
        public static ActionResult InstallGit(Session session)
        {
            session.Log("Begin CustomAction1");

            return ActionResult.Success;
        }

        [CustomAction]
        public static ActionResult InstallGitLFS(Session session)
        {
            session.Log("Begin InstallGitLFS");

            return ActionResult.Success;
        }

        [CustomAction]
        public static ActionResult InstallGitHubDesktop(Session session)
        {
            session.Log("Begin InstallGitHubDesktop");

            return ActionResult.Success;
        }

        [CustomAction]
        public static ActionResult ConfigureGitForCacheServer(Session session)
        {
            session.Log("Begin ConfigureGitForCacheServer");

            return ActionResult.Success;
        }

        [CustomAction]
        public static ActionResult ConfigureGitLFS(Session session)
        {
            session.Log("Begin ConfigureGitLFS");

            return ActionResult.Success;
        }




    }
}
