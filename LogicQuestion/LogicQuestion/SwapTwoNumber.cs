using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicQuestion
{
    internal class SwapTwoNumber
    {
        static void Main()
        {
            Console.WriteLine("Write 1st number");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Write 2nd number");
            int num2 = Convert.ToInt32(Console.ReadLine());
            //
            Console.WriteLine("Before Swap");
            Console.WriteLine("Number 1 is " + num1);
            Console.WriteLine("Number 2 is " + num2);

            num1 = num1 + num2;
            num2 = num1 - num2;
            num1= num1- num2;
            //
            Console.WriteLine("After Swap");
            Console.WriteLine("Number 1 is "+num1);
            Console.WriteLine("Number 2 is "+num2);
        }
    }
}
