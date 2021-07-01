import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> flags = [
      JapanFlagWidget(),
      BrazilFlagWidget(),
      ColombiaFlagWidget(),
      ScotlandFlagWidget(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Flags'),
      ),
      body: ListView.builder(
        itemCount: flags.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 7.0),
            child: flags[index],
          );
        },
      ),
    );
  }
}
