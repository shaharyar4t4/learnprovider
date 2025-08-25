import 'package:leranprovider/links/app_linker.dart';

class ValueNotifyListiner extends StatelessWidget {
  ValueNotifyListiner({Key? key}) : super(key: key);

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);


  // important note 
  // Your are not used the initstate and dispose beause this is a statless widget 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StateLess used as Statefull widget")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: toggle,
            builder: (context, value, child) {
              return TextFormField(
                // enabled: toggle.value,
                obscureText: toggle.value,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffix: InkWell(
                    onTap: () {
                      toggle.value = !toggle.value;
                    },
                    child: Icon(
                      toggle.value ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              );
            },
          ),

          Center(
            child: ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, build, child) {
                return Text(
                  _counter.value.toString(),
                  style: TextStyle(fontSize: 26),
                );
              },
            ),
          ),
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
