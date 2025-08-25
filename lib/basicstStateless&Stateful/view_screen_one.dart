
import '../links/app_linker.dart';

class ViewScreenOne extends StatefulWidget {

   ViewScreenOne({super.key});

  @override
  State<ViewScreenOne> createState() => _ViewScreenOneState();
}

class _ViewScreenOneState extends State<ViewScreenOne> {
  int num =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Home view", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("$num"))
          ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          num++;
          print("the counter $num");
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
