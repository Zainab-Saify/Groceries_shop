import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:helloApp/Screens/AllProducts.dart';

class HomeScreen extends StatefulWidget
{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final imgList = [
    'https://images.unsplash.com/photo-1516594798947-e65505dbb29d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1568626913161-c4ac1e5ae186?ixlib=rb-1.2.1&auto=format&fit=crop&w=1875&q=80',
    'https://images.unsplash.com/photo-1418669112725-fb499fb61127?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  ];

  double imgIndex;

  @override
  void initState() {
    imgIndex = 0;
    super.initState();
  }



  Widget build(BuildContext context)
  {
     var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
    return  Scaffold(
          backgroundColor: Color.fromRGBO(255, 255, 251, 1),
          appBar: AppBar(
            title: Container(width: 150, child: Image.asset("assets/images/logo.png", fit: BoxFit.fitHeight)),
            backgroundColor: Colors.white,
          ),
          
          body: Column(
            children: [
              SizedBox(
                height:20,
              ),
              Center(
                  child: Container(
                    width: width/1.1,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(hintText: "Search here", prefixIcon: Icon(Icons.search), suffixIcon: Icon(Icons.cancel, ), border: OutlineInputBorder(borderRadius: BorderRadius.circular(20) ), contentPadding: EdgeInsets.all(5), fillColor: Colors.grey[100], focusColor: Colors.lightGreen[100]) 
                    ),
                  ),
                ),
                SizedBox(
                height:20,
              ),
                CarouselSlider(
                      options: CarouselOptions(
                          height: height/3,
                          //viewportFraction: 1.0,
                          enlargeCenterPage: true,
                          autoPlayCurve: Curves.easeInCubic,
                          autoPlay: true,
                          autoPlayInterval: Duration(milliseconds: 2000),
                          onPageChanged: (index, reason) {
                            setState(() {
                              imgIndex = index.toDouble();
                            });
                          }),
                      items: imgList
                          .map((item) => Container(
                                child: Center(
                                    child: Image.network(item,
                                  fit: BoxFit.cover,
                                  height: height/3,
                                  width: width,
                                )),
                              ))
                          .toList(),
                    ),

                    RaisedButton(onPressed: () => {Navigator.of(context).pushNamed(AllProductsScreen.routeName)}, child: Text("see All Products"), ),
            
          



                ]),
    );
  }
}