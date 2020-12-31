import 'dart:async';

class cartItemsBLoC {
  final cartStreamController = StreamController.broadcast();
  Stream get getStream => cartStreamController.stream;
  final Map allItems = {
    'shop items': [
      {'name': 'App dev kit', 'price': 20, 'id': 1},
      {'name': 'App consultation', 'price': 100, 'id': 2},
      {'name': 'Logo Design', 'price': 10, 'id': 3},
      {'name': 'Code review', 'price': 90, 'id': 4},
    ],
    'cart items': []
  };
  void dispose() {
    cartStreamController.close();
  }
}
