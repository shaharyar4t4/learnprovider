import 'package:leranprovider/links/app_linker.dart';

class Darktheme extends StatefulWidget {
  const Darktheme({super.key});

  @override
  State<Darktheme> createState() => _DarkthemeState();
}

class _DarkthemeState extends State<Darktheme> {
  @override
  Widget build(BuildContext context) {
    final appthemeChange = Provider.of<Changetheme>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dark Theme Screen"),
        actions: [Icon(Icons.person,)],
      ),

      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Mode"),
            value: ThemeMode.light,
            groupValue: appthemeChange.themeMode,
            onChanged: appthemeChange.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Mode"),
            value: ThemeMode.dark,
            groupValue: appthemeChange.themeMode,
            onChanged: appthemeChange.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("System Mode"),
            value: ThemeMode.system,
            groupValue: appthemeChange.themeMode,
            onChanged: appthemeChange.setTheme,
          ),
        ],
      ),
    );
  }
}
