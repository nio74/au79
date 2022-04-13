import 'package:au79/screen/home_Screen.dart';
import 'package:au79/screen/riparazioni_screen.dart';
import 'package:flutter/material.dart';

class RouteGeneretor {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/riparazioni':
        return MaterialPageRoute(builder: (_) => RiparazioniScreen());
      /* case '/edit_employee':
        if (args is int) {
          return MaterialPageRoute(
              builder: (_) => EditEmployeeScreen(
                    id: args,
                  )); 
        
        return _errorRoute();}*/

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return (MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No Rute'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Sorry no route was found',
            style: TextStyle(color: Colors.red, fontSize: 18.0),
          ),
        ),
      );
    }));
  }
}
