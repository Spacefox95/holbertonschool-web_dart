import 'dart:convert';

import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userId = jsonDecode(userData);
    final userOrders = await fetchUserOrders(userId['id']);
    var userProducts = jsonDecode(userOrders);
    num totalPrice = 0;
    for (final product in userProducts) {
      final productPrice = await fetchProductPrice(product);
      totalPrice += jsonDecode(productPrice);
    }
    return totalPrice;
  } catch (err) {
    return -1;
  }
}
