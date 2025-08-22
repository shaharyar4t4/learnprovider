import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  List<int>selectedIcon = [];

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favourite List'),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              onTap: (){
                selectedIcon.add(index);
                setState(() {
                  
                });

              },
              leading: const Icon(Icons.person),
              title:  Text('Item ${index + 1}'),
              subtitle: const Text('this is description'),
              trailing:  Icon( selectedIcon.contains(index) ? Icons.favorite : Icons.favorite_outline),
            );
          },
        ),
      ),
    );
  }
}