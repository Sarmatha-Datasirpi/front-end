void main() {
//~Numbers Type

  int num1 = 100; // without decimal point.
  double num2 = 130.2; // with decimal point.
  num num3 = 50;
  num num4 = 50.4;
  num sum = num1 + num2 + num3 + num4;
  print("$num1");
  print("$num2");
  print("Num 3 is $num3");
  print("Num 4 is $num4");
  print("Sum is $sum");

  double prize = 1130.2232323233233; // valid.
  print(prize.toStringAsFixed(2));

//~String Type

  String cmpyName = "Datasirpi";
  String location = "Tvl";
  print("Company name is $cmpyName and address is $location");

  bool SameOrNot = (cmpyName == location);
  print(SameOrNot);

//*Multi Line Using Single Quotes
  String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

//*Multi Line Using Double Quotes
  String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";
  print("Multiline text is $multiLineText");
  print("Other multiline text is $otherMultiLineText");

//*Using \n and \t
  print("I am from \nTcr.");
  print("I am from \tTvl.");

//*RawString
  num prizes = 10;
  String withoutRawString =
      "The value of prize is \t $prizes"; // regular String
  String withRawString = r"The value of prize is \t $prize"; // raw String

  print("Without Raw: $withoutRawString"); // regular result
  print("With Raw: $withRawString"); // with raw result

//*Type Conversion
  String strvalue = "1";
  print("Type of strvalue is ${strvalue.runtimeType}");
  int intvalue = int.parse(strvalue);
  print("Value of intvalue is $intvalue");
  print("Type of intvalue is ${intvalue.runtimeType}");

  String strvalues = "1.17337";
  print("Type of strvalue is ${strvalues.runtimeType}");
  double doublevalue = double.parse(strvalues);
  print("Value of doublevalue is $doublevalue");
  print("Type of doublevalue is ${doublevalue.runtimeType}");

  int one = 1;
  print("Type of one is ${one.runtimeType}");
  String oneInString = one.toString();
  print("Value of oneInString is $oneInString");
  print("Type of oneInString is ${oneInString.runtimeType}");

  double number1 = 10.01;
  int number2 = number1.toInt();
  print("The value of num1 is $num1. Its type is ${number1.runtimeType}");
  print("The value of num2 is $num2. Its type is ${number2.runtimeType}");

//~Boolean Type

  bool isMarried = true;
  print("Married Status: $isMarried");

//~List Type

//!List 1st method

  List<String> names = ["shara", "Jose", "Mani", ""];
  print("Value of names is $names");
  print("Value of names[0] is ${names[0]}"); // index 0
  print("Value of names[1] is ${names[1]}"); // index 1
  print("Value of names[2] is ${names[2]}"); // index 2
  // Finding Length of List
  int length = names.length;
  print("The Length of names is $length");

//!List 2nd method
//*tried to add value without grow we cannot add
  var element = List.filled(0, 0);
  // element.add(10); we cannot add because length is 0 , non growable
  print(element);
  //or
  var grow = List.filled(0, 0, growable: true);
  grow.add(10);
  print(grow);
//* passing string in fill
//?if we pass String need to pass string only after
  var use = List.filled(5, " ");
  print(use);

//*Trying to add value without growable
  var elements = List.filled(5, 0, growable: true);
  elements.add(10);
  print(elements);

//~Set Type

  Set<String> weekday = {"Sat", "Mon", "Tue", "Thu", "Fri", "Sun"};
  print(weekday);

//~Map Type

  Map<String, String> myDetails = {
    'name': 'Sharmatha',
    'address': 'Tvl',
    'fathername': 'Kuberamani'
  };

  print(myDetails['fathername']);

//~Runes Type

//*Emooji Access
  var heart_rune = '\u2665';
  var theta_rune = '\u{1f600}';
  print(heart_rune);
  print(theta_rune);

//*Unicode values access
  String value = "c";
  print(value.runes);
}
