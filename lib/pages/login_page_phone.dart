import 'package:flutter/material.dart';

class LoginPagePhone extends StatefulWidget {
  @override
  _LoginPagePhoneState createState() => _LoginPagePhoneState();
}

class _LoginPagePhoneState extends State<LoginPagePhone> {
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
              padding: EdgeInsets.only(left: 20, bottom: 30),
              child: Text(
                "Insira seu nº de celular",
                style: TextStyle(fontSize: 18),
              ),
            ),
            _phoneSignInInput(),
            _agreeBox(),
          ],
        ),
      ),
      floatingActionButton: _floatingButton(),
    );
  }

  Widget _phoneSignInInput() {
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
        Flexible(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
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
    );
  }

  Widget _agreeBox() {
    return Container(
      child: Expanded(
        child: Align(
          alignment: FractionalOffset.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10, 140.0, 20),
            child: Text(
              "Ao continuar, você pode receber um SMS para confirmação. Pode haver cobrança de taxas de envio de mensagens e dados.",
              style: TextStyle(
                fontSize: 12,
                height: 1.5
              ),
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
