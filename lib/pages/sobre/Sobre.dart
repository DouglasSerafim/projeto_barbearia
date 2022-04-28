// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabalho_flutter/pages/login/LoginPage.dart';
import 'package:trabalho_flutter/pages/perfil/perfil.dart';
import 'package:trabalho_flutter/pages/sobre/Sobre.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("assets/logo.png"),
          ),
          UserAccountsDrawerHeader(
            //currentAccountPicture: Image.network( ),
            accountName: Text(
              'Olá, Plotze',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            accountEmail: Text('plotze@fatecrp.gov.br'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            subtitle: Text('Admire a sua barba!'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => perfil(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_view_month),
            title: Text('Agendar Serviços'),
            subtitle: Text('Vamos dar aquele trato?'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Meus Agendamentos'),
            subtitle: Text('Não esquece o dia, ok?'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Sobre'),
            subtitle: Text('Quem nós somos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sobre(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.outbond),
            title: Text('Sair'),
            subtitle: Text('Volte Sempre :)'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ]),
      ),
      appBar: AppBar(
        title: Text('Sobre'),
      ),
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
              height: 30,
            ),
            Text(
              "Quem nós somos?",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Este aplicativo foi desenvolvido para aula de Programação de dispositivos móveis, ministrada pelo Dr. Professor Plotze, pelos discentes Douglas e Lucas do quarto semestre de ADS. \n\n\n Este aplicativo foi desenvolvido em Flutter no Visual Studio Code com o objetivo de ser uma ponte facilitadora de agendamentos de serviços estéticos de uma barbearia.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/douglas.png"),
                ),
              ),
              accountName: Text(
                'Douglas',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              accountEmail: Text('douglas.serafim@fatecrp.gov.br'),
            ),
            Center(
              child: Text(
                "Douglas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/lucas.jpg"),
            ),
            Center(
              child: Text(
                "Lucas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
