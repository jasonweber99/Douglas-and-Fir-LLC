using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using TechTalk.SpecFlow;

namespace MIVisitorCenter.BDDTests.Steps
{
    [Binding]
    public sealed class LodgingDistanceSteps
    {
        private readonly ScenarioContext _ctx;
        private string _hostBaseName = @"https://localhost:5001/Itinerary/ItineraryBuilder";
        private readonly IWebDriver _driver;

        public class TestBusiness
        {
            public string Name { get; set; }
        }

        public LodgingDistanceSteps(ScenarioContext scenarioContext, IWebDriver driver)
        {
            _ctx = scenarioContext;
            _driver = driver;
        }

        [Then(@"a lodging option is generated for me")]
        public void ThenALodgingOptionIsGeneratedForMe()
        {
            IWebElement name = _driver.FindElement(By.Id("lodgingName"));
            Assert.That(name.Text, Is.Not.Null);
            _ctx["lodging"] = name.Text;
        }
        
        [Then(@"the restaurant chosen for breakfast will be the closest restaurant")]
        public void ThenTheRestaurantChosenForBreakfastWillBeTheClosestRestaurant()
        {
            string breakfast = _driver.FindElement(By.Id("breakfastName")).Text;
            string lodging = _ctx["lodging"].ToString();
            switch (lodging)
            {
                case "College Inn Monmouth":
                    Assert.That(breakfast, Is.EqualTo("Muchas"));
                    break;
                case "MaMere's Guest House":
                    Assert.That(breakfast, Is.EqualTo(lodging));
                    break;
                case "The Independence Hotel":
                    Assert.That(breakfast, Is.EqualTo("Territory Restaurant"));
                    break;
                case "Airlie Farm Bed & Breakfast":
                    Assert.That(breakfast, Is.EqualTo(lodging));
                    break;
                case "Bicycle Boater Campground":
                    Assert.That(breakfast, Is.EqualTo("Territory Restaurant"));
                    break;
            }
        }
    }
}
