import 'dart:io';

double calculateper([double ocup1=0,double ocup2=0,double ocup3=0,double ocup4=0,double ocup5=0])
{
  double totalmarks=ocup1+ocup2+ocup3+ocup4+ocup5;

  double per = totalmarks/5;

  return per;
}

void main()
{

  double ocup1,ocup2,ocup3;

  double marksocup1=78.89;
  double marksocup2=89.34;
  double marksocup3=86.56;

    double successper =  calculateper( ocup1 = marksocup1,
    ocup2= marksocup1,
    ocup3=marksocup3);

    print("success percentage : $successper");

}