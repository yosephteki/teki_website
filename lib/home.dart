import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDekstop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  Future<List<Map<String, dynamic>>> loadJsonData() async {
    try {
      String jsonString = await rootBundle.loadString('data/experience.json');
      List<dynamic> jsonData = jsonDecode(jsonString);
      List<Map<String, dynamic>> jsonList =
          List<Map<String, dynamic>>.from(jsonData);
      return jsonList;
    } catch (error) {
      print('Error loading data from JSON: $error');
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(child: isDekstop(context) ? Navigationbar() :null),
          const Title(),
          // FutureBuilder(
          //   future: loadJsonData(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const CircularProgressIndicator();
          //     } else if (snapshot.hasError) {
          //       return const Text("Error loading data");
          //     } else {
          //       List<Map<String, dynamic>> jsonList = snapshot.data!;
          //       return Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Container(
          //             color: Colors.red,
          //             height: 300,
          //             width: screenWidth * 0.7, // Set a specific width
          //             child: Align(
          //               alignment: Alignment.center,
          //               child: ListView.builder(
          //                 scrollDirection: Axis.horizontal,
          //                 itemCount: jsonList.length,
          //                 itemBuilder: (context, index) {
          //                   String title = jsonList[index]["title"];
          //                   return Container(
          //                     width: screenWidth * 0.1295,
          //                     margin: EdgeInsets.all(10),
          //                     color: Colors.amberAccent,
          //                     child: Text(title),
          //                   );
          //                 },
          //               ),
          //             ),
          //           ),
          //         ],
          //       );
          //     }
          //   },
          // ),
          // const Body(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                    ),
                    Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        "Lawencon\nInternasional")
                  ],
                ),
                // ExperienceSeparator(),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => print("hehehe"),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                    const Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        "Xapiens\nTeknologi")
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                    ),
                    Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        "Bank\nRakyat\nIndonesia")
                  ],
                ),
                const Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                    ),
                    Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        "Bank\nSinarmas")
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$screenWidth',
                  style: const TextStyle(fontSize: 70),
                ),
                const SizedBox(
                  width: 10,
                ),
                isDekstop(context)
                    ? const Text(
                        'Dekstop',
                        style: TextStyle(fontSize: 70),
                      )
                    : const Text("Mobile")
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExperienceSeparator extends StatelessWidget {
  const ExperienceSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(2),
            width: 10,
            height: 5,
            color: Colors.black87,
          ),
          Container(
            margin: EdgeInsets.all(2),
            width: 10,
            height: 5,
            color: Colors.black87,
          ),
          Container(
            margin: EdgeInsets.all(2),
            width: 10,
            height: 5,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });
  bool isDekstop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: screenWidth * (80.0 / 100.0),
          height: 250,
          child: Container(
            // color: Colors.amber,
            margin: const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4), // Shadow color
                    offset: Offset(0, 10), // Shadow offset (X, Y)
                    blurRadius: 10, // Blur radius
                    spreadRadius: 3, // Spread radius
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
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
                Expanded(
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                                child: isDekstop(context)
                                    ? Text(
                                        style: TextStyle(
                                            color: Color(0xff5FBFF9),
                                            fontSize: screenWidth * 0.04,
                                            fontWeight: FontWeight.w300),
                                        "Yosep Teki Nugroho")
                                    : Column(
                                        children: [
                                          Text(
                                              style: TextStyle(
                                                  letterSpacing: 10,
                                                  color: Color(0xff5FBFF9),
                                                  fontSize: screenWidth * 0.07,
                                                  fontWeight: FontWeight.bold),
                                              "Yosep"),
                                          Text(
                                              style: TextStyle(
                                                  color: Color(0xff5FBFF9),
                                                  letterSpacing: 10,
                                                  fontSize: screenWidth * 0.07,
                                                  fontWeight: FontWeight.bold),
                                              "Teki"),
                                          Text(
                                              style: TextStyle(
                                                  letterSpacing: 7,
                                                  color: Color(0xff5FBFF9),
                                                  fontSize: screenWidth * 0.065,
                                                  fontWeight: FontWeight.bold),
                                              "Nugroho")
                                        ],
                                      )),
                            Container(
                              child: Text(
                                  style: TextStyle(
                                      color: Color(0xff5FBFF9),
                                      fontSize: screenWidth * 0.018,
                                      // letterSpacing: screenWidth * 0.01,
                                      fontWeight: FontWeight.normal),
                                  "Software Engineer"),
                            ),
                          ],
                        ),
                        // isDekstop(context) ? Text("") : Text("")
                      ],
                    ),
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
                        stops: [0.2, 1.0],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        width: screenWidth * 0.4,
                        height: screenWidth * 0.4,
                        'pexels-adrien-olichon-2387533.jpg'),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Navigationbar extends StatelessWidget {
  const Navigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(width: 10,),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: const Text(
                      style: TextStyle(
                        decoration: TextDecoration.overline,
                        decorationColor: Color(0xff5FBFF9),
                        decorationThickness: 7,
                        fontWeight: FontWeight.bold,
                      ),
                      'Home'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: const Text(
                      style: TextStyle(
                        decorationColor: Color(0xff5FBFF9),
                        decorationThickness: 7,
                        fontWeight: FontWeight.bold,
                      ),
                      'About Me'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      style: TextStyle(
                        decorationColor: Color(0xff5FBFF9),
                        decorationThickness: 7,
                        fontWeight: FontWeight.bold,
                      ),
                      'Portfolio'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      style: TextStyle(
                        decorationColor: Color(0xff5FBFF9),
                        decorationThickness: 7,
                        fontWeight: FontWeight.bold,
                      ),
                      'Contact Me'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
