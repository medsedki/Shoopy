import 'package:flutter/material.dart';
import 'package:shoopy/components/single_product.dart';
import 'package:shoopy/usages/Arrays.dart';
import 'package:shoopy/usages/Strings.dart';

class Products extends StatefulWidget {
  @override
  ProductsState createState() => ProductsState();
}

class ProductsState extends State<Products> {
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Arrays.productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          productName: Arrays.productList[index][Strings.PRODUCT_NAME],
          productImage: Arrays.productList[index][Strings.PRODUCT_PIC],
          oldPrice: Arrays.productList[index][Strings.PRODUCT_OLD_PRICE],
          price: Arrays.productList[index][Strings.PRODUCT_PRICE],
        );
      },
    );
  }
}
