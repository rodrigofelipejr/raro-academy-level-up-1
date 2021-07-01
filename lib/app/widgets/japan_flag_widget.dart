import 'package:flutter/material.dart';

class JapanFlagWidget extends StatelessWidget {
  const JapanFlagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Text('Japan'),
        ),
        Container(
          height: screen.height * 0.3,
          width: screen.width,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              radius: 1.5,
              colors: [Colors.white, Color(0xFFDDDDDD)],
            ),
          ),
          child: Center(
            child: Container(
              width: screen.width * 0.35,
              height: screen.width * 0.35,
              decoration: BoxDecoration(
                color: Color(0xFFdc143c),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
