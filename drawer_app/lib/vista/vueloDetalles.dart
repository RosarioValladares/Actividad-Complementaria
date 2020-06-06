import 'package:flutter/material.dart';
import 'package:drawer_app/modelo/bitacora.dart';

class VueloDetalles extends StatelessWidget {
  final bitacora vuelo;

  VueloDetalles({this.vuelo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles de la actividad"),
      ),
      body: Center(
          child: Card(
              child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.all(20.0),
              //color: Colors.amber[600],
              child: Text(
                'Actividad: ' + vuelo.actividad,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          Container(
              margin: const EdgeInsets.all(20.0),
              //color: Colors.amber[600],
              child: Text(
                'Fecha de la actividad: ' + vuelo.fecha,
                style: TextStyle(fontSize: 20),
              )),
          Container(
              margin: const EdgeInsets.all(20.0),
              color: Colors.pink,
              child: Text(
                'Descripción de la actividad: ' + vuelo.descripcion,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ],
      ))),
    );
  }
}
