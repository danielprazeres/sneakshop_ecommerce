import 'package:flutter/material.dart';

import 'shoes.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Suede Classic',
        price: '200',
        imagePath: 'lib/images/Suede Classic XXI - Puma.avif',
        description: 'Suede Classic XXI'),
    Shoe(
        name: 'RS-X-3D',
        price: '240',
        imagePath: 'lib/images/RS-X-3D - Puma.avif',
        description: 'Inspirado em videogames'),
    Shoe(
        name: 'Mayze Crashed',
        price: '300',
        imagePath: 'lib/images/Pacer Future Trail - Puma.avif',
        description: 'Futurista'),
    Shoe(
        name: 'Cali Court Beach',
        price: '230',
        imagePath: 'lib/images/Cali Court Beach Days Feminino Puma.avif',
        description: 'Crashed'),
  ];

  // list of itens in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to car
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
