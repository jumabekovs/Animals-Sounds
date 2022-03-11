import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SoundsApp());

class SoundsApp extends StatelessWidget {
  void makeVoice(String animal) {
    final player = AudioCache();
    player.play('$animal.wav');
  }

  Expanded animalLogo() {
    return Expanded(
      child: FlatButton(
        color: Colors.lightGreenAccent,
        onPressed: () {
          makeVoice('dog');
        },
        child: Image.asset('images/dog.png'),
      ),
    );
  }

  const SoundsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text(
            "How They Talk",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontFamily: 'Quintessential-Regular',
              fontSize: 27,
            ),
          ),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: 150,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('dog');},
                          child: Image.asset(
                            'images/dog.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('mouse');},
                          child: Image.asset(
                            'images/mouse.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 150,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('chicken');},
                          child: Image.asset(
                            'images/chicken.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 150,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('cow');},
                          child: Image.asset(
                            'images/cow.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: 150,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('duck');},
                          child: Image.asset(
                            'images/duck.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 150,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('horse');},
                          child: Image.asset(
                            'images/horse.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('cat');},
                          child: Image.asset(
                            'images/cat.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 150,
                    child: Column(
                      children: [
                        FlatButton(
                          onPressed: () {makeVoice('sheep');},
                          child: Image.asset(
                            'images/sheep.png',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
