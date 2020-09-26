import 'package:flutter/material.dart';
import 'package:helloApp/model/Products.dart';
import 'package:helloApp/model/auth.dart';
import 'package:provider/provider.dart';

class AllProductsScreen extends StatelessWidget
{
  static const routeName = '/AllProductsRoute';
    Widget build(BuildContext context)
    {
      final p =Provider.of<Products>(context, listen: false);
      final a = Provider.of<Auth>(context, listen: false);
      a.authenticate();
      //p.fetchProducts();
      return Container();
    }
}