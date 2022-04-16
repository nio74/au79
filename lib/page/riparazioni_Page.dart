import 'package:au79/bloc/lista_riparazioni_bloc.dart';
import 'package:au79/model/riparazioni_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RiparazionePage extends StatefulWidget {
  RiparazionePage({Key? key}) : super(key: key);

  @override
  State<RiparazionePage> createState() => _PageRiparazioniState();
}

class _PageRiparazioniState extends State<RiparazionePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ListaRiparazioniBloc>(context)
        .add(ListaRiparazioniBlocEventInit());
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(),
      Expanded(
        child: Column(children: [
          Expanded(
              child: Container(
                  //color: Colors.red,
                  //height: 100,
                  child: sectionBuste(context))),
        ]),
      )
    ]);
  }

  Widget sectionBuste(BuildContext context) {
    return BlocBuilder<ListaRiparazioniBloc, ListaRiparazioniBlocState>(
        builder: (context, state) {
      if (state is ListaRiparazioniBlocStateLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        final riparazioni =
            (state as ListaRiparazioniBlocStateLoaded).riparazioni;
        return ListView.builder(
            itemCount: riparazioni.length,
            itemBuilder: (context, index) {
              return Row(children: [
                Card(child: Text(riparazioni[index].codice.toString())),
                Card(child: Text(riparazioni[index].oggetti)),
                Card(child: Text(riparazioni[index].lavoriFaFare)),
              ]);
            });
      }
    });
  }
}
