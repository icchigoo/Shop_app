import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants/global_variables.dart';
import 'package:shop_app/features/auth/screens/auth_screen.dart';
import 'package:shop_app/providers/user_provider.dart';
import 'package:shop_app/router.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) => genrateRoute(settings),
      home: const AuthScreen(),
    );
  }
}
