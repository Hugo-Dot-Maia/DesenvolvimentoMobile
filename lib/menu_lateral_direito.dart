import 'package:flutter/material.dart';

import 'descricao_app.dart';
import 'main_page.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'DATA GAMES',
              style: TextStyle(color: Colors.white, fontSize: 25),

            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/controller.png'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Sobre este App'),
            onTap: () => {Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const Descricao()))},
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Perfil'),
            onTap: () => {Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const MainPage()))},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          //ListTile(
          //leading: Icon(Icons.border_color),
          //title: Text('Feedback'),
          //onTap: () => {Navigator.of(context).pop()},
          //),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => {Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => MainPage()
            ))},
          ),
        ],
      ),
    );
  }
}