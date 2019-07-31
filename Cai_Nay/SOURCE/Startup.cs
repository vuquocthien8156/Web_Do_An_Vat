using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SOURCE.Startup))]
namespace SOURCE
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
