import 'package:flutter/material.dart';
import 'package:personal_website/project/app_route_config.dart';
import 'package:personal_website/themes/theme_constants.dart';
import 'package:personal_website/themes/theme_manager.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeManager>(
      create: (BuildContext context) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (context, value, child) {
          return MaterialApp.router(
            title: 'Krishan Walia',
            debugShowCheckedModeBanner: false,
            // routeInformationParser: MyAppRouter.returnRouter().routeInformationParser,
            // routerDelegate: MyAppRouter.returnRouter().routerDelegate,
            // routeInformationProvider:
            //     MyAppRouter.returnRouter().routeInformationProvider,
            routerConfig: MyAppRouter.returnRouter(),

            // Theme Information,-
            theme: lightTheme,
            darkTheme: darkTheme,

            // Using this we can switch between theme and darkTheme as defined above.
            themeMode: value.themeMode,
          );
        },
      ),
    );
  }
}
