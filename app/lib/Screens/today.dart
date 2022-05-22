import 'package:app/Screens/appreciate.dart';
import 'package:app/util/adaptivefont.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Today extends StatefulWidget {
  final colorLoa;
  const Today({this.colorLoa});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    String cdate1 = DateFormat("EEEEE dd, yyyy").format(DateTime.now());
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 250,
                        width: double.maxFinite,
                      ),
                      Text(
                        'Message of the Day',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Learn To Appriciate box
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoaPage(
                                      color: widget.colorLoa,
                                    )),
                          );
                        },
                        child: SizedBox(
                          height: 250,
                          width: double.maxFinite,
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: Stack(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(155, 255, 255, 255),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.play_circle_outlined,
                                    size: 36,
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        '. .',
                                        style: GoogleFonts.bubblegumSans(
                                          textStyle: TextStyle(
                                              fontSize: 100,
                                              color: Colors.red,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 65,
                                      ),
                                      Text(
                                        'U',
                                        style: GoogleFonts.karla(
                                          textStyle: TextStyle(
                                              fontSize: 100,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: widget.colorLoa,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 35,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Color.fromARGB(50, 115, 115, 115),
                      ),
                      Text(
                        'Art of Affirmations',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Set positive beliefs about yourself',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          children: [
                            aoaCol(),
                            aoaCol(),
                            aoaCol(),
                            aoaCol(),
                            aoaCol(),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 35,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Color.fromARGB(50, 115, 115, 115),
                      ),
                      Text(
                        'Art of Affirmations',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            aoaBox(Colors.green[100]),
                            aoaBox(Colors.amber[200]),
                            aoaBox(Colors.red[100]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: double.maxFinite,
          height: 150,
          child: Container(color: Colors.amber),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                Text(
                  cdate1,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      Icon(Icons.mail_outline),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          FirebaseAuth.instance.signOut();
                        },
                        child: Icon(Icons.logout_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 16,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Text(
                  'Hello, User',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Center(
              child: SizedBox(
                height: 160,
                width: 375,
                child: feelingsMenu(),
              ),
            ),
          ],
        )
      ],
    );
  }

  Column aoaCol() {
    return Column(
      children: [
        aoaBox(Colors.blueAccent[100]),
        aoaBox(Colors.teal[300]),
      ],
    );
  }

  Container aoaBox(final tagColor) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text(
          'Sample',
          textAlign: TextAlign.center,
          style: GoogleFonts.amaticSc(
            textStyle: TextStyle(
              color: Colors.black54,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      width: 120,
      height: 70,
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Container feelingsMenu() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How do you feel today?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Scroll to find your mood'),
            Center(
              child: SizedBox(
                width: double.maxFinite,
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.cloud_outlined),
                          ),
                          Text(
                            'Angry',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.cloud_outlined),
                          ),
                          Text(
                            'Sad',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.cloud_outlined),
                          ),
                          Text(
                            'Gloomy',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (() {}),
                            icon: const Icon(Icons.cloud_outlined),
                          ),
                          Text(
                            'Happy',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (() {
                              print('object');
                            }),
                            icon: const Icon(Icons.cloud_outlined),
                          ),
                          Text(
                            'Joyful',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
