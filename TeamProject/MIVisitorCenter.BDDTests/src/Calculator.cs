using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MIVisitorCenter.BDDTests.src
{
    public class Calculator
    {
        public int FirstNumber { get; set; }
        public int SecondNumber { get; set; }

        public int Add()
        {
            //throw new NotImplementedException();
            return FirstNumber + SecondNumber;
        }

        public int Add(int left, int right) => left + right;

        public int Subtract()
        {
            //throw new NotImplementedException();
            return FirstNumber - SecondNumber;
        }

        public int Subtract(int left, int right) => left - right;

        public int Multiply()
        {
            //throw new NotImplementedException();
            return FirstNumber * SecondNumber;
        }

        public int Multiply(int left, int right) => left * right;
    }
}
