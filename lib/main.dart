import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp_udemy/screens/screens.dart';
import './providers/product_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx)=> Products() ,
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
          fontFamily: 'Lato',
          accentColor: Colors.deepOrange,

        ),


        home: ProductOverviewScreens(),


        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}


