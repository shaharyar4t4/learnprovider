import 'package:leranprovider/links/app_linker.dart';

class ValueNotifyListiner extends StatelessWidget {
   ValueNotifyListiner({Key ? key}) : super(key:key);
   
  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StateLess used as Statefull widget"),
        ),
        body: Text(""),
    );
  }
}
