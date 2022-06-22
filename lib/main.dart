import 'dart:math';

import 'package:demo_plying_cards/components/playing_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Container(
            color: Colors.white,
            child: const Center(
              child: PlayingCard(),
            )));
  }
}

class PlayingCard extends StatelessWidget {
  const PlayingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var cardWidth = deviceWidth * 0.6;

    return PhysicalModel(
      color: Colors.black,
      shadowColor: Colors.black,
      shape: BoxShape.rectangle,
      elevation: 20.0,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        width: cardWidth,
        height: cardWidth * 1.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: const DefaultTextStyle(
                    style: TextStyle(fontSize: 40, color: Colors.red),
                    child: Text('A'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(1),
                  child: const Icon(Icons.heart_broken, size: 25, color: Colors.red),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: Icon(Icons.heart_broken, size: 60, color: Colors.red),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  child: Transform(
                    transform: Matrix4.rotationX(pi),
                    alignment: Alignment.center,
                    child: const Icon(Icons.heart_broken, size: 25, color: Colors.red),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Transform(
                      transform: Matrix4.rotationX(pi),
                      alignment: Alignment.center,
                      child: const DefaultTextStyle(
                        style: TextStyle(fontSize: 40, color: Colors.red),
                        child: Text('A'),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
