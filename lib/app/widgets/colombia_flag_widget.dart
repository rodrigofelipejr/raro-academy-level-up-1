import 'package:flutter/material.dart';

class ColombiaFlagWidget extends StatelessWidget {
  const ColombiaFlagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Text('Colombia'),
        ),
        Container(
          height: screen.height * 0.3,
          width: screen.width,
          color: Color(0xFF049C3C),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xFFFCD414),
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xFF043C94),
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xFFCC1424),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
