import 'package:flutter/material.dart';
import 'package:shoopy/usages/Strings.dart';

import 'home_page.dart';

class ProductDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailsPicture;
  final productDetailsOldPrice;
  final productDetailsPrice;

  ProductDetails(
      {this.productDetailsName,
      this.productDetailsOldPrice,
      this.productDetailsPicture,
      this.productDetailsPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Text(Strings.APP_TITLE),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          //  IconButton(icon: Icon(Icons.shopping_cart ), color: Colors.white, onPressed: (){},)
        ],
      ),
      //body
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                //widget.productDetailsPicture is used to use the variables of the parent class
                child: Image.asset(widget.productDetailsPicture),
              ),
              footer: Container(
                color: Colors.white54,
                child: ListTile(
                  leading: Text(
                    widget.productDetailsName,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  // style: TextStyle(fontWeight: FontWeight.w800),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$" + widget.productDetailsOldPrice,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$" + widget.productDetailsPrice,
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  textColor: Colors.grey,
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(Strings.ALERT_S_TITLE),
                          content: Text(Strings.ALERT_S_CONTENT),
                          actions: <Widget>[
                            MaterialButton(
                              child: Text(Strings.ALERT_ACTION_CLOSE),
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                            )
                          ],
                        );
                      },
                    );
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(Strings.ALERT_S_TITLE),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  textColor: Colors.grey,
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(Strings.ALERT_C_TITLE),
                            content: Text(Strings.ALERT_C_CONTENT),
                            actions: <Widget>[
                              MaterialButton(
                                  child: Text(Strings.ALERT_ACTION_CLOSE),
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  }),
                            ],
                          );
                        });
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(Strings.ALERT_C_TITLE),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  textColor: Colors.grey,
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(Strings.ALERT_Q_TITLE),
                            content: Text(Strings.ALERT_Q_CONTENT),
                            actions: <Widget>[
                              MaterialButton(
                                child: Text(Strings.ALERT_ACTION_CLOSE),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                              )
                            ],
                          );
                        });
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(Strings.ALERT_Q_TITLE),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {},
                  elevation: 0.2,
                  child: Text(Strings.BTN_BUY_NOW),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text(Strings.PRODUCT_DETAILS),
            subtitle: Text(Strings.PRODUCT_DETAILS_SUB),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(Strings.TXT_PRODUCT_NAME,
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.productDetailsName),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(Strings.TXT_PRODUCT_BRAND,
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(Strings.EXP_BRAND),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(Strings.TXT_PRODUCT_CONDITION,
                    style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  Strings.EXP_CONDITION,
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
          ListTile(
            title: Text(Strings.TXT_SIMILAR_PRODUCT),
          )
        ],
      ),
    );
  }
}
