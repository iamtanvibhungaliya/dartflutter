import 'dart:io';

void main()
{
  int r,c;

  stdout.write("enter row : ");
  r = int.parse(stdin.readLineSync()??"0");
  stdout.write("enter colum : ");
  c = int.parse(stdin.readLineSync()??"0");

  print("===elments of a===");
  List<List<int>> a = List.generate(r, (i) {
    return List.generate(c, (ci) {
      stdout.write("a[$i][$ci]: ");
      return int.parse(stdin.readLineSync()??"0");
    });
  });

  a.forEach((element) {
    element.forEach((value) {
      stdout.write("$value");
     });
     print(" ");
  });

  
  print("===elments of b ===");
  
  List<List<int>> b = List.generate(r, (i) {
    return List.generate(c, (ci) {
      stdout.write("b[$i][$ci]: ");
      return int.parse(stdin.readLineSync()??"0");
    });
  });

  b.forEach((element) {
    element.forEach((value) {
      stdout.write("$value");
     });
     print(" ");
  });

  print("=== sum of a and b ===");

  List<List<int>> sum  = List.generate(r, (i) {
    return List.generate(c, (ci) {
      stdout.write("${a[i][ci] +b[i][ci]}");
      return  int.parse(stdin.readLineSync()??"0");
    });
    });

    sum.forEach((element) {
      element.forEach((value) {
        stdout.write("$value");
       });
       print(" ");
    });

}