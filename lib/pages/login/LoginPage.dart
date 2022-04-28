// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:trabalho_flutter/pages/cadastro/SignUpPage.dart';
import 'package:trabalho_flutter/pages/home/home.dart';
import 'package:trabalho_flutter/pages/reset/ResetPasswordPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 328,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Center(
                  child: Text(
                    "Recuperar Senha",
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(),
                      ),
                    )
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Text(
                    "Login com o Google",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  )
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
