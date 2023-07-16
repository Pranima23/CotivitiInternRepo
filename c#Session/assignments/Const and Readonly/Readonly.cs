public class Square
{
    readonly float Width = 4;
    public Square() { }
    public Square(float width)
    {
        Width = width;
    }
    public void CalculateArea()
    {
        System.Console.WriteLine
        ($"Area = {Width * Width}");
    }
    static void Main(string[] args)
    {
        Square s1 = new Square();
        System.Console.WriteLine
        ("Square s1");
        s1.CalculateArea();

        Square s2 = new Square(10);
        System.Console.WriteLine
        ("Square s2");
        s2.CalculateArea();
    }
}


