import 'dart:ffi';

import 'package:flutter/material.dart';

import '../menu/MenuPage.dart';

class ButtonComponent extends StatefulWidget {
  const ButtonComponent({
    Key? key,
    required this.texto,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String texto;

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(widget.texto),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        elevation: 10,
      ),
      onPressed: widget.onPressed,
    );
  }
}
