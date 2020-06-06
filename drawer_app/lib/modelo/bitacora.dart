class bitacora {
  final String fecha;
  final String actividad;
  final String descripcion;

  bitacora({this.fecha, this.actividad, this.descripcion});

  /* Se crea el metodo toMap para transformar los datos de un formato de objeto
  a mapa. Este es necesario para introducir registros a la base de datos.
   */
  Map<String, dynamic> toMap() {
    return {
      'fecha': fecha,
      'actividad': actividad,
      'descripcion': descripcion,
    };
  }

  factory bitacora.fromJson(Map<String, dynamic> json) {
    return bitacora(
      fecha: json['fecha'],
      actividad: json['dron'],
      descripcion: json['descripcion'],
    );
  }
}
