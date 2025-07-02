# Lappu Language

A custom programming language with its own lexer, parser, and interpreter, built using C++, Flex, and Bison. This project demonstrates language design, parsing, and basic interpretation.

## 🧑‍💻 Features

- **Custom Syntax**: Define and parse your own language constructs.
- **Lexer and Parser**: Built with Flex (lexer) and Bison (parser generator).
- **Interpreter**: Executes parsed code in C++.
- **Sample Programs**: Includes test scripts to demonstrate language features.

## 🗂️ Project Structure
lappu-lang/
├── lexer.l # Flex lexer definition
├── parser.y # Bison parser definition
├── main.cpp # Interpreter entry point
├── test.lp # Sample Lappu program
├── Makefile # Build instructions
├── README.md
└── ...

## 🛠️ Technologies Used

- **C++**: Interpreter and main logic
- **Flex**: Lexical analysis
- **Bison**: Syntax parsing
- **Make**: Build automation

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

*Built with ❤️ by Muhammad Moiz for The Odin Project and beyond*
# LappuLang - A Custom Programming Language

**LappuLang** is a custom programming language created as part of a **Compiler Construction (CSC-262)** project for the **4th semester** of the **Computer Science** program at **Mehran University of Engineering and Technology**.

## Project Overview

LappuLang is a simple, interpreted programming language designed to demonstrate the basics of compiler construction using tools like **Flex**, **Bison**, and **C++**. The project involves implementing the lexer, parser, and basic language features for a custom programming language. The language currently supports:

* Variable declarations
* Arithmetic operations (addition, subtraction, multiplication, and division)
* Basic control structures (if and while loops)
* Print functionality

At this stage, **variable management** is handled with placeholder behavior, and the **symbol table** for managing variable values has not yet been implemented.

---

## Team Members

* 23BSCS003
* 23BSCS012
* 23BSCS034
* 23-22BSCS042

---

## Features

* **Lexical Analysis**: The language uses Flex to scan and tokenize input programs.
* **Syntax Analysis**: Bison is used to parse the token stream and generate an abstract syntax tree.
* **Basic Arithmetic Operations**: Supports addition, subtraction, multiplication, and division for integer values.
* **Control Structures**: Includes `if` and `while` constructs for flow control.
* **Print Statements**: Can print the result of expressions and variables (currently with a placeholder value).

---

## Requirements

Before running the project, ensure the following tools are installed on your system:

* **Flex** (Lexical Analyzer)
* **Bison** (Parser Generator)
* **g++** (C++ Compiler)
* **make** (Build Automation Tool)

You can install these on Ubuntu via:

```bash
sudo apt update
sudo apt install flex bison g++ make
```

---

## Running the Project

1. Clone the repository to your system.

2. Navigate to the project directory and run:

   ```bash
   make
   ```

3. After compilation, run the program with:

   ```bash
   ./lappulang < test.lp
   ```

   Replace `test.lp` with any `.lp` file you want to test the language with.

---

## Future Improvements

* **Symbol Table**: Implement a **symbol table** to store and retrieve variable values correctly.
* **Error Handling**: Improve error messages and handle edge cases.
* **Advanced Features**: Add support for functions, additional data types (e.g., floats), and more advanced control structures.

---

## Contributing

This project is open for contributions. If you have suggestions, bug fixes, or improvements, feel free to fork the repository and submit a pull request.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
