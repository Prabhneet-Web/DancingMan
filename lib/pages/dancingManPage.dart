import "package:flutter/material.dart";

class DancingMan extends StatefulWidget {
  const DancingMan({Key? key}) : super(key: key);

  @override
  _DancingManState createState() => _DancingManState();
}

class _DancingManState extends State<DancingMan>
    with SingleTickerProviderStateMixin {
  bool _isDancing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 112, 207, 249),
      body: SizedBox(
        width: double.infinity,
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dy > -5) {
              setState(() {
                _isDancing = false;
              });
            } else {
              setState(() {
                _isDancing = true;
              });
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _isDancing
                  ? Image.asset(
                      "lib/assets/images/dancingCartoon.gif",
                      height: 550,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      "lib/assets/images/stopCartoon.jpg",
                      height: 550,
                      fit: BoxFit.cover,
                    ),
              const SizedBox(
                height: 10,
              ),
              _isDancing
                  ? Column(children: const [
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        "Swipe Down to Stop!",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ])
                  : Column(
                      children: const [
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          "Swipe Up to Dance!",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
