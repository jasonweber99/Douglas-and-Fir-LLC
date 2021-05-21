using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace MIVisitorCenter.BDDTests.Steps
{
    [Binding]
    public sealed class ItineraryBuilderSteps
    {
        private readonly ScenarioContext _ctx;
        private string _hostBaseName = @"https://localhost:5001/Itinerary/ItineraryBuilder";
        private readonly IWebDriver _driver;

        public class TestBusiness
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public int Description { get; set; }
        }

        public class TestAddress
        {
            public int Id { get; set; }
            public string StreetAddress { get; set; }
            public string City { get; set; }
            public string State { get; set; }
            public int Zip { get; set; }
        }

        public class TestCategory
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }

        public class TestBusinessCategory
        {
            public int Id { get; set; }
            public TestBusiness Business { get; set; }
            public TestCategory Category { get; set; }
        }

        public ItineraryBuilderSteps(ScenarioContext scenarioContext, IWebDriver driver)
        {
            _ctx = scenarioContext;
            _driver = driver;
        }

        [Given(@"the following businesses exist")]
        public void GivenTheFollowingBusinessesExist(Table table)
        {
            IEnumerable<TestBusiness> businesses = table.CreateSet<TestBusiness>();
            _ctx["Businesses"] = businesses;
        }
        
        [Given(@"the following addresses exist")]
        public void GivenTheFollowingAddressesExist(Table table)
        {
            IEnumerable<TestAddress> addresses = table.CreateSet<TestAddress>();
            _ctx["Addresses"] = addresses;
        }
        
        [Given(@"the following categories exist")]
        public void GivenTheFollowingCategoriesExist(Table table)
        {
            IEnumerable<TestCategory> categories = table.CreateSet<TestCategory>();
            _ctx["Categories"] = categories;
        }
        
        [Given(@"I am on the Itinerary Builder Page")]
        public void GivenIAmOnTheItineraryBuilderPage()
        {
            _driver.Navigate().GoToUrl(_hostBaseName);
        }
        
        [When(@"I create an itinerary with (.*) days")]
        public void WhenICreateAnItineraryWithDays(string days)
        {
            IWebElement numDays = _driver.FindElement(By.Id("form-stacked-select"));
            SelectElement selectDays = new SelectElement(numDays);
            selectDays.SelectByValue(days);
            IWebElement button = _driver.FindElement(By.ClassName("uk-button"));
            button.Click();
        }
        
        [Then(@"I will see an itinerary with (.*) days displayed on the page")]
        public void ThenIWillSeeAnItineraryWithDaysDisplayedOnThePage(int days)
        {
            IReadOnlyList<IWebElement> dayTitles = _driver.FindElements(By.TagName("h3"));
            Assert.That(dayTitles.Count, Is.EqualTo(days));
        }
    }
}
