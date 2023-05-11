import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2()
        ],
      ),
    );
  }
  
  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _contenido(),
      ],
    );
  }
  
  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }
  
  Widget _imagenFondo() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/wallpaper.png'),
        fit: BoxFit.cover,
      ),
    );
  }
  
  Widget _contenido() {
    final estiloTexto = TextStyle(
      fontSize: 50.0,
      color: Colors.white,
    );

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0,),
          Text("18°", style: estiloTexto,),
          Text("Viernes", style: estiloTexto,),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down, 
            size: 60.0, 
            color: Colors.white,
          ),
        ],
      ),
    );
  }

   Widget _pagina2() {
    return Stack(
      children: [
        _colorFondo(),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: const Text(
                "Bienvenidos", 
                style: TextStyle(fontSize: 28.0),
              )
            ),
          ),
        ),
      ],
    );
  }
}