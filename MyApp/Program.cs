using System;

namespace MyApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var calc = new Calculator();
            Console.WriteLine($"5 + 3 = {calc.Add(8, 3)}");
            int age = int.Parse(Console.ReadLine());
            Console.WriteLine(calc.Multiply(2,age));
        }
    }
}
