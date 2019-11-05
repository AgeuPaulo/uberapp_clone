import 'package:flutter/material.dart';
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
              child: Text(
                'Ageu Paulo',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            _listTile("Suas viagens", (){}),
            _listTile("Ajuda", (){}),
            _listTile("Pagamento", (){}),
            _listTile("Viagens com desconto", (){}),
            _listTile("Configurações", (){}),
          ],
        ),
      ),
    );
  }

  Widget _listTile(String title, Function onTap) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EditProfilePage(),
        ));
        //Navigator.pop(context);
      },
    );
  }
}
