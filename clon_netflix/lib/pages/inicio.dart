import 'package:clon_netflix/components/cartel_principal.dart';
import 'package:clon_netflix/components/item_imagen.dart';
import 'package:clon_netflix/components/item_round.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          listaHorizontal('Avances', ItemRound(), 9),
          SizedBox(
            height: 10.0,
          ),
          listaHorizontal(
              'Programas sobre viajes en el tiempo', ItemImagen(), 10),
          SizedBox(
            height: 10.0,
          ),
          listaHorizontal('Tendencias', ItemImagen(), 10),
          SizedBox(
            height: 10.0,
          ),
          listaHorizontal('Mi lista', ItemImagen(), 10),
          SizedBox(width: 50.0),
          Text(''),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        )
      ],
    );
  }

  bottomNavigationBar() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio', style: TextStyle(fontSize: 11.0),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Buscar', style: TextStyle(fontSize: 11.0),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections),
            title: Text('Proximamente', style: TextStyle(fontSize: 11.0),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            title: Text('Descargas', style: TextStyle(fontSize: 11.0),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze),
            title: Text('Más', style: TextStyle(fontSize: 11.0),),
          ),
        ]);
  }
}
