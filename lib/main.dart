import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi app",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola Mundo"),
      ),
      //Al agregar muchos elementos, se crea un error de pantalla
      //porque se sale de la pantalla
      //en vez de usar un column, usar un listView
      //esto agrega un scroll
      body: ListView(
        //para agregar varias imagenes se necesita una columna
        children: <Widget>[
          //se puede poner varios elementos dentro, recibe una lista
          Container(
            //por cada imagen, un container
            padding: const EdgeInsets.all(
                20.5), //para padding siempre en float values
            child: Image.network(
                "https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2021/11/Naruto-fanart-imagina-villano-historia.jpg?fit=1280%2C720&quality=80&ssl=1"),
          ),
          Container(
            padding: const EdgeInsets.all(
                20.5), //para padding siempre en float values
            child: Image.network(
                "https://fotografias-neox.atresmedia.com/clipping/cmsimages01/2022/03/04/6F3E2E33-8AAF-4607-8B3E-80261F00FB86/naruto_98.jpg?crop=1920,1080,x0,y0&width=1900&height=1069&optimize=high&format=webply"),
          ),
          Container(
            padding: const EdgeInsets.all(
                20.5), //para padding siempre en float values
            child: Image.network(
                "https://fotografias-neox.atresmedia.com/clipping/cmsimages01/2022/03/04/6F3E2E33-8AAF-4607-8B3E-80261F00FB86/naruto_98.jpg?crop=1920,1080,x0,y0&width=1900&height=1069&optimize=high&format=webply"),
          ),
          Container(
            padding: const EdgeInsets.all(
                20.5), //para padding siempre en float values
            child: Image.network(
                "https://fotografias-neox.atresmedia.com/clipping/cmsimages01/2022/03/04/6F3E2E33-8AAF-4607-8B3E-80261F00FB86/naruto_98.jpg?crop=1920,1080,x0,y0&width=1900&height=1069&optimize=high&format=webply"),
          ),
        ],
      ),
    );
  }
}
