import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplaceice/model/ice.dart';
import 'package:marketplaceice/model/cart.dart';
import 'package:marketplaceice/screen/checkout_screen.dart';
import 'package:marketplaceice/util/widget.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isFbCheckoutVisible = false;

  @override
  Widget build(BuildContext context) {
    if (cartList.length > 0) {
      isFbCheckoutVisible = true;
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFbCheckoutVisible,
        child: Container(
          padding: EdgeInsets.only(left: 16),
          margin: EdgeInsets.only(left: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(1000, 4, 93, 42)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Checkout'), Icon(Icons.arrow_forward_ios)],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: cartList.length > 0
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    var ice = findice(cartList[index]);
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              child: Container(
                                child: Image.network(ice.iceImage),
                                decoration:
                                    BoxDecoration(color: ice.iceColor),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ice.iceName,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(rupiahCurrencyFormat
                                      .format(ice.icePrice))
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                                onPressed: () {
                                  deleteItemCart(ice.iceId);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.grey,
                                )),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: cartList.length,
                ),
              )
            : Center(child: Text('Empty cart, please add some item')),
      ),
    );
  }

  Ice findice(Cart cartItem) {
    return iceList.firstWhere((ice) => ice.iceId == cartItem.iceId);
  }

  deleteItemCart(int iceId) {
    setState(() {
      cartList.removeWhere((cartItem) => cartItem.iceId == iceId);
      if (cartList.length == 0) {}
    });
  }
}
