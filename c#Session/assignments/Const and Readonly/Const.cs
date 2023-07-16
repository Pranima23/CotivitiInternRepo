public class Circle
{
    const float PI = 3.14f;
    float Radius;
    Circle(float radius)
    {
        Radius = radius;
    }
    public void CalculateArea()
    {            
        Console.WriteLine($"Area = {PI * Radius * Radius}");
    }
    static void Main(string[] args)
    {
        Circle c1 = new Circle(3);
        Console.WriteLine("Circle c1");
        c1.CalculateArea();

        Circle c2 = new Circle(4);
        Console.WriteLine("Circle c2");
        c2.CalculateArea();
    }
}
    


