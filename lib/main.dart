import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import 'cart.dart';
import 'chat.dart';
import 'products.dart';
import 'email.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int count = 0;
  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  //*Navigate to product page function
  void _navigateToProducts(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Products()));
  }

  //*Navigate to cart page function
  void _navigateToCart(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Cart()));
  }

  //*Navigate to email page function
  void _navigateToEmail(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Email()));
  }

  //*Navigate to live chat page function
  void _navigateToLiveChat(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Chat()));
  }

  @override
  //*Main page
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 197, 105),
      //* Mainpage Appbar widget
      appBar: AppBar(
        title: const Text(
          'SHOE HUB',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Archivo',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
        elevation: 1,
      ),
      //* Main body
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Icons row (View cart, Products, Email Us, Live Chat)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //*View cart button
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(200)),
                          width: 60,
                          height: 60,
                          child: const HeroIcon(
                            HeroIcons.shoppingCart,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () {
                          _navigateToCart(context);
                        },
                      ),
                    ),
                    const Text(
                      "View Cart",
                      style: TextStyle(
                          color: Color.fromARGB(255, 253, 109, 31),
                          fontFamily: "Archivo"),
                    )
                  ],
                ),
                //*Products button
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(200)),
                          width: 60,
                          height: 60,
                          child: const HeroIcon(
                            HeroIcons.tag,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () {
                          _navigateToProducts(context);
                        },
                      ),
                    ),
                    const Text(
                      "Products",
                      style: TextStyle(
                          color: Color.fromARGB(255, 253, 109, 31),
                          fontFamily: "Archivo"),
                    )
                  ],
                ),
                //*Email button
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(200)),
                          width: 60,
                          height: 60,
                          child: const HeroIcon(
                            HeroIcons.envelope,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () {
                          _navigateToEmail(context);
                        },
                      ),
                    ),
                    const Text(
                      "Email us",
                      style: TextStyle(
                          color: Color.fromARGB(255, 253, 109, 31),
                          fontFamily: "Archivo"),
                    )
                  ],
                ),
                //*Live chat button
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(200)),
                          width: 60,
                          height: 60,
                          child: const HeroIcon(
                            HeroIcons.chatBubbleLeftRight,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () {
                          _navigateToLiveChat(context);
                        },
                      ),
                    ),
                    const Text(
                      "Live Chat",
                      style: TextStyle(
                          color: Color.fromARGB(255, 253, 109, 31),
                          fontFamily: "Archivo"),
                    )
                  ],
                )
              ],
            ),
            //*Discover the right sneaker
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    " Discover \n The \n Right \n Sneaker",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      'assets/Images/Vector-1.png',
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
            //*Shoe column 1
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          'assets/Images/Sneaker-3.jpg',
                          width: 360,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 15,
                        child: ElevatedButton(
                            onPressed: () => {incrementCounter()},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange[800],
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Positioned(
                          top: 10,
                          right: 15,
                          child: Text(
                            "--SHOE 1--",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: const Offset(-2, 4),
                                      blurRadius: 10),
                                ]),
                          )),
                    ]),
                  ),
                ),
              ],
            ),
            //* Shoe column 2
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          'assets/Images/Sneaker-1.jpg',
                          width: 360,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 15,
                        child: ElevatedButton(
                            onPressed: () => {incrementCounter()},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange[800],
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Positioned(
                          top: 10,
                          right: 15,
                          child: Text(
                            "--SHOE 2--",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: const Offset(-2, 4),
                                      blurRadius: 10),
                                ]),
                          )),
                    ]),
                  ),
                ),
              ],
            ),
            //* Shoe column 3
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          'assets/Images/Sneaker-2.jpg',
                          width: 360,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 15,
                        child: ElevatedButton(
                            onPressed: () => {incrementCounter()},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange[800],
                            ),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                  fontFamily: 'Archivo',
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Positioned(
                          top: 10,
                          right: 15,
                          child: Text(
                            "--SHOE 3--",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: const Offset(-2, 4),
                                      blurRadius: 10),
                                ]),
                          )),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
