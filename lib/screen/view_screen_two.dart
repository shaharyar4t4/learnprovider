import '../links/app_linker.dart';

class ViewScreenTwo extends StatelessWidget {

   ViewScreenTwo({super.key});
   
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
