import 'package:au79/model/model_Roparazioni.dart';
import 'package:flutter/material.dart';

class RiparazioniPage extends StatefulWidget {
  RiparazioniPage({Key? key}) : super(key: key);

  @override
  State<RiparazioniPage> createState() => _PageRiparazioniState();
}

class _PageRiparazioniState extends State<RiparazioniPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Row(
            children: [
              Column(),
              Stack(
                children: [sectionBuste(context)],
              ),
              Column()
            ],
          ),
          Row()
        ],
      ),
    );
  }

  Widget sectionBuste(BuildContext context) {
    ListView.builder(
        padding: EdgeInsets.all(10),
        shrinkWrap: false,
        itemCount: envelopes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(envelopes[index].codice.toString()),
            ),
          );
        });
    return ListView();
  }
}
