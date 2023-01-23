import 'package:flutter/cupertino.dart';

class DailogBoxModel{
  String id;
  String title;
  String full;
  String half;
  bool selected;
  String foodType;
  double price;
  int quantity;
DailogBoxModel({required this.id,required this.title,required this.full,required this.half,required this.selected,required this.price,required this.quantity,required this.foodType});


}



class DailogBoxProvider with ChangeNotifier{
    final List<DailogBoxModel> _items=[];

    List<DailogBoxModel> get items{
      return [..._items];
    }

  double get totalAmout {
    var total = 0.0;
    if (_items.isNotEmpty) {
      for (var dailogBoxModel in _items) {
        total += (dailogBoxModel.price * dailogBoxModel.quantity);
      }
    }
    return total;
  }
 void addItems(DailogBoxModel dailogBoxModel) {
    if (!_items.any((element) => element.id == dailogBoxModel.id)) {
      _items.add(dailogBoxModel);
      notifyListeners();
    } else {}
  }

}