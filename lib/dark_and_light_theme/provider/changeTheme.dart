import 'package:leranprovider/links/app_linker.dart';

class Changetheme extends ChangeNotifier {
  var _thememode = ThemeMode.light;

  //getter fnc
  ThemeMode get themeMode => _thememode;

  //setter fnc
  void setTheme(themeMode) {
    _thememode = themeMode;
    notifyListeners();
  }
}
