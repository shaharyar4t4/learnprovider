
import 'package:flutter/material.dart';
import 'package:leranprovider/links/app_linker.dart';
import 'dart:async';
class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer){
        countProvider.setCount();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("CountScreen rebuild");
    return Scaffold(
      appBar: AppBar( 
        title: Text("Learn Provider"),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
          print("build only");
          return Text(
            "Count: ${value.count.toString()}",
            style: TextStyle(fontSize: 30),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}