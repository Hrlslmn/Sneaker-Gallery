import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
              child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[800],
                            border: Border.all(
                              width: 3,
                              color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          width: 256,
                          height: 100,
                          child: const Padding(
                            padding: EdgeInsets.only(top:18.0),
                            child: Text(
                              "Quality Sneakers \n Assured",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Archivo",
                                  fontSize: 25,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[800],
                            border: Border.all(
                                width: 3,
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                            width: 256,
                            height: 100,
                            child: const Padding(
                              padding: EdgeInsets.only(top:18.0),
                              child: Text(
                                  textAlign: TextAlign.center,
                                  "Fast Delivery Islandwide",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Archivo",
                                      fontSize: 25
                                  ),
                              ),
                            ),
                          ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(18.0),
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
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child:Image.asset(
                              'assets/Images/Vector-1.png',
                              width: 200,
                            ),
                          ),
                        ),
                      ],),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child:Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child:Image.asset(
                                      'assets/Images/Sneaker-2.jpg',
                                      width: 360,
                                    ),
                                  ),
                                  Positioned(
                                    top:10,
                                    left: 15,
                                    child:ElevatedButton(
                                        onPressed: () =>{
                                          incrementCounter()
                                        },
                                        style:ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orange[800],
                                        ),
                                        child: const Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.bold
                                            ),
                                        )
                                    ),
                                  ),
                                  Positioned(
                                      top:10,
                                      right: 15,
                                      child:Text(
                                        "--SHOE 1--",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            shadows:[ Shadow(
                                                color: Colors.black.withOpacity(0.3),
                                                offset: const Offset(-2, 4),
                                                blurRadius: 10),]
                                        ),
                                      )
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child:Stack(
                                children: [
                                    ClipRRect(

                                      borderRadius: BorderRadius.circular(5.0),
                                      child:Image.asset(
                                        'assets/Images/Sneaker-3.jpg',
                                        width: 360,
                                      ),
                                    ),
                                  Positioned(
                                      top:10,
                                      left: 15,
                                      child:ElevatedButton(
                                          onPressed: () =>{
                                            incrementCounter()
                                          },
                                          style:ElevatedButton.styleFrom(
                                              backgroundColor: Colors.orange[800],
                                        ),
                                          child: const Text(
                                            "Buy Now",
                                            style: TextStyle(
                                                fontFamily: 'Archivo',
                                                fontWeight: FontWeight.bold
                                            ),
                                          )
                                      ),
                                  ),
                                  Positioned(
                                    top:10,
                                    right: 15,
                                    child:Text(
                                      "--SHOE 2--",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        shadows:[ Shadow(
                                            color: Colors.black.withOpacity(0.3),
                                            offset: const Offset(-2, 4),
                                            blurRadius: 10),]
                                      ),
                                    )
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child:Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child:Image.asset(
                                      'assets/Images/Sneaker-1.jpg',
                                      width: 360,
                                    ),
                                  ),
                                  Positioned(
                                    top:10,
                                    left: 15,
                                    child:ElevatedButton(
                                        onPressed: () =>{
                                          incrementCounter()
                                        },
                                        style:ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orange[800],
                                        ),
                                        child: const Text(
                                          "Buy Now",
                                          style: TextStyle(
                                              fontFamily: 'Archivo',
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                  ),
                                  Positioned(
                                      top:10,
                                      right: 15,
                                      child:Text(
                                        "--SHOE 3--",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            shadows:[ Shadow(
                                                color: Colors.black.withOpacity(0.3),
                                                offset: const Offset(-2, 4),
                                                blurRadius: 10),]
                                        ),
                                      )
                                  ),
                                ]
                            ),
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
