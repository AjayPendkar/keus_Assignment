import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          // color: Colors.red,
          height: 200,
          width: MediaQuery.of(context).size.width - 00,
          child: CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/bag_2.png'),
                      // fit: BoxFit.cover
                    ),

                    // border: Border.all(color: Colors.blue, width: 10),
                    borderRadius: BorderRadius.circular(30)),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Image(
              //     height: 100,
              //     width: 200,
              //     image: AssetImage('assets/images/bag_1.png'),
              //     // fit: BoxFit.cover
              //   ),
              // ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              autoPlay: true,
            ),
          ),
        ),
        // Container(
        //   // height: 100,
        //   width: MediaQuery.of(context).size.width,
        //   color: Colors.green,
        //   child: CarouselSlider(
        //     items: [
        //       Container(
        //         height: 300,
        //         margin: const EdgeInsets.all(20),
        //         decoration: BoxDecoration(
        //             image: const DecorationImage(
        //                 image: AssetImage('assets/Sample_3.jpg'),
        //                 fit: BoxFit.cover),
        //             border: Border.all(color: Colors.blue, width: 10),
        //             borderRadius: BorderRadius.circular(30)),
        //       ),
        //       // Padding(
        //       //   padding: const EdgeInsets.all(20.0),
        //       //   child: Image(
        //       //       height: 100,
        //       //       width: 100,
        //       //       image: AssetImage('assets/images/bag_1.png'),
        //       //       fit: BoxFit.cover),
        //       // ),
        //       Padding(
        //         padding: const EdgeInsets.all(20.0),
        //         child: Text('iOS'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(20.0),
        //         child: Text('Desktop'),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(20.0),
        //         child: Text('Web'),
        //       )
        //     ],
        //     //Slider Container properties
        //     options: CarouselOptions(
        //       autoPlay: true,
        //     ),
        //   ),
        // ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: ListView.builder(
                itemCount: products.length,
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 1,
                //   // mainAxisSpacing: kDefaultPaddin,
                //   // crossAxisSpacing: kDefaultPaddin,
                //   // childAspectRatio: 0.75,
                // ),
                itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return DetailsScreen(
                              product: products[index],
                            );
                          });
                    })),
          ),
        ),
      ],
    );
  }
}
