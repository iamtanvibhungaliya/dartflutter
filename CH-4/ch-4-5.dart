import 'dart:io';

double sum(double n1 , double n2,double n3){
  return n1+n2+n3;
}

void main()
{
  double result = sum(5, 10, 15);

  print("sum : $result");
}