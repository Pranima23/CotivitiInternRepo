//using LinqDemo;

//List<Student> students = new List<Student>
//{
//    new Student { Id = 1, Name = "Ram", Address = "Kathmandu", Age = 20 },
//    new Student { Id = 2, Name = "Shyam", Address = "America", Age = 18 },
//    new Student { Id = 3, Name = "Hari", Address = "Australia", Age = 22 },
//    new Student { Id = 4, Name = "Joe", Address = "Germany", Age = 40 },
//    new Student { Id = 5, Name = "Alice", Address = "Portugal", Age = 19 }
//};

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