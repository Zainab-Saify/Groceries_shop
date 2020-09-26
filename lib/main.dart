import 'package:flutter/material.dart';
import 'package:helloApp/Screens/AllProducts.dart';
import 'package:helloApp/Screens/homeScreen.dart';
import 'package:helloApp/model/auth.dart';
import 'package:provider/provider.dart';
import 'model/Products.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => Auth()),
              ChangeNotifierProvider(create: (context) => Products()),
            ],
          child: MaterialApp(
        title: "Komerco",
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.blue,

        ),
        home: HomeScreen(),
        routes: {
          AllProductsScreen.routeName: (ctx) => AllProductsScreen(),
          
        },

      ),
    );
  }
}