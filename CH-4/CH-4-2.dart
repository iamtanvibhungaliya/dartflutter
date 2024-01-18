import 'dart:io';

//functions as expression which return unique name of list//
List<String>

getuniquename(List<String>names) => List<String>.from(Set<String>.from(names));

void main()
{
  List<String>inputname = ["yash","aman","akbar","jay","kirtan"];

  List<String> uniquename = getuniquename(inputname);

  print("real name : $inputname");
  print("unique name : $uniquename");
  
}