import 'package:leranprovider/links/app_linker.dart';



class ViewExampleOne extends StatefulWidget {
  const ViewExampleOne({super.key});

  @override
  State<ViewExampleOne> createState() => _ViewExampleOneState();
}

class _ViewExampleOneState extends State<ViewExampleOne> {
  double value = 1.0;
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
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
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
                  color: Colors.red.withOpacity(value),
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
                  color: Colors.blue.withOpacity(value),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text('forward', style: const TextStyle(fontSize: 24)),
                ),
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action to perform when the button is pressed
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
