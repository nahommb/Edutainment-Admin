import 'package:edutainment_admin/data/provider.dart';
import 'package:edutainment_admin/screens/home_screen.dart';
import 'package:edutainment_admin/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(providers: [
       ChangeNotifierProvider(create: (ctx)=>DataProvider())
     ],child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
    );
  }
}
