import 'dart:ui';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

class ProductColor {
  final Color color;
  final int id;
  final String image;

  ProductColor({
    required this.color,
    required this.id,
    required this.image,
  });
}

// OrderItem Model
// class OrderItem {
//   final int id;
//   final int orderId;
//   final Product product;
//   final int quantity;
//   final double price;
//   final double total;

//   OrderItem({
//     required this.id,
//     required this.orderId,
//     required this.product,
//     required this.quantity,
//   })  : price = product.price.toDouble(),
//         total = product.price * quantity.toDouble();
// }
class CartItem {
  final Product product; // The product in the cart
  int quantity; // The quantity of the product

  CartItem({
    required this.product, // The product itself
    this.quantity = 1, // Default quantity is 1
  });

  // Calculate the total price for this cart item (price * quantity)
  double get totalPrice => product.price * quantity.toDouble();
}

List<ProductColor> colors = [
  ProductColor(
      color: const Color(0xFF3D82AE), id: 1, image: "assets/images/pizza1.png"),
  ProductColor(
      color: const Color(0xFFD3A984), id: 2, image: "assets/images/pizza2.png"),
  ProductColor(
      color: const Color(0xFF989493), id: 3, image: "assets/images/pizza3.png"),
];

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/pizza1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/pizza2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/pizza3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/pizza1.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/pizza2.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/pizza3.png",
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
