import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoopy/pages/product_details.dart';

class SingleProduct extends StatelessWidget {
  final productName;
  final productImage;
  final oldPrice;
  final price;

  //initialise in  a constructor to enable user defined products
  SingleProduct(
      {this.productName, this.productImage, this.oldPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                //here we are passing the details of the product to the produyct details page
                builder: (context) => ProductDetails(
                  productDetailsName: productName,
                  productDetailsPicture: productImage,
                  productDetailsOldPrice: oldPrice,
                  productDetailsPrice: price,
                ),
              ),
            ),
            child: GridTile(
              footer: Container(
                height: 30.0,
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    '\$' + price.toString(),
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text(
                    oldPrice.toString(),
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                productImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
