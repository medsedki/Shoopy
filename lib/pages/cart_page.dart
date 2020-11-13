import 'package:flutter/material.dart';
import 'package:shoopy/usages/Strings.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(Strings.CART),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text(Strings.CART_TOTAL),
                subtitle: Text(Strings.EXP_TOTAL),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  Strings.CART_CHECK,
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
