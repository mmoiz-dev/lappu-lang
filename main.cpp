#include <iostream>

extern int yyparse();

int main() {
    std::cout << ">> LappuLang Compiler Running <<\n";
    yyparse();
    return 0;
}
