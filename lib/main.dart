import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_widget/provider/darkthemprovider.dart';
import 'package:stock_widget/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

@override
void initState() {
  initState();
  getCurrentAppTheme();
}

void getCurrentAppTheme() async {
  themeChangeProvider.darkTheme =
      await themeChangeProvider.darkThemePreferences.getTheme();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, Widget child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
