import 'package:flutter/material.dart';
import 'musicard.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          musicRow(),
          musicRow(),
          musicRow(),
          musicRow(),
        ],
      ),
    );
  }

  SizedBox musicRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          MusiCard(),
          SizedBox(
            width: 10,
          ),
          MusiCard(),
        ],
      ),
    );
  }
}
