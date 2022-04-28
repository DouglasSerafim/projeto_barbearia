import 'package:flutter/material.dart';
import 'package:trabalho_flutter/pages/login/LoginPage.dart';
import 'package:trabalho_flutter/pages/sobre/Sobre.dart';

class perfil extends StatelessWidget {
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
        title: Text('Perfil'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/user.jpeg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Container(
                height: 56,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(56),
                  ),
                ),
                child: SizedBox.expand(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Telefone",
                  labelStyle: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.w400)),
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
                child: FlatButton(
                  child: Text(
                    "Atualizar Perfil",
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
          ],
        ),
      ),
    );
  }
}
