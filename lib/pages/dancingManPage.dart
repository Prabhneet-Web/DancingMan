import "package:flutter/material.dart";

class DancingMan extends StatefulWidget {
  const DancingMan({Key? key}) : super(key: key);

  @override
  _DancingManState createState() => _DancingManState();
}

class _DancingManState extends State<DancingMan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.asset("lib/assets/images/dancingCartoon.gif")]
      ),
    );
  }
}
