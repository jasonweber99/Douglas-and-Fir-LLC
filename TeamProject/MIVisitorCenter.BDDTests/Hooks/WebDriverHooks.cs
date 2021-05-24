using BoDi;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;

namespace MIVisitorCenter.BDDTests.Hooks
{
    // Use DI to solve the problem of each step definition class needing to create/use
    // the same copy of the web driver, i.e. we need to share it since it represents the same browser session.
    // See: https://stackoverflow.com/questions/58390535/how-to-properly-manage-and-access-webdriver-instances-to-avoid-problems-with-par

    [Binding]
    public class WebDriverHooks
    {
        private readonly IObjectContainer container;

        public WebDriverHooks(IObjectContainer container)
        {
            this.container = container;
        }

        [BeforeScenario]
        public void CreateWebDriver()
        {
            FirefoxOptions options = new FirefoxOptions();
            options.AcceptInsecureCertificates = true;
            // This version of the constructor was needed if using the SpecFlow+ testrunner rather than NUnit test runner
            // I'm not sure why but I needed to tell it where the geckodriver folder was or it wouldn't run
            //FirefoxDriver driver = new FirefoxDriver("C:\\Users\\morses", options);
            FirefoxDriver driver = new FirefoxDriver(options);

            //ChromeOptions options = new ChromeOptions();
            //options.AcceptInsecureCertificates = true;
            //ChromeDriver driver = new ChromeDriver(options);

            // Make 'driver' available for DI
            container.RegisterInstanceAs<IWebDriver>(driver);
        }

        [AfterScenario]
        public void DestroyWebDriver()
        {
            var driver = container.Resolve<IWebDriver>();

            if (driver != null)
            {
                driver.Quit();
                driver.Dispose();
            }
        }
    }
}
