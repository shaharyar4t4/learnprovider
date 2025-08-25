import 'package:flutter/material.dart';
import 'package:leranprovider/examplefavouriteapp/screen/myfavourite.dart';
import 'package:leranprovider/links/app_linker.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favourite List'),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyfavouriteItem()),
              ),
            },
            icon: Icon(Icons.favorite),
          ),
        ],
      ),

      body: Expanded(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Consumer<FavouriteProvider>(
              // there are some key point you about the provider state Managnment
              // In Provider State Managnement
              // content is represent the any widget building
              // value is represent the any number or updated any value
              // child is represent any child show on the inside the parsent widget
              builder: (context, value, child) {
                return ListTile(
                  onTap: () {
                    if (value.selectedIcon.contains(index)) {
                      value.removeItem(index);
                    } else {
                      value.addItem(index);
                    }
                  },
                  leading: const Icon(Icons.person),
                  title: Text('Item ${index + 1}'),
                  subtitle: const Text('this is description'),
                  trailing: Icon(
                    value.selectedIcon.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    color: value.selectedIcon.contains(index)
                        ? Colors.red
                        : Colors.grey,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
