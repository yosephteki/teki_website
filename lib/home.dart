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
      backgroundColor: Colors.black87,
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [Color.fromARGB(255, 234, 240, 188), Colors.white],
            center: Alignment.topLeft,
            radius: 0.5,
          ),
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * (80.0 / 100.0),
                  height: 300,
                  child: Card(
                    margin: const EdgeInsets.only(top: 40),
                    color: Colors.black87,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(30),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  style: TextStyle(
                                      color: Colors.lime,
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold),
                                  "YOSEP"),
                              Text(
                                  style: TextStyle(
                                      color: Colors.lime,
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold),
                                  "TEKI"),
                              Text(
                                  style: TextStyle(
                                      color: Colors.lime,
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold),
                                  "NUGROHO"),
                            ],
                          ),
                        ),
                        const Card(color: Colors.red)
                      ],
                    ),
                  ),
                )
              ],
            ),
            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   color: Colors.white,
            // ),
            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   color: Colors.blue,
            // ),
            // Container(
            //   height: 2000,
            //   width: double.infinity,
            //   color: Colors.green,
            // )
          ],
        ),
      ),
    );
  }
}
