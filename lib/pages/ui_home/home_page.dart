import 'package:flutter/material.dart';
import 'package:uberapp_clone/pages/ui_drawer_componets/ajuda_page.dart';
import 'package:uberapp_clone/pages/ui_drawer_componets/configuracao_page.dart';
import 'package:uberapp_clone/pages/ui_drawer_componets/desconto_page.dart';
import 'package:uberapp_clone/pages/ui_drawer_componets/viagens_page.dart';
import 'package:uberapp_clone/pages/ui_profile/edit_profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: FlatButton(
                child: Text(
                  'Ageu Paulo',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EditProfilePage(),
                  ));
                },
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            _listTile("Suas viagens", ViagensPage()),
            _listTile("Ajuda", AjudaPage()),
            _listTile("Pagamento", () {}),
            _listTile("Viagens com desconto", DescontoPage()),
            _listTile("Configurações", ConfiguracaoPage()),
          ],
        ),
      ),
    );
  }

  Widget _listTile(String title, Object page) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));
      },
    );
  }
}
