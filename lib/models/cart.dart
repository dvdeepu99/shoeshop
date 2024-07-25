import 'package:flutter/material.dart';
import 'package:shoe_shopping/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
      description: "Shoe #1",
      imagePath: '/lib/images/Air Jordan.webp',
      name: 'Air Jordan',
      price: '240',
    ),
    Shoe(
      description: "Shoe #2",
      imagePath: '/lib/images/Air Max.webp',
      name: 'Air Max',
      price: '200',
    ),
    Shoe(
      description: "Shoe #3",
      imagePath: '/lib/images/Air More.webp',
      name: 'Air More',
      price: '290',
    ),
    Shoe(
      description: "Shoe #4",
      imagePath: '/lib/images/Air Force.webp',
      name: 'Air Force',
      price: '180',
    ),
  ];

  //list of items in cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove from cart items
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
