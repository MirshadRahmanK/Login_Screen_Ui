import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppingcartui/widgets/starRating.dart';

class ListViewScreen extends StatefulWidget {
  ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image(
                            height: 76,
                            width: 80,
                            image: AssetImage("assets/images/bag.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Bag",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "₹ 500",
                              style: TextStyle(fontSize: 14),
                            ),
                            StarRating()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
        itemCount: 1,
      ),
    );
  }
}
