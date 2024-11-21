import 'package:for_you_delivery/data/product/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();
  Rx<dynamic> currentProduct = colors[0].obs;
  Rx<int> cart = 0.obs;
  var cartItem = <CartItem>[].obs;
  Rx<double> get totalPrice =>
      Rx<double>(cartItem.fold(0, (sum, item) => sum + item.totalPrice));

  void addToCart(Product product) {
    int index = cartItem.indexWhere((item) => item.product.id == product.id);
    if (index != -1) {
      cartItem[index].quantity++;
      cartItem.refresh();
    } else {
      cartItem.add(CartItem(product: product));
    }
    totalPrice.value = cartItem.fold(0, (sum, item) => sum + item.totalPrice);
  }

  void updatePageIndicator(data) {
    currentProduct.value = data;
  }

  void updateCart(data) {
    cartItem.value = data + 1;
  }

  void removeFromCart(Product product) {
    cartItem.removeWhere((item) => item.product.id == product.id);
  }

  void updateQuantity(Product product, int quantity) {
    int index = cartItem.indexWhere((item) => item.product.id == product.id);
    if (index != -1) {
      cartItem[index].quantity = quantity;
      cartItem.refresh();
    }
  }
}
