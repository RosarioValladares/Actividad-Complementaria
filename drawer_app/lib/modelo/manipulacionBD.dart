import 'package:drawer_app/modelo/bitacora.dart';
import 'package:drawer_app/modelo/definicionBD.dart';
import 'package:sqflite/sqflite.dart';

//Esta clase toma la conexión creada en la clase de DefinicionBD para insertar y recuperar datos
class ManipulacionBD {
  final dbProvider = DefinicionBD.dbProvider;

  void cargarDatos() async {
    //Esta sección debe ser sustituida por un formulario. Practiquen creando uno propio con ayuda de los tutoriales de Flutter, checa
    // https://flutter.dev/docs/cookbook/forms/validation
    var vuelo1 = bitacora(
        fecha: '11/02/2019',
        actividad: 'barrer',
        descripcion: 'barrer el piso');
    var vuelo2 = bitacora(
        fecha: '12/02/2019',
        actividad: 'Trapear',
        descripcion: 'trapear el piso');
    var vuelo3 = bitacora(
        fecha: '13/02/2019',
        actividad: 'aspirar',
        descripcion: 'aspirar el piso');
    var vuelo4 = bitacora(
        fecha: '14/02/2019',
        actividad: 'etudiar',
        descripcion: 'estudiar Flutter');
    var vuelo5 = bitacora(
        fecha: '15/02/2019',
        actividad: 'examen',
        descripcion: 'Reolver el examen del mejor profe del mundo');
    var vuelo6 = bitacora(
        fecha: '16/02/2019',
        actividad: 'comida',
        descripcion: 'preparar banquete para la familia real');
    var vuelo7 = bitacora(
        fecha: '17/02/2019',
        actividad: 'conferencia',
        descripcion: 'videoposada con mis amigos');
    var vuelo8 = bitacora(
        fecha: '18/02/2019',
        actividad: 'cuidar perro',
        descripcion: 'cuidar al perro que coma y no se muera');
    var vuelo9 = bitacora(
        fecha: '18/02/2019',
        actividad: 'limpiar carro',
        descripcion: 'Limpiar el carro porque esta muy cochino');
    var vuelo10 = bitacora(
        fecha: '18/02/2019',
        actividad: 'pintar cuarto',
        descripcion: 'cuidar al perro que coma y no se muera');
    var vuelo11 = bitacora(
        fecha: '18/02/2019',
        actividad: 'casa cinema',
        descripcion: 'ver netix en mi casa');
    var vuelo12 = bitacora(
        fecha: '18/02/2019',
        actividad: 'casa GYM',
        descripcion: 'hacer ejercicio con videos de youtube');
    var vuelo13 = bitacora(
        fecha: '18/02/2019',
        actividad: 'fiesta familia',
        descripcion: 'video confferencia con la fmilia');
    var vuelo14 = bitacora(
        fecha: '18/02/2019',
        actividad: 'dormir',
        descripcion: 'dormir en mi camita');
    var vuelo15 = bitacora(
        fecha: '18/02/2019',
        actividad: 'pasarela de moda',
        descripcion: 'probr outfits para cuando termine la cuarentena');
    //Inserta registros a la tabla
    await insertVuelo(vuelo1);
    await insertVuelo(vuelo2);
    await insertVuelo(vuelo3);
    await insertVuelo(vuelo4);
    await insertVuelo(vuelo5);
    await insertVuelo(vuelo6);
    await insertVuelo(vuelo7);
    await insertVuelo(vuelo8);
    await insertVuelo(vuelo9);
    await insertVuelo(vuelo10);
    await insertVuelo(vuelo11);
    await insertVuelo(vuelo12);
    await insertVuelo(vuelo13);
    await insertVuelo(vuelo14);
    await insertVuelo(vuelo15);
  }

  Future<void> insertVuelo(bitacora vuelo) async {
    final db = await dbProvider.database;
    // Inserta un vueo en la tabla correspondiente. También prevee
    // la repetición de registros `conflictAlgorithm`, reemplazandolos
    await db.insert(
      'actividades',
      vuelo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<bitacora>> getVuelos() async {
    final db = await dbProvider.database;
    // Se recuperan todos los registros de la tabla.
    final List<Map<String, dynamic>> maps = await db.query('actividades');

    // Convierte  List<Map<String, dynamic>  a List<Dog>.
    return List.generate(maps.length, (i) {
      return bitacora(
        fecha: maps[i]['fecha'],
        actividad: maps[i]['actividad'],
        descripcion: maps[i]['descripcion'],
      );
    });
  }
}
