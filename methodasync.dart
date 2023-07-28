void main() {

  print("starting point");
  midpoint();
  print("end point");

}

void midpoint() async {                   //async is used to allow other operation to run before it completes

  String data = await middlefunction();
  print(data);

}
Future<String> middlefunction() {

  return Future.delayed(Duration(seconds: 5), () => "midpoint");

}