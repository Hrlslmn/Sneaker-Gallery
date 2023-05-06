import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

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

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'KEDAI KASUT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
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
                    ),
                    const Text(
                      "View Cart",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Archivo"),
                    )
                  ],
                ),
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
                          _navigateToNextScreen(context);
                        },
                      ),
                    ),
                    const Text(
                      "Products",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Archivo"),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
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
                    ),
                    const Text(
                      "Email us",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Archivo"),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
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
                    ),
                    const Text(
                      "Live Chat",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Archivo"),
                    )
                  ],
                )
              ],
            ),
            //* Discover the right sneaker
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    " Discover \n the \n right sneaker",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
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
            //* Shoe image collumn
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

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'PRODUCTS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Archivo',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
        elevation: 1,
      ),
    );
  }
}
