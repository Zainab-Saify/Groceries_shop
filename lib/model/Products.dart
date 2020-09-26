import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;



class Product with ChangeNotifier
{   final id;
    final title;
    final price;
    final List<String> url;
    final discription;
    final favourite;
    final Category;

    Product({this.id, this.title,this.discription,this.price,this.url,this.favourite, this.Category});


}

class Products with ChangeNotifier
{
  List<Product> _items = [];

Future fetchProducts() async 
{
  final response = await http.get("https://pcmapp.vyomtech.com/pcm/api/v1/products");
  print(response);
}


}