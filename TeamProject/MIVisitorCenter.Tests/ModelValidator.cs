
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MIVisitorCenter.Tests
{
    public class ModelValidator
    {
        public List<ValidationResult> Validations { get; private set; }
        public bool Valid { get; private set; } = false;

        public ModelValidator(object model)
        {
            Validations = new List<ValidationResult>();
            ValidationContext vctx = new ValidationContext(model);
            Valid = Validator.TryValidateObject(model, vctx, Validations, true);
        }

        /// <summary>
        /// Check to see if the given member name, i.e. property name, was the cause of a validation result.
        /// The version written here does not also check the reason why it failed.  That would be in the ErrorMessage
        /// and would require parsing or listing that.  That's something that could be added to improve this class.
        /// </summary>
        /// <param name="member">The name of the member to check for, i.e. "Id", "Title", ...</param>
        /// <returns>True if the member caused a validation result, False if it was not found among the results</returns>
        public bool ContainsFailureFor(string member)
        {
            bool result = false;
            foreach (ValidationResult vr in Validations)
            {
                bool found = false;
                foreach (string term in vr.MemberNames)
                {
                    if (member.Equals(term))
                    {
                        found = true;
                        result = true;
                        break;
                    }
                }
            }
            return result;
        }

        // The LINQ method Aggregate is the same as functional programming's "fold" or "reduce" function
        // Get all errors in a single string
        public string GetAllErrors() =>
                Validations.Aggregate("", (accumulator, validation) => accumulator + $",{validation.ErrorMessage}");


    }
}