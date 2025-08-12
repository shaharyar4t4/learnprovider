import 'package:flutter/material.dart';

class ViewScreenOne extends StatelessWidget {
  const ViewScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text("Heelo")],
      ),
    );
  }
}
