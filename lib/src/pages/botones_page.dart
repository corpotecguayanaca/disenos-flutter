import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [_titulos(), _botones()],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1.0),
        fixedColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.5),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(25, 25, 38, 1.0),
            ]),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 320.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          color: Colors.pink,
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0),
          ]),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(top: -90, child: cajaRosa),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Clasify transaction",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Clasify this transaction into a particular category",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botones() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.indigoAccent, Icons.face_4_rounded, "Users"), 
            _crearBotonRedondeado(Colors.greenAccent, Icons.train, "Transport")
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.shopping_bag, "Shopping"), 
            _crearBotonRedondeado(Colors.amberAccent, Icons.receipt, "Bills")
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent, Icons.shopping_bag, "Shopping"), 
            _crearBotonRedondeado(Colors.orangeAccent, Icons.movie, "Entertaiment")
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.limeAccent, Icons.sports_football, "Sports"), 
            _crearBotonRedondeado(Colors.purpleAccent, Icons.work, "Work")
          ]
        ),
      ],
    );
  }
  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 180.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 36.0,
                  ),
                ),
                Text(
                  texto,
                  style: TextStyle(
                    color: color,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
