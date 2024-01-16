import 'dart:io';

void main()
{
  int n,e=0;
  
  stdout.write("enter elements size: ");
  n = int.parse(stdin.readLineSync()??"0");

  List a =List.generate(n, (i) {
      stdout.write("a[$i]:");
      return  int.parse(stdin.readLineSync()??"0");
    });

    a.forEach((element) {
      if(e<0){
        e == element ;
      }
    });
  stdout.write("$e");
    
}