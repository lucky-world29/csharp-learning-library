








# 📚 C# Library – Beginner Learning Resource

This repository is a **complete beginner-friendly resource** to learn **C# and .NET** step by step.  
It is based on the **CSharp-NewSyllabus** (included in `Notes/`) and provides **theory + code examples** for each topic.

---

## 🔎 Introduction
- **.NET** is a developer platform by Microsoft (launched in 2002) for building applications:  
  Web 🌐, Desktop 💻, Mobile 📱, Cloud ☁️, IoT 🌍, ML 🤖, and Games 🎮.  
- **C#** is the most popular .NET language, designed by Anders Hejlsberg.  
- Modern .NET (since 2020) unifies **.NET Framework** + **.NET Core** into a single cross-platform runtime (`.NET 5+`).

---

## 📖 What You'll Learn
This repo + syllabus covers:

1. **.NET Basics**
   - What is .NET, CLR, CTS, CLS, FCL, CoreFX  
   - Language independence & platform independence  
   - Evolution: **.NET Framework → .NET Core → .NET 5 → .NET 8/9**  
   - Managed vs Unmanaged Applications  

2. **Programming Languages in .NET**
   - C#, F#, VB.NET, IronPython, ML.NET  
   - Why C# is the most popular choice  

3. **C# Fundamentals**
   - Structure of a C# Program  
   - Main Method & Entry Point  
   - Keywords, Identifiers, Case Sensitivity  
   - Variables, Constants, Data Types (Value & Reference)  
   - Operators, Control Statements (if, switch, loops)  

4. **Object-Oriented Programming**
   - Classes, Objects, Members  
   - Encapsulation, Inheritance, Polymorphism, Abstraction  
   - Static vs Non-Static members  
   - Constructors, Destructors  
   - Access Modifiers (public, private, internal, protected, etc.)  

5. **Advanced Topics**
   - Arrays, Strings, Collections (List, Dictionary, Stack, Queue)  
   - Exception Handling  
   - Generics  
   - Delegates, Events, Lambda Expressions  
   - LINQ (Language Integrated Query)  
   - Asynchronous Programming (`async/await`)  

6. **C# Language Evolution**
   - **C# 1.0 → C# 13** features (Generics, LINQ, Records, Pattern Matching, Top-level statements, Raw string literals, etc.)  
   - Compatibility with .NET versions  

7. **Practical Learning**
   - Writing and compiling programs using:
     - Notepad + `csc` compiler  
     - Visual Studio / Visual Studio Code  
   - Step-by-step examples from **Hello World** → **OOP** → **LINQ & Async**  

---

## 📂 Repository Structure
cSharp--library/
│── Notes/ # PDF syllabus & documentation
│── Basics/ # Hello World, Variables, Loops
│── DataTypes/ # Arrays, Strings, Collections
│── OOP/ # Classes, Inheritance, Polymorphism
│── Advanced/ # LINQ, Async, Delegates, Events
│── ModernFeatures/ # C# 8 - 13 features with examples
│── Practice/ # Exercises & problems
│── README.md # Documentation


## 🖥️ Example Code

### Hello World
```csharp
using System;

class First
{
    static void Main()
    {
        Console.WriteLine("My first C# program!");
    }
}
```
Loop Example
```
using System;

class LoopDemo
{
    static void Main()
    {
        for (int i = 1; i <= 10; i++)
        {
            Console.WriteLine(i);
        }
    }
}
```
OOP Example

```
using System;

class Employee
{
    public int Id;
    public string Name;
    public double Salary;

    public void Display()
    {
        Console.WriteLine($"ID: {Id}, Name: {Name}, Salary: {Salary}");
    }
}

class Program
{
    static void Main()
    {
        Employee emp = new Employee { Id = 101, Name = "John", Salary = 50000 };
        emp.Display();
    }
}
```
🛠️ Getting Started

Clone the repo

git clone https://github.com/lucky-world29/cSharp--library.git


Open in Visual Studio / VS Code

Explore examples under each folder

folder

🤝 Contributing

Add examples for topics from the PDF syllabus

Write explanations with comments for beginners

Contribute practice problems


📜 License

Licensed under the BSL-1.0 License.

🌟 Support

If you find this resource useful:

⭐ Star this repo on GitHub

Share with your peers

Keep learning and coding 🚀
