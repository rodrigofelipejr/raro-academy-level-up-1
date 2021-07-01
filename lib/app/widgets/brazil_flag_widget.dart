import 'package:flutter/material.dart';

class BrazilFlagWidget extends StatelessWidget {
  const BrazilFlagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    Widget _buildLayerGreen() {
      return Container(
        height: 130,
        width: screen.width,
        color: Color(0xFF049C3C),
      );
    }

    Widget _buildCircleBlue() {
      return OverflowBox(
        maxWidth: screen.width / 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Container(
            alignment: Alignment.center,
            width: screen.width * 0.25,
            height: screen.width * 0.25,
            color: Color(0xFF042474),
            child: Transform.rotate(
              angle: (3.14 / 8.5),
              child: Container(
                width: screen.width * 2,
                height: screen.width * 0.03,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Text('Brazil'),
        ),
        ClipRRect(
          child: Container(
            height: screen.height * 0.3,
            width: screen.width,
            color: Color(0xFFFBDB05),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: 0.55,
                  origin: Offset(200.0, 200.0),
                  child: _buildLayerGreen(),
                ),
                Transform.rotate(
                  angle: -0.55,
                  origin: Offset(200.0, -200.0),
                  child: _buildLayerGreen(),
                ),
                Transform.rotate(
                  angle: -0.55,
                  origin: Offset(-200.0, 200.0),
                  child: _buildLayerGreen(),
                ),
                Transform.rotate(
                  angle: 0.55,
                  origin: Offset(-200.0, -200.0),
                  child: _buildLayerGreen(),
                ),
                Positioned(
                  child: _buildCircleBlue(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
