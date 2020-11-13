import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoopy/components/carousel.dart';
import 'package:shoopy/components/horizontal_list.dart';
import 'package:shoopy/components/products.dart';
import 'package:shoopy/usages/Strings.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation removes th shodow
        elevation: 0.0,
        title: Text(Strings.APP_TITLE),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(Strings.DRAWER_USERNAME),
              accountEmail: Text(Strings.DRAWER_EMAIL),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: ListTile(
                title: Text(Strings.DRAWER_HOME),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(Strings.DRAWER_ACCOUNT),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(Strings.DRAWER_ORDERS),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text(Strings.DRAWER_SHOPPING_CART),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(Strings.DRAWER_FAVORITES),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Divider(
                height: 15.0,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(Strings.DRAWER_SETTINGS),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(Strings.DRAWER_ABOUT),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          CarouselPanel(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(Strings.CATEGORIES),
          ),
          //Horizontal list of categories
          HorizontalList(),
          //Recent products
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(Strings.RECENT_PRODUCTS),
          ),
          //Grid view
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Products(),
            ),
          ),
        ],
      ),
    );
  }
}
