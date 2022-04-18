import 'package:au79/blocs/list_rip_bloc.dart';
import 'package:au79/model/repair_model.dart';
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
    BlocProvider.of<ListRepairBloc>(context).add(ListRepairBlocEventInit());
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
                  // child: sectionBuste(context))),
                  child: dataTableRepair(context))),
        ]),
      )
    ]);
  }

/*
  Widget sectionBuste(BuildContext context) {
    return BlocBuilder<ListRepairBloc, ListRepairBlocState>(
        builder: (context, state) {
      if (state is ListaRiparazioniBlocStateLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        final riparazioni = (state as ListRepairBlocStateLoaded).repairs;
        return ListView.builder(
            itemCount: riparazioni.length,
            itemBuilder: (context, index) {
              return Row(children: [
                Card(child: Text(riparazioni[index].code.toString())),
                Card(child: Text(riparazioni[index].object)),
                Card(child: Text(riparazioni[index].workTodo)),
              ]);
            });
      }
    });
  }
}
*/
  Widget dataTableRepair(BuildContext context) {
    //final blocRiparazioni = ListaRiparazioniBloc();

    return BlocBuilder<ListRepairBloc, ListRepairBlocState>(
        builder: (context, state) {
      if (state is ListaRiparazioniBlocStateLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        final repairs = (state as ListRepairBlocStateLoaded).repairs;
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
              columns: const [
                DataColumn(label: Text('code')),
                DataColumn(label: Text('Object')),
                DataColumn(label: Text('Work to do')),
              ],
              rows: repairs
                  .map<DataRow>((element) => DataRow(cells: [
                        DataCell(Text(element.code.toString())),
                        DataCell(Text(element.object)),
                        DataCell(Text(element.workTodo)),
                      ]))
                  .toList()),
        );
      }
    });
  }
}
