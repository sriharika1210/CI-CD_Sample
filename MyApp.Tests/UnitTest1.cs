namespace MyApp.Tests;

public class UnitTest1
{
    [Fact]
    public void Add_ShouldReturnCorrectSum()
    {
        var calc = new Calculator();
        Assert.Equal(8, calc.Add(5, 3));
    }

    [Fact]
    public void Subtract_ShouldReturnCorrectDifference()
    {
        var calc = new Calculator();
        Assert.Equal(2, calc.Subtract(5, 3));
    }
}
