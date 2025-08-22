import 'package:leranprovider/links/app_linker.dart';

class FavouriteProvider extends ChangeNotifier {
  List<int> _selectedIcon = [];

  //get fnc
  List<int> get selectedIcon => _selectedIcon;

  //setter fnc for add the item
  void addItem(int value) {
    _selectedIcon.add(value);
    notifyListeners();
  }

  //setter fnc for Remove the item
  void removeItem(int value){
    _selectedIcon.remove(value);
    notifyListeners();
  }
}
