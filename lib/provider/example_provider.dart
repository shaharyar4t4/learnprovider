import 'package:flutter/material.dart';

class ViewExampleProvider extends StatefulWidget {
  const ViewExampleProvider
({super.key});

  @override
  State<ViewExampleProvider> createState() => _ViewExampleProviderState();
}

class _ViewExampleProviderState extends State<ViewExampleProvider> {
  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: value,
            min: 0.0,
            max: 1.0,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),
          Row(
            children: [
              Container(
                
              )
            ],
          )
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