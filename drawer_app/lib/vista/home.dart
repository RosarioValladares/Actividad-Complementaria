import 'package:flutter/material.dart';
import 'package:drawer_app/vista/vuelosListas.dart';

class Home extends StatelessWidget {
  static BuildContext contexto;

  const Home({Key key}) : super(key: key);

  ListTile getListItem(Icon icono, String opcion, String route) {
    return ListTile(
      leading: icono,
      title: Text(opcion),
      onTap: () {
        Navigator.pushNamed(contexto, route);
      },
    );
  }

  ListView getMenu(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
            child: Column(
          children: <Widget>[
            Text("Ma. Del Rosario Valladares Orta"),
            Image(
              image: AssetImage("assets/profile.jpg"),
              height: 100,
              width: 100,
            )
          ],
        )),
        getListItem(Icon(Icons.list), "Actividades listas", "/"),
        getListItem(
            Icon(Icons.data_usage), "Actividades Sqlite", "/ActividadesBD"),
        getListItem(
            Icon(Icons.computer), "Actividades WebService", "/vuelosWeb"),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    contexto = context;

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina principal"),
      ),
      drawer: Drawer(
        child: getMenu(context),
      ),
      body: VuelosListas(),
    );
  }
}
