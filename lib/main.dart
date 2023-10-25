import 'package:finefound/provider/auth.dart';
import 'package:finefound/provider/dark_theme_provider.dart';
import 'package:finefound/utils/theme_data.dart';
import 'package:finefound/views/pages/authHome_screen.dart';
import 'package:finefound/views/pages/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<DarkThemeProvider>(
            create: (_) {
              return DarkThemeProvider();
            },
          ),
          ChangeNotifierProvider<Auth>(create: (_) => Auth()),
        ],
        child: Consumer<DarkThemeProvider>(builder: (context, value, child) {
          return Consumer<Auth>(
              builder: (context, auth, _) => MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Flutter Demo',
                    darkTheme: darkTheme,
                    theme: lightTheme,
                    themeMode: value.themeMode,
                    home: MyHome(),
                  )
              // auth.isAuth ? MyHome() : AuthHomeScreen()),
              );
        }));
  }
}
