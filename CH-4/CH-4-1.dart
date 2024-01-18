import 'dart:io';

// cube of number //
int calculateCube(int number)
{
  return number * number * number;
}

void main()
{
  int inputnumber = 2;
  int cube = calculateCube(inputnumber);

  print("the cube of $inputnumber is : $cube");
}