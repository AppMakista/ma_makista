import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Partenaire extends StatefulWidget {
  @override
  _PartenaireState createState() => _PartenaireState();
}

class _PartenaireState extends State<Partenaire> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                        "Makista, l'application qui fait vibrer votre coeur ",
                        textStyle:
                        TextStyle(fontSize: 15, color: Colors.blue)),
                    /*TyperAnimatedText("qui fait vibrer"),
          TyperAnimatedText("votre coeur"),*/
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

  Widget buildAnimatedText(String text) => Marquee(
    text: text,
    style: TextStyle(fontSize: 10, color: Colors.black),
    blankSpace: 90,
    velocity: 150,
    pauseAfterRound: Duration(seconds: 20),
  );
}
