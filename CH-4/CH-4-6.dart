import 'dart:io';

//class parent//
class A{
  late int a;

  void set setA(int a ) => this.a = a;

  void getA()
  {
    print("a: $a");
  }
}

//class child//
class B extends A{
  late int b;

  void set setB(int b ) => this.b = b;

  void getB()
  {
    print("b: $b");
  }
}

class C extends B{
  late int c;

  void set setC(int c ) => this.c = c;

  void getC()
  {
    print("c: $c");
  }
}

void main()
{
  C  c = C();

  c
  ..setA=11
  ..setB=22
  ..setC=33
  ..getA()
  ..getB()
  ..getC();
}