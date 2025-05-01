import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 9'),
        backgroundColor: Color(0xffacb2d3),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        child: Center(
          child: AnimatedSize(
            curve: Curves.easeIn,
            duration: const Duration(seconds: 1),
            child: FlutterLogo(size: _size),
          ),
        ),
      ),
    );
  }
}
