//simple calculater //
import 'dart:io';

 double Calculate(double n1,double n2,int choice){
    double result=0;

    switch(choice){
      case 1:
        result = n1+n2;
        break;

      case 2:
        result = n1-n2;
        break;

      case 3: 
        result = n1*n2;
        break;

      case 4: 
        result = n1/n2;
        break;

      default:
        print("invalid input !!");
      }

      return result;
  }

void main()
{
  double n1,n2,result;

  int choice;

  stdout.write("enter the first number : ");
  n1 = double.parse(stdin.readLineSync()??"0");
  stdout.write("enter the second number : ");
  n2 = double.parse(stdin.readLineSync()??"0");

  stdout.write("enter 1 to 4 for + , - , * ,/");
  choice =int.parse(stdin.readLineSync()??"0");

  result = Calculate(n1, n2, choice );
  print("result : $result");

}