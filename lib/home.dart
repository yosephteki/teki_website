import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * (50.0 / 100.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width * (25.0 / 100.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          style: TextStyle(
                            decoration: TextDecoration.overline,
                            decorationColor: Color(0xff5FBFF9),
                            decorationThickness: 7,
                            fontWeight: FontWeight.bold,
                          ),
                          'Home'),
                      Text(
                          style: TextStyle(
                            decorationColor: Color(0xff5FBFF9),
                            decorationThickness: 7,
                            fontWeight: FontWeight.bold,
                          ),
                          'About Me'),
                      Text(
                          style: TextStyle(
                            decorationColor: Color(0xff5FBFF9),
                            decorationThickness: 7,
                            fontWeight: FontWeight.bold,
                          ),
                          'Portfolio'),
                      Text(
                          style: TextStyle(
                            decorationColor: Color(0xff5FBFF9),
                            decorationThickness: 7,
                            fontWeight: FontWeight.bold,
                          ),
                          'Contact Me'),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * (80.0 / 100.0),
                  height: 250,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.4), // Shadow color
                            offset: Offset(0, 10), // Shadow offset (X, Y)
                            blurRadius: 10, // Blur radius
                            spreadRadius: 3, // Spread radius
                          ),
                        ],
                        // color: Colors.black87,
                        borderRadius: BorderRadius.circular(30),
                        // gradient: const LinearGradient(
                        //     tileMode: TileMode.mirror,
                        //     colors: [Colors.black, Colors.black87]),
                        gradient: const RadialGradient(
                            radius: 10,
                            focalRadius: 1000,
                            tileMode: TileMode.clamp,
                            center: Alignment.bottomCenter,
                            colors: [
                              Colors.black87,
                              Color(0xff2E2C2F),
                            ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 45),
                          // child: ClipRRect(
                          //   borderRadius: BorderRadius.circular(30),
                          //   child: ShaderMask(
                          //     shaderCallback: (Rect bounds) {
                          //       return const LinearGradient(
                          //         begin: Alignment.centerRight,
                          //         end: Alignment.centerLeft,
                          //         colors: [Colors.transparent, Colors.black],
                          //         stops: [0.10, 1.0],
                          //       ).createShader(bounds);
                          //     },
                          //     blendMode: BlendMode.dstIn,
                          //     child: Image.asset(
                          //         fit: BoxFit.fitWidth,
                          //         width: 300,
                          //         'teki-1.jpeg'),
                          //   ),
                          // ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                    style: TextStyle(
                                        color: Color(0xff5FBFF9),
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                    "YOSEP TEKI NUGROHO"),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 50),
                                child: Text(
                                    style: TextStyle(
                                        color: Color(0xff5FBFF9),
                                        fontSize: 20,
                                        letterSpacing: 10,
                                        fontWeight: FontWeight.normal),
                                    "Software Engineer"),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.transparent, Colors.black],
                                stops: [0.1, 1.0],
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.dstIn,
                            child: Image.asset(
                                fit: BoxFit.fitWidth,
                                width: 1000,
                                'pexels-adrien-olichon-2387533.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 280,
                  height: 350,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4), // Shadow color
                          offset: Offset(0, 10), // Shadow offset (X, Y)
                          blurRadius: 10, // Blur radius
                          spreadRadius: 3, // Spread radius
                        ),
                      ],
                      // color: Colors.black87,
                      borderRadius: BorderRadius.circular(30),
                      // gradient: const LinearGradient(
                      //     tileMode: TileMode.mirror,
                      //     colors: [Colors.black, Colors.black87]),
                      gradient: const RadialGradient(
                          radius: 10,
                          focalRadius: 1000,
                          tileMode: TileMode.clamp,
                          center: Alignment.bottomCenter,
                          colors: [
                            Colors.black87,
                            Color(0xff2E2C2F),
                          ])),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 50),
                  width: 1205,
                  height: 350,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4), // Shadow color
                          offset: Offset(0, 10), // Shadow offset (X, Y)
                          blurRadius: 10, // Blur radius
                          spreadRadius: 3, // Spread radius
                        ),
                      ],
                      // color: Colors.black87,
                      borderRadius: BorderRadius.circular(30),
                      // gradient: const LinearGradient(
                      //     tileMode: TileMode.mirror,
                      //     colors: [Colors.black, Colors.black87]),
                      gradient: const RadialGradient(
                          radius: 10,
                          focalRadius: 1000,
                          tileMode: TileMode.clamp,
                          center: Alignment.bottomCenter,
                          colors: [
                            Colors.black87,
                            Color(0xff2E2C2F),
                          ])),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
