import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Chamjo',
                  style: TextStyle(color: Color(0xFFE06346), fontSize: 20),
                ),
                // image dot
                Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/dot.png')),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                              image:
                                  AssetImage('assets/images/medal-star.png')),
                        ),
                      ],
                    )),
              ],
            ),
            // title: const Text('Chamjo'),
            backgroundColor: const Color(0xFFFAFAFB),
          ),
          body: SafeArea(
              child: Container(
            margin: const EdgeInsets.all(20.0),
            padding:
                const EdgeInsets.only(left: 0, top: 50.0, right: 0, bottom: 0),
            child: Column(
              children: const <Widget>[
                Image(
                  image: AssetImage("assets/images/hero.png"),
                  width: 340,
                ),
                Text("Rich together")
              ],
            ),
          ))),
    );

    //   body: SafeArea(
    //       child: Container(
    //           child: Row(children: <Widget>[
    //     Image(
    //       image: AssetImage('assets/images/payment.png'),
    //       width: 340,
    //     ),
    //     Text("Welcome to Cashy")

    //   ]))),
    // ),
  }
}
