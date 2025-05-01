import 'package:flutter/material.dart';

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  State<PantallaDiez> createState() => _PantallaDiezState();
}

class _PantallaDiezState extends State<PantallaDiez> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 10'),
        backgroundColor: Color(0xffc19263),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
