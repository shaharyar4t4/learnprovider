import 'package:leranprovider/links/app_linker.dart';

class Darktheme extends StatefulWidget {
  const Darktheme({super.key});

  @override
  State<Darktheme> createState() => _DarkthemeState();
}

class _DarkthemeState extends State<Darktheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Text("Dark Theme Screen"),
        actions: [
          Icon(Icons.person),
        ],
      ),

      body: Column(
        children: [
          Text("Hello"),
        ],
      ),
    );
  }
}
