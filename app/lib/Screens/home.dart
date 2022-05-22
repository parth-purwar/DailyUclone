import 'package:app/Screens/appreciate.dart';
import 'package:app/Screens/music.dart';
import 'package:app/Screens/today.dart';
import 'package:app/Screens/affirmations.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int currentIndex = 1;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _randomNumber;
    Random random = Random();
    var min = 0;
    var max = 3;
    _randomNumber = min + random.nextInt(max - min);
    List ColorPick = [
      Colors.cyan[100],
      Colors.amber[300],
      Colors.pink[100],
    ];

    List Screens = [
      Affirmations(),
      Today(
        colorLoa: ColorPick[_randomNumber],
      ),
      Music(),
      Affirmations(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Screens[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedIconTheme: IconThemeData(
            size: 18,
            color: Colors.amber,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
            size: 18,
          ),
          unselectedFontSize: 12,
          selectedFontSize: 12,
          selectedItemColor: Colors.amber,
          selectedLabelStyle: TextStyle(),
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bolt_outlined),
              label: 'Affirmations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.date_range_outlined),
              label: 'Today',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
