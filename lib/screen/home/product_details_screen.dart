import 'package:flutter/material.dart';
import 'package:tameer_auto_auction/model/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = 'product_details_screen';

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print("IconButton");
              }),
          SizedBox(width: 8)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(productList[route].imageUrl),
            )),
          ),

          //name
          // SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productList[route].name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                //
                Text(
                  'This is sealed auction',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Current bid is hidden',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),

                //time container
                Container(
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Time left:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 16),
                      // time row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AuctionTimer(time: 00, label: 'Days'),
                          AuctionTimer(time: 10, label: 'Hours'),
                          AuctionTimer(time: 48, label: 'Minutes'),
                          AuctionTimer(time: 47, label: 'Seconds'),
                        ],
                      ),

                      SizedBox(height: 24),
                      // auction end time
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Auction ends:',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '20/7/2021 05:59:59',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AuctionTimer extends StatelessWidget {
  const AuctionTimer({required this.time, required this.label});

  final int time;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      constraints: BoxConstraints(minWidth: 72),
      decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
      child: Column(
        children: [
          Text(
            time.toString(),
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
