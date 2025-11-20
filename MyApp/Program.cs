using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var calc = new Calculator();
            Console.WriteLine($"5 + 3 = {calc.Add(5, 3)}");
            int age = 3;
            Console.WriteLine(calc.Multiply(2,age));
        }
    }
}
