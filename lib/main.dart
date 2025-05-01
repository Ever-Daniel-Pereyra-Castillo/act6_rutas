import 'package:flutter/material.dart';
import 'package:act6_widgets_rutas/pagina_inicio.dart';
import 'package:act6_widgets_rutas/pagina_uno.dart';
import 'package:act6_widgets_rutas/pagina_dos.dart';
import 'package:act6_widgets_rutas/pagina_tres.dart';
import 'package:act6_widgets_rutas/pagina_cuatro.dart';
import 'package:act6_widgets_rutas/pagina_cinco.dart';
import 'package:act6_widgets_rutas/pagina_seis.dart';
import 'package:act6_widgets_rutas/pagina_siete.dart';
import 'package:act6_widgets_rutas/pagina_ocho.dart';
import 'package:act6_widgets_rutas/pagina_nueve.dart';
import 'package:act6_widgets_rutas/pagina_diez.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
      },
    );
  }
}
