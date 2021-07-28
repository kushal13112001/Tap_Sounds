import "package:flutter/material.dart";
import "package:audioplayers/audioplayers.dart";
import 'package:flutter/services.dart';

void main() => runApp(TapSounds());

class TapSounds extends StatefulWidget {
  TapSounds({Key? key}) : super(key: key);

  @override
  _TapSoundsState createState() => _TapSoundsState();
}

class _TapSoundsState extends State<TapSounds> {
  AudioCache player = AudioCache();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("TapSounds"),
          backgroundColor: Color(0xff283747),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-a_A_major.wav"),
                },
                child: Text("A"),
                style: TextButton.styleFrom(
                  primary: Color(0xffFADBD8),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-b_B_major.wav"),
                },
                child: Text("B"),
                style: TextButton.styleFrom(
                  primary: Color(0xffD7BDE2),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-c_C_major.wav"),
                },
                child: Text("C"),
                style: TextButton.styleFrom(
                  primary: Color(0xff5499C7),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-d_D_major.wav"),
                },
                child: Text("D"),
                style: TextButton.styleFrom(
                  primary: Color(0xff1ABC9C),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-e_E_major.wav"),
                },
                child: Text("E"),
                style: TextButton.styleFrom(
                  primary: Color(0xffF7DC6F),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-f_F_major.wav"),
                },
                child: Text("F"),
                style: TextButton.styleFrom(
                  primary: Color(0xff5D6D7E),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-g_G_major.wav"),
                },
                child: Text("G"),
                style: TextButton.styleFrom(
                  primary: Color(0xff85929E),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
