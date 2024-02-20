import 'dart:io';

class Item {
  int item_Number;
  String item_Name;
  int item_quantity;
  double tax;
  double discount;

  Item(
      {required this.item_Number,
      required this.item_Name,
      required this.item_quantity,
      required this.tax,
      required this.discount});
}

void main() {
  List<Item> items = [];

  void addItemRecord() {
    print("Enter Item Number:");
    int itemNumber = int.parse(stdin.readLineSync()!);

    print("Enter Item Name:");
    String itemName = stdin.readLineSync()!;

    print("Enter Quantity:");
    int quantity = int.parse(stdin.readLineSync()!);

    print("Enter Tax:");
    double tax = double.parse(stdin.readLineSync()!);

    print("Enter Discount:");
    double discount = double.parse(stdin.readLineSync()!);

    Item newItem = Item(
        item_Number: itemNumber,
        item_Name: itemName,
        item_quantity: quantity,
        tax: tax,
        discount: discount);

    items.add(newItem);
    print("Item Record Added Successfully!");
  }

  void displayRecordsAscendingOrder() {
    items.sort((a, b) => a.item_Number.compareTo(b.item_Number));

    print("\nAll Records in Ascending Order (by Item Number):");
    for (Item item in items) {
      print("Item Number: ${item.item_Number}");
      print("Item Name: ${item.item_Name}");
      print("Quantity: ${item.item_quantity}");
      print("Tax: ${item.tax}");
      print("Discount: ${item.discount}");
      print("===================Items================");
    }
  }

  while (true) {
    print("\n1. Add Item Record");
    print("2. Display Records in Ascending Order");
    print("3. Exit");
    print("Enter your choice :");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        addItemRecord();
        break;
      case '2':
        displayRecordsAscendingOrder();
        break;
      case '3':
        print("Exiting program.");
        return;
      default:
        print("Invalid option. Please try again.");
    }
  }
}