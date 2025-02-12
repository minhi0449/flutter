import 'package:flutter/material.dart';
import 'package:shopping_cart_app/components/shoppingcart_header.dart';
import 'package:shopping_cart_app/theme.dart';

import 'components/shoppingcart_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ShoppingCartPage(),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////
// 쇼핑 카트 페이지 (여기는 페이지)
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingcartHeader(),
          ShoppingcartBody(),
          // detail (디테일)
        ],
      ),
    ));
  }

  // method 호출 MainAppBar 만들기
  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
} // end of page
