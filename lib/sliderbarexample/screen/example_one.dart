import 'package:leranprovider/links/app_linker.dart';



class ViewExampleOne extends StatefulWidget {
  const ViewExampleOne({super.key});

  @override
  State<ViewExampleOne> createState() => _ViewExampleOneState();
}

class _ViewExampleOneState extends State<ViewExampleOne> {
  
  @override
  Widget build(BuildContext context) {
        print("<-- Main widget is building");
    
    return Scaffold(
      
      appBar: AppBar(title: const Text('Example Provider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, value, child){
            return  Slider(
              value: value.value,
              min: 0.0,
              max: 1.0,
              onChanged: (val){
                value.setSlide(val);
                print ("<-- rending");
              },
            );
          },
          ),
          Consumer<ExampleOneProvider>(builder: (context, value,child){
            return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(value.value),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text('Backward', style: const TextStyle(fontSize: 24)),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(value.value),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text('forward', style: const TextStyle(fontSize: 24)),
                ),
              ),
            ],
          );
          })
        ],)
      
    );
  }
}
