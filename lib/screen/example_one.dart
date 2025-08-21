import 'package:leranprovider/links/app_linker.dart';



class ViewExampleOne extends StatefulWidget {
  const ViewExampleOne({super.key});

  @override
  State<ViewExampleOne> createState() => _ViewExampleOneState();
}

class _ViewExampleOneState extends State<ViewExampleOne> {
  
  @override
  Widget build(BuildContext context) {

    final slideProvider = Provider.of<ExampleOneProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Example Provider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: slideProvider.value,
            min: 0.0,
            max: 1.0,
            onChanged: (val){
            
              slideProvider.setSlide(val);
            },
          ),
            
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(slideProvider.value),
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
                  color: Colors.blue.withOpacity(slideProvider.value),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text('forward', style: const TextStyle(fontSize: 24)),
                ),
              ),
            ],
          ),
        ],)
      
    );
  }
}
