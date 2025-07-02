# Lappu Language

**LappuLang** is a custom programming language created as part of a Compiler Construction (CSC-262) project. LappuLang is a simple, interpreted programming language designed to demonstrate the basics of compiler construction using tools like **Flex**, **Bison**, and **C++**. The project involves implementing the lexer, parser, and basic language features for a custom programming language. The language currently supports:

* Variable declarations
* Arithmetic operations (addition, subtraction, multiplication, and division)
* Basic control structures (if and while loops)
* Print functionality

At this stage, **variable management** is handled with placeholder behavior, and the **symbol table** for managing variable values has not yet been implemented.

## 🧑‍💻 Features

- **Lexical Analysis**: The language uses Flex to scan and tokenize input programs.
- **Syntax Analysis**: Bison is used to parse the token stream and generate an abstract syntax tree.
- **Basic Arithmetic Operations**: Supports addition, subtraction, multiplication, and division for integer values.
- **Control Structures**: Includes `if` and `while` constructs for flow control.
- **Print Statements**: Can print the result of expressions and variables (currently with a placeholder value).
- **Sample Programs**: Includes test scripts to demonstrate language features.

## 🗂️ Project Structure

```
lappu-lang/
├── lexer.l # Flex lexer definition
├── parser.y # Bison parser definition
├── main.cpp # Interpreter entry point
├── test.lp # Sample Lappu program
├── Makefile # Build instructions
└── README.md
```

## 🛠️ Technologies Used

- **C++**: Interpreter and main logic
- **Flex**: Lexical analysis
- **Bison**: Syntax parsing
- **Make**: Build automation

## Future Improvements

- **Symbol Table**: Implement a **symbol table** to store and retrieve variable values correctly.
- **Error Handling**: Improve error messages and handle edge cases.
- **Advanced Features**: Add support for functions, additional data types (e.g., floats), and more advanced control structures.

## 📝 How to Run

1. Install Flex, Bison, and a C++ compiler.
2. Build the project: `make`
3. Run the interpreter: `./lappu-lang test.lp`
4. Experiment with your own `.lp` scripts!

## 📚 What I Learned

- Language design and implementation
- Writing lexers and parsers
- Abstract syntax trees and interpretation
- Automating builds with Make

## 🤝 Contributing

This project is for learning purposes, but feel free to fork and experiment!

## 📖 Credits

Built as a personal project to explore language design and compiler construction.

---

*Built with ❤️ by Muhammad Moiz*
