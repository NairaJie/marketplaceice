import 'package:flutter/material.dart';
import 'package:marketplaceice/util/widget.dart';
import 'package:marketplaceice/model/ice.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Ice Shop',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Material(
          color: Colors.transparent,
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: iceList.map((ice) {
                return Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return DetailScreen(ice: ice);
                          }));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Image.network(ice.iceImage,),
                                decoration: BoxDecoration(color: ice.iceColor),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4, left: 4),
                          child: Text(
                            ice.iceName,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4, left: 4),
                          child: Text(
                            rupiahCurrencyFormat.format(ice.icePrice),
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
    );
  }

}
