void exampleFunction() {
  int x = 10;

  void innerFunction() {
    int y = 20;
    print(x); // Accessible because 'x' is in the outer (lexical) scope of 'innerFunction'
    print(y); // Accessible because 'y' is in the current (lexical) scope of 'innerFunction'
  }

  innerFunction();
  print(x); // This line would cause an error since 'y' is not in the scope of 'exampleFunction'
}

void main() {
  exampleFunction();
}
