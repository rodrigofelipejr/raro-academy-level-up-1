import 'package:flutter/material.dart';

class ScotlandFlagWidget extends StatelessWidget {
  const ScotlandFlagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Text('Scotland'),
        ),
        Container(
          height: screen.height * 0.3,
          width: screen.width,
          color: Color(0xFF045CBC),
          child: OverflowBox(
            maxWidth: screen.width * 1.2,
            child: ClipRect(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: (3.14 / 5.5),
                    child: Container(
                      width: screen.width * 1.08,
                      height: screen.width * 0.12,
                      color: Colors.white,
                    ),
                  ),
                  Transform.rotate(
                    angle: -(3.14 / 5.5),
                    child: Container(
                      width: screen.width * 2,
                      height: screen.width * 0.12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
