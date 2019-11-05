import 'package:flutter/material.dart';

class SMConfirmePage extends StatefulWidget {
  @override
  _SMConfirmePageState createState() => _SMConfirmePageState();
}

class _SMConfirmePageState extends State<SMConfirmePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Confirme suas informações",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(child: _formField("Nome")),
                Flexible(child: _formField("Sobrenome")),
              ],
            ),
            _formField("E-mail"),
            _phoneInput(),
            _floatingBox(),
          ],
        ),
      ),
      floatingActionButton: _floatingButton(),
    );
  }

  Widget _formField(String label) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.phone,
        autofocus: false,
        decoration: InputDecoration(
          labelText: label,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _phoneInput() {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0),
      child: Row(
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
          Flexible(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 20.0, 0),
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.phone,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: '(79) 99934-9234',
                ),
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
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 100.0, 20),
            child: Text(
              "Ao continuar, você confirma que leu e concorda com Termos e condições e Política de privacidade",
              style: TextStyle(fontSize: 12, height: 1.5),
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
      onPressed: () {},
      child: Icon(
        Icons.arrow_forward,
        size: 18,
      ),
    );
  }
}
