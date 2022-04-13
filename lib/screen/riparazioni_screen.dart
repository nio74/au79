import 'package:flutter/material.dart';

class RiparazioniScreen extends StatefulWidget {
  RiparazioniScreen({Key? key}) : super(key: key);

  @override
  State<RiparazioniScreen> createState() => _RiparazioniScreenState();
}

class _RiparazioniScreenState extends State<RiparazioniScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Riparazioni'),
      ),
    );
  }
}
