import 'package:flutter/material.dart';
import 'package:uberapp_clone/pages/ui_home/home_page.dart';

class PhoneConfirmePage extends StatefulWidget {
  final String phoneNamber;

  PhoneConfirmePage(this.phoneNamber);

  @override
  _PhoneConfirmePageState createState() => _PhoneConfirmePageState();
}

class _PhoneConfirmePageState extends State<PhoneConfirmePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child: Text(
                "Insira o código de 4 dígitos enviado para " + widget.phoneNamber,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
             _textFormConfirmeBox(),
            _floatingBox(),
          ],
        ),
      ),
      floatingActionButton: _floatingButton(),
    );
  }

  Widget _textFormConfirmeBox(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 20, 170.0, 0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.phone,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: '0',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.phone,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: '0',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.phone,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: '0',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.phone,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: '0',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _floatingBox() {
    return Container(
      child: Expanded(
        child: Align(
          alignment: FractionalOffset.bottomLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 0.0, 30),
            child: Text(
              "Enviar novamente o código",
              style: TextStyle(fontSize: 15, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }

  Widget _floatingButton() {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      mini: true,
      onPressed: () {
        Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
      },
      child: Icon(
        Icons.arrow_forward,
        size: 18,
      ),
    );
  }
}
