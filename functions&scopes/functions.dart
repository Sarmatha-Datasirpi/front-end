int sub(int p, int q) {          //With Parameters and With Return Type
  var total;
  total = p - q;
  return total;
}

void mul(int r, int s) {        //With Parameters and Without Return Type
  var total;
  total = r * s;
  print("Multiplication of value is $total");
}

String animals() {              //Without Parameters and With Return Type
  String animal = "Cat";
  return animal;
}
void greetings(){               //Without Parameters and Without Return Type
  String greet="Welcome";
  print(greet);
}
void printInfo(String name, String gender, [String title = "Sir/Mam"]) { //Default Value On Positional Parameter
  print("Hello $title $name your gender is $gender.");
}

void printInfos({String? name, String? gender}) {                   //Named Parameters
  print("Hello $name your gender is $gender.");
}

void printInfoys({required String name, required String gender}) {  //Required Parameters
  print("Hello $name your gender is $gender.");
}

void printInfor(String name, String gender, [String? title]) {     //Optional Parameters
  print("Hello $title $name your gender is $gender.");
}

int addition(int n1, int n2) => n1 + n2;
int subtraction(int n1, int n2) => n1 - n2;
int multiplication(int n1, int n2) => n1 * n2;
double division(int n1, int n2) => n1 / n2;


void main(){
 var total=sub(1413,421);
 print(total);
 mul(45,2);
 var c=animals();
 print(c);
 greetings();
 printInfo("Josen", "Male");
 printInfo("Jas", "Male", "Mr.");
 printInfo("Divya", "Female", "Ms.");
 // you can pass values in any order in named parameters.
  printInfos(gender: "Male", name: "Dharson");
  printInfos(gender: "Female", name: "Shara");
  printInfoys(gender: "Male", name: "Sam");
  printInfoys(gender: "Female", name: "Emi");
  printInfor("John", "Male");
  printInfor("John", "Male", "Mr.");
  printInfor("Kavya", "Female", "Ms.");
  int num1 = 100;
  int num2 = 30;

  print("The sum is ${addition(num1, num2)}");
  print("The diff is ${subtraction(num1, num2)}");
  print("The mul is ${multiplication(num1, num2)}");
  print("The div is ${division(num1, num2)}");
  




}
