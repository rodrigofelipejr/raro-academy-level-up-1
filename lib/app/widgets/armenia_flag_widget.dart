import 'package:flutter/material.dart';

class ArmeniaFlagWidget extends StatelessWidget {
  const ArmeniaFlagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Text('Armenia'),
        ),
        Container(
          height: screen.height * 0.3,
          width: screen.width,
          color: Color(0xFF049C3C),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Color(0xFFDC0414),
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xFF0434A4),
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xFFF4AC04),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
