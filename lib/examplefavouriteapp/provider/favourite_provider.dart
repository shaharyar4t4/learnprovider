import 'package:leranprovider/links/app_linker.dart';

class FavouriteProvider extends ChangeNotifier {
  List<int> _selectedIcon = [];

  List<int> get selectedIcon => _selectedIcon;

  void addItem(int value) {
    _selectedIcon.add(value);
  }
}
