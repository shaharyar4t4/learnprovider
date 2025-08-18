import 'package:flutter/material.dart';

class ViewExampleProvider extends StatefulWidget {
  const ViewExampleProvider
({super.key});

  @override
  State<ViewExampleProvider> createState() => _ViewExampleProviderState();
}

class _ViewExampleProviderState extends State<ViewExampleProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Provider'),
      ),
      body: Column(
        children: [
          Text("Hello"),
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