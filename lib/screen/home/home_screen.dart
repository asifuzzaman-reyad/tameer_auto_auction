import 'package:flutter/material.dart';
import 'package:tameer_auto_auction/constrains.dart';
import 'package:tameer_auto_auction/model/product.dart';
import 'package:tameer_auto_auction/screen/home/bid_screen.dart';
import 'package:tameer_auto_auction/screen/home/product_details_screen.dart';

import 'components/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        elevation: 0,
        //
        titleSpacing: 0,
        title: Container(
          padding: EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              Text(
                'Search here...',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        actions: [
          //todo: placeholder for icons [if need further]
          SizedBox(width: 24),
        ],
      ),

      //
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1st
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16,
              ),
              color: kHeaderColor,
              child: Text(
                'AL TAMEER AUTO AUCTION',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3,
                ),
              ),
            ),

            //2nd
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product title
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Products',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),

                  // grid
                  GridView.builder(
                    // shrinkWrap needed when grid is child of another column or grid
                    shrinkWrap: true,
                    // need for scrolling
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: .57,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      // build product card
                      return ProductCard(itemIndex: index);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// product card
class ProductCard extends StatelessWidget {
  ProductCard({required this.itemIndex});
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Clicked -> $itemIndex');
        Navigator.pushNamed(context, ProductDetailsScreen.routeName,
            arguments: itemIndex);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            //image
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: AssetImage(productList[itemIndex].imageUrl),
                      fit: BoxFit.cover,
                    )),
              ),
            ),

            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      //text - 1
                      Expanded(
                        child: Text(
                          productList[itemIndex].name,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      //text - 1
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '\$ ${productList[itemIndex].price}',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ),

                      //button
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, BidScreen.routeName);
                          },
                          icon: Icon(Icons.shopping_cart),
                          label: Text('BID NOW'),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
