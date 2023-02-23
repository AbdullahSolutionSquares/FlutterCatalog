//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_catalog/pages-screens/home_page.dart';
import 'package:flutter_catalog/pages-screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_catalog/pages-screens/login_page.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bringVegetables(rupees: 50, plasticBag: true,cottonBag: true);
    return MaterialApp(        // Can Use Scaffold, Material, WidgetsApp, CupertinoApp
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      initialRoute: "/",
      routes: const {
        //"/": (context) => const LoginPage(),
        //"/home": (context) => const HomePage(),
        //"/login": (context) => const LoginPage(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lightBlue,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      //debugShowMaterialGrid: true,
    );
  }

  bringVegetables({required bool cottonBag,int rupees = 100, bool plasticBag = false})
  {
    // Take Cycle...

    // Visit Vegetable Market...
  }
}
