import 'dart:io';

void main()
{
    int n,i,n1,choice;

    stdout.write("enter n : ");
    n=int.parse(stdin.readLineSync()??'0');

    List a =List.generate(n, (i) {
      stdout.write("a[i]:");
      n = int.parse(stdin.readLineSync()??"0");
    });

    a.forEach((element) {
      stdout.write("$element");
      print(" ");
    });

    do{
      print("0) exit");
      print("1) instert");
      print("2) delete");
      print("3) update");
      print("4) view");

      stdout.write("enter your choice : ");
      choice = int.parse(stdin.readLineSync()??"0");

      switch(choice){
        case 1:
                stdout.write("insert index value : ");
                i = int.parse(stdin.readLineSync()??"0");

                print("insert value  : ");
                n1 = int.parse(stdin.readLineSync()??"0");

                a.insert(i, n1);
                print("$a");
                break;

         case 2:
                stdout.write("delete num  : ");
                n1 = int.parse(stdin.readLineSync()??"0");

                a.remove(n1);
                print("$a");
                break;

        case 3:
                stdout.write("update value index  : ");
                i = int.parse(stdin.readLineSync()??"0");

                print("update value  : ");
                n1 = int.parse(stdin.readLineSync()??"0");

                a.replaceRange(i,n1);
                print("$a");
                break;

        case 4:
              stdout.write("$a");
        break;

        case 0:
        break;
     }
    }while(choice != 0);
}