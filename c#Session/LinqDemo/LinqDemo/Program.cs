using LinqDemo;

int[] nums = new int[5];
nums[0] = 1;
nums[1] = 3;
nums[2] = 4;
nums[3] = 10;
nums[4] = 6;

int max = nums[0];
for (int i = 1; i < nums.Length; i++)
{
    if (max < nums[i])
    {
        max = nums[i];
    }
}

int maxValue = nums.Max();

//Console.WriteLine(max + " " + maxValue);


List<Student> students = new List<Student>
{
    new Student { Id = 1, Name = "Ram", Address = "Kathmandu", Age = 20 },
    new Student { Id = 2, Name = "Shyam", Address = "Kathmandu", Age = 18 },
    new Student { Id = 3, Name = "Hari", Address = "Australia", Age = 22 },
    new Student { Id = 4, Name = "Joe", Address = "Germany", Age = 40 },
    new Student { Id = 5, Name = "Alice", Address = "Germany", Age = 19 }
};

var ascendingOrderAge = students.OrderBy(s => s.Age);
var ascendingOrderName = students.OrderBy(s => s.Name);

var descendingOrderAge = students.OrderByDescending(s => s.Age);
var descendingOrderName = students.OrderByDescending(s => s.Name);

//foreach (var student in ascendingOrderAge)
//{
//    Console.WriteLine($"{student.Name} {student.Age}");
//}

//foreach (var student in ascendingOrderName)
//{
//    Console.WriteLine($"{student.Name} {student.Age}");
//}

//foreach (var student in descendingOrderAge)
//{
//    Console.WriteLine($"{student.Name} {student.Age}");
//}

//foreach (var student in descendingOrderName)
//{
//    Console.WriteLine($"{student.Name} {student.Age}");
//}

//IEnumerable<Student> olderStudents = students.Where(student => student.Age > 20);

//foreach (Student student in olderStudents)
//{
//    Console.WriteLine(student.Name);
//}

//IEnumerable<string> studentNames = students.Select(s => s.Name);

//foreach (string name in studentNames)
//{
//    Console.WriteLine(name);
//}

//List<Person> persons = students.Select(s => new Person { Name = s.Name, Address = s.Address }).ToList();

//foreach (Person person in persons)
//{
//    Console.WriteLine(person.Name);
//}

//double avgAge = students.Average(x => x.Age);

//Console.WriteLine(avgAge);
//Console.WriteLine(students.Count);
//Console.WriteLine(students.Min(x => x.Age));
//Console.WriteLine(students.Max(x => x.Age));
//Console.WriteLine(students.Sum(x => x.Age));

//IEnumerable<Student> olderStudents = students.Where(student => student.Age > 20);

//IEnumerable<Student> olderStudents2 = from student in students
//                                      where student.Age > 20
//                                      select student;

//List<Person> persons = students.Select(s => new Person { Name = s.Name, Address = s.Address }).ToList();
//List<Person> persons2 = (from student in students
//                         select new Person { Name = student.Name, Address = student.Address }).ToList();

//var groups = students.GroupBy(x => x.Address);

//foreach (var group in groups)
//{
//    Console.WriteLine($"Group: {group.Key}");

//    foreach (var student in group)
//    {
//        Console.WriteLine($"{student.Name}");
//    }
//    Console.WriteLine();
//}

var age22 = students.FirstOrDefault(s => s.Age == 22);

var age23 = students.SingleOrDefault(s => s.Age == 23);

var age24 = students.Find(s => s.Age == 24);
