// Code based on solution from user sudip_inn at https://forums.asp.net/t/2088132.aspx?ASP+Net+MVC+Conditional+Validation+End+date+must+be+greater+than+or+equal+to+start+date

using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Attributes
{
    [AttributeUsage(AttributeTargets.Property)]
    public class EndDateGreaterThanStartDate : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            var model = validationContext.ObjectInstance as Event;

            if (model != null)
            {
                if (model.EndDate != null)
                {
                    if (model.EndDate < model.StartDate)
                    {
                        List<string> memberNames = new();
                        memberNames.Add("EndDate");

                        return new ValidationResult("Validation Failed", memberNames);
                    }
                }
            }

            return ValidationResult.Success;
        }
    }
}
