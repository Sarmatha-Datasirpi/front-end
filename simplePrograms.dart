 import 'dart:io';
void main()
{
	print("Heloo World");
  var firstName = "shara";
  var lastName = "kuber";
  print("Full name is $firstName$lastName");
  var name = "Sara";
  print(name);
  int num1=64; //declaring number1
  int num2=3; //declaring number2
  
  // Calculation
  int sum = num1+num2;
  int diff = num1-num2;
  int mul = num1*num2;
  double div = num1/num2; // It is double because it outputs number with decimal.
  
  // displaying the output
  print("The sum is $sum");
  print("The diff is $diff");
  print("The mul is $mul");
  print("The div is $div");

		for(var i=0;i<=100;i++)
		{
			stdout.write("Good Morg ");
      //print("Bye");
		}
    
    var a=true;
    print(a.runtimeType);
}




// typedef Calculator(int first, int second);

// sum(int m, int n) {
//   print("Result of Sum: ${m + n}");
// }

// void main() {
//   Calculator add = sum;
//   add(100, 20);
// }



