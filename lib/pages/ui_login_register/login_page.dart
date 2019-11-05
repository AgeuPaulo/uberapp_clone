import 'package:flutter/material.dart';
import 'package:uberapp_clone/pages/ui_login_register/login_page_phone.dart';
import 'package:uberapp_clone/pages/ui_login_register/sm_confirme_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _logoApp(),
            _phoneSignInButton(),
            Text(
              "Ou entre com uma rede social",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            _signInButton("assets/google_logo.png", "Google", () {}),
            _signInButton("assets/facebook_logo.png", "Facebook", () {}),
          ],
        ),
      ),
    );
  }

  Widget _logoApp() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.4,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset("assets/login-img.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Viagens confiáveis em minutos",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _phoneSignInButton() {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, right: 10),
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset("assets/br.png"),
          ),
        ),
        Text(
          "+55",
          style: TextStyle(fontSize: 18),
        ),
        FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Text(
            "Insira seu nº de celular",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginPagePhone(),
              ),
            );
          },
        )
      ],
    );
  }

  Widget _signInButton(String asset, String title, Function onPressed) {
    return FlatButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Image(image: AssetImage(asset), height: 20.0),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
      onPressed: (){
        Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SMConfirmePage(),
              ),
            );
      }
    );
  }
}
