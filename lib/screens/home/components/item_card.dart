import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            // For  demo we use fixed height  and width
            // Now we dont need them
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
              // color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                height: 100,
                width: 100,
              ),
            ),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  // products is out demo list
                  product.title,
                  style: TextStyle(
                      color: kTextLightColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "\$${product.price}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
        // leading: Container(
        //   padding: EdgeInsets.all(kDefaultPaddin),
        //   // For  demo we use fixed height  and width
        //   // Now we dont need them
        //   // height: 180,
        //   // width: 160,
        //   decoration: BoxDecoration(
        //     color: product.color,
        //     borderRadius: BorderRadius.circular(16),
        //   ),
        //   child: Hero(
        //     tag: "${product.id}",
        //     child: Image.asset(
        //       product.image,
        //       height: 200,
        //       // width: 200,
        //     ),
        //   ),
        // ),
        // title: Text(
        //   // products is out demo list
        //   product.title,
        //   style: TextStyle(color: kTextLightColor),
        // ),
        // subtitle: Text(
        //   "\$${product.price}",
        //   style: TextStyle(fontWeight: FontWeight.bold),
        // ),
      ),
    );

    // GestureDetector(
    //   onTap: press,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Expanded(
    //         child: Container(
    //           padding: EdgeInsets.all(kDefaultPaddin),
    //           // For  demo we use fixed height  and width
    //           // Now we dont need them
    //           // height: 180,
    //           // width: 160,
    //           decoration: BoxDecoration(
    //             color: product.color,
    //             borderRadius: BorderRadius.circular(16),
    //           ),
    //           child: Hero(
    //             tag: "${product.id}",
    //             child: Image.asset(product.image),
    //           ),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
    //         child: Text(
    //           // products is out demo list
    //           product.title,
    //           style: TextStyle(color: kTextLightColor),
    //         ),
    //       ),
    //       Text(
    //         "\$${product.price}",
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       )
    //     ],
    //   ),
    // );
  }
}
