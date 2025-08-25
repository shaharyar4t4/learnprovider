import 'package:leranprovider/links/app_linker.dart';

class ValueNotifyListiner extends StatelessWidget {
  ValueNotifyListiner({Key? key}) : super(key: key);

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StateLess used as Statefull widget")),
      body: Column(
        children: [
          Text(_counter.value.toString(), style: TextStyle(fontSize: 26),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
