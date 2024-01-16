import 'dart:io';

void main()
{
    int r, c, choice, sum = 0;

  stdout.write("enter row  : ");
  r = int.parse(stdin.readLineSync()??"0");
  stdout.write("enter colum : ");
  c = int.parse(stdin.readLineSync()??"0");

    List<List<int>> a = List.generate(r, (i) {
    return List.generate(c, (ci) {
      stdout.write("a[$i][$ci]: ");
      return int.parse(stdin.readLineSync()??"0");
    });
  });

  do{
    print("===enter===");
    print("1) sum of all elments : ");
    print("2) sum of specific row : ");
    print("3) sum of specific colum  : ");
    print("4) sum of diagonal elments : ");
    print("5) sum of anti-diagonal elments : ");
    print("0) exits");

    stdout.write("enter your choice : ");
    choice = int.parse(stdin.readLineSync()??"0");

    switch(choice){
      case 1: 
      List.generate(r, (i){
        return List.generate(c, (ci) {
          sum += a[r][c];
        });
      });
      print("sum :$sum");
      break;

      case 2:
        int row = 0;
        List.generate(r, (i) {
          return List.generate(c, (ci) {
            sum += a[r][c];
          });
        });
        print("sum : $sum");
        break;

      case 3 :
          int column = 0;
          List.generate(c, (ci) {
            return List.generate(c, (ci) {
              sum += a[r][c];
            });
          });
          print("sum:$sum");
          break;

      case 4:
          List.generate(r, (i) {
            return List.generate(c, (ci) {
              if(i==ci){
                sum += a[r][c];
              }
            });
          });
          print("sum : $sum ");
          break;

      case 5:
          List.generate(r, (i) {
            return List.generate(c, (ci) {
              if(i +ci == i-1){
                sum += a[r][c];
              }
            });
          });
          print("sum : $sum");
          break;
  }
  }while(choice != 0);
}