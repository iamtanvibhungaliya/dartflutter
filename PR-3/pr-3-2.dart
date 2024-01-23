import 'dart:io';

class Customer {
  int cust_Id;
  String cust_Name;
  String cust_Contact;
  List<Product> custCart = [];

  Customer(this.cust_Id, this.cust_Name, this.cust_Contact);

  double calculateTotalAmount() {
    double totalAmount = 0;

    for (var product in custCart) {
      totalAmount += (product.pro_price * product.pro_qty);
    }

    // Apply discount criteria
    if (totalAmount >= 500 && totalAmount < 1500) {
      totalAmount *= 0.9; 
       }
    else if (totalAmount >= 1500 && totalAmount < 3500) {
      totalAmount *= 0.8; 
    } 
    else if (totalAmount >= 3500) {
      totalAmount *= 0.75; 
    }
     return totalAmount;
  }

}

class Product {
  int pro_id;
  String pro_name;
  int pro_qty;
  double pro_price;

  Product(this.pro_id, this.pro_name, this.pro_price, this.pro_qty);
}_

void main() {
  List<Customer> customers = [];

  // Instantiate customers
  Customer customer1 = Customer(1, 'CUSTOMER1', '123-456-7890');
  Customer customer2 = Customer(2, 'CUSTOMER2', '098-765-4321');

  customers.add(customer1);
  customers.add(customer2);

  // Simulate product selection and addition to the cart
  customer1.custCart.add(Product(101, 'ProductA', 2, 500));
  customer1.custCart.add(Product(102, 'ProductB', 1, 1000));

  customer2.custCart.add(Product(201, 'ProductC', 3, 700));
  customer2.custCart.add(Product(202, 'ProductD', 2, 1200));

  // Display customer details and billing information

  print("==========customer information and bill =======");
  for (var customer in customers) {

    print('Customer ID: ${customer.cust_Id}');
    print('Customer NAME: ${customer.cust_Name}');
    print('Customer CONTECT : ${customer.cust_Contact}');

    print('Products in Cart:');
    for (var product in customer.custCart) {

      print('Product ID: ${product.pro_id}, Name: ${product.pro_name}, Quantity: ${product.pro_qty}, Price: ${product.pro_price}');
    }

    double totalAmount = customer.calculateTotalAmount();
    print('Total Amount: $totalAmount');

  
    print('Discount Amount: ${customer.calculateTotalAmount() - totalAmount}');
   
  }
}