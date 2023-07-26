void main() {
//Declaring Variables
  String name = "Shara";
  String address = "TVL";
  int phno = 8734567211;
  double weight = 54.3;
  num age= 22; // used to store any types of numbers
  num height = 5.7;
  bool isMarried = false;
  var country = "India";

// printing variables value
  print("Name is $name");
  print("Address is $address");
  print("Phone Number is $phno");
  print("Weight is $weight");
  print("Age is $age");
  print("Height is $height");
  print("Married Status is $isMarried");
  print("Country is $country");

  dynamic digit = 5;
  print('Value of: $digit');
  print('Datatype of variable $digit is :${digit.runtimeType}');
  digit = 'five';
  print('Value of: $digit');
  print('Datatype of variable $digit is :${digit.runtimeType}');

  const pi = 3.14;
//pi = 4.23; // not possible
  print("Value of PI is $pi");

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere
  print("Atmosphere is ${atm}");

  final val = 12;
  print(val);
//val =23; // not possible

//final dig1= 12;
//const num2 = 13;
//dig1 = num2; // not possible

// Not standard way
//var fullname = "John Doe";
// Standard way
  var fullName = "Priya Kumar";
  print(fullName);

  late String description;
//Declaring a non-nullable variable that’s initialized after its declaration.
//Lazily initializing a variable.
  description = 'Pleasure!';
  print(description);
}
