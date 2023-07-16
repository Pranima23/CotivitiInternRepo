using NUnit.Framework;
using UnitTestingDemo;

namespace UnitTestingDemoTests
{
    [TestFixture]
    public class CalculatorTests
    {
        private Calculator _calculator;

        [SetUp]
        public void Setup()
        {
            _calculator = new Calculator();
        }

        //[Test]
        //public void Add_Provide2Integers_ReturnAddedValue()
        //{
        //    // Arrange
        //    Calculator cal = new Calculator();
        //    int a = 2;
        //    int b = 3;
        //    int expectedResult = 5;

        //    // Act
        //    var result = cal.Add(a, b);

        //    // Assert
        //    //Assert.AreEqual(expectedResult, result);
        //    Assert.That(expectedResult, Is.EqualTo(result));
        //    Assert.IsInstanceOf<int>(result);
        //}

        [TestCase(1, 1, 2)]
        [TestCase(3, 4, 7)]
        [TestCase(100, 200, 300)]
        public void Add_Provide2Integers_ReturnAddedValue(int a, int b, int expected)
        {
            // Act
            var result = _calculator.Add(a, b);

            // Assert
            //Assert.AreEqual(expectedResult, result);
            Assert.That(expected, Is.EqualTo(result));
            Assert.IsInstanceOf<int>(result);
        }

        [TestCase(1, 1, 0)]
        [TestCase(3, 4, -1)]
        [TestCase(100, 200, -100)]
        public void Subtract_Provide2Integers_ReturnSubtractedValue(int a, int b, int expected)
        {
            // Act
            var result = _calculator.Subtract(a, b);

            // Assert
            //Assert.AreEqual(expectedResult, result);
            Assert.That(expected, Is.EqualTo(result));
            Assert.IsInstanceOf<int>(result);
        }

        [TearDown]
        public void TearDown()
        {

        }
    }
}
