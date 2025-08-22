import '../links/app_linker.dart';

class ViewScreenTwo extends StatefulWidget {

   ViewScreenTwo({super.key});

  @override
  State<ViewScreenTwo> createState() => _ViewScreenTwoState();
}

class _ViewScreenTwoState extends State<ViewScreenTwo> {
  int num = 0;

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
          Center(child: Text("$num", style: TextStyle(fontSize: 30),))
          ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            num++;
          });  
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
