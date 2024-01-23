import 'dart:io';

int getSum({required List<int> list})
 {
 int sum = 0;

    for (int i = 0; i < list.length; i++) {
    sum += list[i];
    }

 return sum;

}
void main() {
 List <int> list = [11,22,33,44,55];
 int sum = getSum(list:list);
 print('Sum of all elements of list is $sum');
}