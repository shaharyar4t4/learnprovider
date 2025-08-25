import 'links/app_linker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // this is show the multi provider states
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ChangeNotifierProvider(create: (_) => Changetheme()),
      ],

      child: Builder(
        builder: (BuildContext context) {
          final themeChange = Provider.of<Changetheme>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Learn Provider',
            themeMode: themeChange.themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.purple,
              iconTheme: IconThemeData(color: Colors.purpleAccent),
            ),
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.cyan,
            ),
            home: Darktheme(),
          );
        },
      ),
    );

    // this is show the single provider states

    // return ChangeNotifierProvider(create:  (_) => ExampleOneProvider(),

    //     child: MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       title: 'Learn Provider',
    //       theme: ThemeData(
    //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       ),
    //       home: ViewExampleOne(),
    //     ),
    //   );
  }
}
