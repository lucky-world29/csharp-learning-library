using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace LogicQuestion
{
    internal class BinaryNumber
    {

        //METHOD 1
        static void Binary1()
        {
            Console.Write("Enter a number: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            string binary = Convert.ToString(num1, 2);

            Console.WriteLine("Binary (Using Convert): " + binary);
        }
        //MEETHOD 2
        static void Binary2() {
            Console.WriteLine("Enter the Number");
            int num = Convert.ToInt32(Console.ReadLine());

            int[] arr = new int[16];
            int i;
            for (i = 0; num > 0; i++)
            {
                arr[i] = num % 2;
                num = num / 2;
            }
            //
            Console.WriteLine("The Binary Number is ");

            for (i = i - 1; i >= 0; i--)
            {
                Console.Write(arr[i]);
            }
        }
        static void Main()
        {
            Binary1();
            Binary2();
        }
    }
}