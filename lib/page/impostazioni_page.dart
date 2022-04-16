import 'package:au79/utilities/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class ImpostazioniPage extends StatefulWidget {
  const ImpostazioniPage({Key? key}) : super(key: key);

  @override
  State<ImpostazioniPage> createState() => _ImpostazioniPageState();
}

class _ImpostazioniPageState extends State<ImpostazioniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Impostazioni")),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Cambia colore thema'),
                trailing: ElevatedButton(
                    onPressed: () async {
                      ThemeMode newThemeMode =
                          sharedConfig.themeMode == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light;

                      await sharedConfigManager.setThemeMode(newThemeMode);
                      await windowManager.setBrightness(
                        newThemeMode == ThemeMode.light
                            ? Brightness.light
                            : Brightness.dark,
                      );
                    },
                    child: Text("switch dark/Light")),
              ),
            ),
          ],
        ));
  }
}
