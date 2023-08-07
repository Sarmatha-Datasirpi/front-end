void main() {
  List<int> value = [1, 2, 3, 4, 5];

  List<String> val = ["Sam", "Joe"];

  var val1 = [1, 2, 3, "Shara"];

  List<int> lst1 = [2, 3, 4, 5, 6, 7];
  List<int> lst2 = [7, 9, 10, 11, 12, 8]; //combining the list
  List<int> merge = [...lst1, ...lst2];

  var list = [10, 20, 30, 40, 50];

  print(value[0]); //access the elements using indexes.

  print(val.length); //length of the list

  print(val1);

  print(merge);

  list.remove(30); //removing the elements from the list
  print(list);

  list.removeRange(0, 3);
  print(list); //removing elements based on range

  list.insert(0, 2);
  print(list); //inserting elements
  
  lst2.sort();
  print(lst2);
}
