
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  const BasicoPage({super.key});

  final titleStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = const TextStyle(fontSize: 16.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearRowTitulo(),
            _crearRowBotones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearRowTitulo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Laguna de Mucubají", style: titleStyle,),
                const SizedBox(height: 8.0,),
                Text("Mérida, Venezuela", style: subtitleStyle,),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red, size: 30.0,),
          const Text("41", style: TextStyle(fontSize: 20.0),),
        ],
      ),
    );
  }
  
  Widget _crearRowBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _crearBoton(Icons.phone, "CALL"),
        _crearBoton(Icons.near_me, "ROUTE"),
        _crearBoton(Icons.share, "SHARE"),
      ],
    );
  }
  
  Widget _crearImagen() {
    return const SizedBox(
      width: double.infinity,
      child: Image(
        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Mucubaji.jpg/1200px-Mucubaji.jpg"),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }
  
  Widget _crearBoton(IconData icon, String text) {
    return TextButton(
      onPressed: () {}, 
      child: Column(
        children: [
          Icon(icon, size: 40.0,),
          const SizedBox(height: 5.0,),
          Text(text),
        ],
      ),
    );
  }
  
  Widget _crearTexto() {
    const data = 
    'La laguna de Mucubají está situada entre 3625-3655 m s. n. m. en el Parque Sierra Nevada, en el estado Mérida de Venezuela. Es una de las más grandes de la región. Se cree que el nombre de la laguna se debe a cómo la nombraban los habitantes indígenas de la región. Mucubají significa en dicho idioma sitio del agua grande. La laguna es de origen glacial y tiene unos diez mil años de antigüedad. El curso original de la quebrada de Mucubají, que vertía sus aguas en el río Chama, fue sellada por una morrena frontal que formó la laguna y atravesada por la falla de Boconó, lo que desvió el flujo hacia el río Orinoco y finalmente el océano Atlántico.';
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        data,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.grey[600],
          height: 1.5,
        ),
      ),
    );
  }
  
}
