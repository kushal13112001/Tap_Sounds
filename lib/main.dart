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
              child: FlatButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-a_A_major.wav"),
                },
                child: Text("A"),
                color: Color(0xffFADBD8),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-b_B_major.wav"),
                },
                child: Text("B"),
                color: Color(0xffD7BDE2),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-c_C_major.wav"),
                },
                child: Text("C"),
                color: Color(0xff5499C7),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-d_D_major.wav"),
                },
                child: Text("D"),
                color: Color(0xff1ABC9C),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-e_E_major.wav"),
                },
                child: Text("E"),
                color: Color(0xffF7DC6F),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-f_F_major.wav"),
                },
                child: Text("F"),
                color: Color(0xff5D6D7E),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => {
                  HapticFeedback.heavyImpact(),
                  player.play("piano-g_G_major.wav"),
                },
                child: Text("G"),
                color: Color(0xff85929E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
