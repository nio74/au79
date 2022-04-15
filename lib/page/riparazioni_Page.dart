import 'package:au79/model/model_Roparazioni.dart';
import 'package:flutter/material.dart';

class RiparazionePage extends StatefulWidget {
  RiparazionePage({Key? key}) : super(key: key);

  @override
  State<RiparazionePage> createState() => _PageRiparazioniState();
}

class _PageRiparazioniState extends State<RiparazionePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(),
      Expanded(
        child: Column(children: [
          Expanded(
              child: Container(
                  color: Colors.red, height: 50, child: sectionBuste(context))),
        ]),
      )
    ]);
  }

  Widget sectionBuste(BuildContext context) {
    return ListView.builder(
        itemCount: envelopes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(envelopes[index].codice.toString()),
            ),
          );
        });
  }
}
