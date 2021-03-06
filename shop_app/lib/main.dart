import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/cart.dart';
import './screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(
            create: (_) => Products(),
        ),
         ChangeNotifierProvider(
            create: (_) => Cart(),
         ),
      ],
       child: MaterialApp(
            title: 'MyShop',
            theme: ThemeData(
              primarySwatch: Colors.red,
              accentColor: Colors.yellow,
              fontFamily: 'Lato',
            ),
            home: ProductsOverviewScreen(),
            routes: {
              ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()
            },
          ),
    );
  }
}
