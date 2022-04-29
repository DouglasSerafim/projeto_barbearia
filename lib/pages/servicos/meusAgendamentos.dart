// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trabalho_flutter/pages/home/home.dart';
import 'package:trabalho_flutter/pages/servicos/profissionais.dart';

class meusAgendamentos extends StatelessWidget {
  const meusAgendamentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meus Agendamentos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => home(),
              ),
            )
          },
        ),
      ),
    );
  }
}
