import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 7'),
        backgroundColor: Color(0xfff3fcae),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: selected ? 200.0 : 50.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
