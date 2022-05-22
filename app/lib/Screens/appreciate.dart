import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoaPage extends StatelessWidget {
  final color;
  LoaPage({this.color});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'LEARN TO APPRICIATE WHAT\nYOU HAVE',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.amaticSc(
                        textStyle: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(155, 255, 255, 255),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    size: 42,
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.end,
                  children: [
                    SizedBox(
                      height: 8,
                      width: double.maxFinite,
                    ),
                    Column(
                      children: [
                        Stack(
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
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(
                                Icons.favorite_outline_rounded,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Stack(
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
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.add_comment_outlined,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Stack(
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
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.share,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
