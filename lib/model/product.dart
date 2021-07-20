class Product {
  Product({required this.name, required this.price, required this.imageUrl});

  final String name;
  final double price;
  final String imageUrl;
}

List productList = [
  Product(
      name: 'Product 1 black car with special offer ',
      price: 1000,
      imageUrl: 'assets/images/product01.png'),
  Product(
      name: 'Product 2', price: 1000, imageUrl: 'assets/images/product02.png'),
  Product(
      name: 'Product 3', price: 1000, imageUrl: 'assets/images/product03.png'),
  Product(
      name: 'Product 4', price: 1000, imageUrl: 'assets/images/product04.png'),
  Product(
      name: 'Product 5', price: 1000, imageUrl: 'assets/images/product05.png'),
  Product(
      name: 'Product 6', price: 1000, imageUrl: 'assets/images/product06.png'),
];
