import 'package:flutter/material.dart';
import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/elementoLista.dart';

class VuelosListas extends StatelessWidget {
  static String routeName = "/vuelosListas";

  const VuelosListas({Key key}) : super(key: key);

  List<bitacora> contruirLista() {
    var actividad1 = bitacora(
        fecha: '01/02/2019',
        actividad: 'barrer',
        descripcion: 'barrer el piso con la escoba');

    var actividad2 = bitacora(
        fecha: '01/02/2019',
        actividad: 'trapear',
        descripcion: 'trapear el piso con el trapeador');

    var actividad3 = bitacora(
        fecha: '01/02/2019',
        actividad: 'aspirar',
        descripcion: 'aspirar el piso con la aspiradora');

    var actividad4 = bitacora(
        fecha: '01/02/2019',
        actividad: 'sacudir',
        descripcion: 'sacudir el piso con la franela');
    Map<int, bitacora> mapaVuelos = {
      0: actividad1,
      1: actividad2,
      2: actividad3,
      3: actividad4,
      4: actividad3,
      5: actividad2,
      6: actividad1,
      7: actividad2,
      8: actividad3,
      9: actividad4,
      10: actividad3,
      11: actividad2,
      12: actividad1,
      13: actividad4,
      14: actividad3,
      15: actividad2,
      16: actividad1,
      17: actividad4,
      18: actividad3,
      19: actividad2,
      20: actividad1,
    };
    //print(mapaVuelos[1].detalles);
    return List.generate(mapaVuelos.length, (i) {
      //print('$i');
      return bitacora(
          fecha: mapaVuelos[i].fecha,
          actividad: mapaVuelos[i].actividad,
          descripcion: mapaVuelos[i].descripcion);
    });
  }

  List<ListItem> bitacoraVuelos() {
    return contruirLista()
        .map((bitacora) => ListItem(registro: bitacora))
        .toList();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: bitacoraVuelos(),
    );
  }
}
