import 'package:au79/page/riparazioni_Page.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> with WindowListener {
  @override
  void initState() {
    windowManager.addListener(this);
    _init();
    super.initState();
  }

  void _init() async {
    // Add this line to override the default close handler
    await windowManager.setPreventClose(true);
    setState(() {});
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  void onWindowClose() async {
    bool _isPreventClose = await windowManager.isPreventClose();
    if (_isPreventClose) {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Sei sicuro che vuoi uscire?'),
            actions: [
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('SI'),
                onPressed: () {
                  Navigator.of(context).pop();
                  windowManager.destroy();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (details) {
        windowManager.startDragging();
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            actions: [
              IconButton(
                  onPressed: () {
                    windowManager.maximize();
                  },
                  icon: const Icon(
                    Icons.aspect_ratio_rounded,
                  )),
              IconButton(
                  onPressed: () {
                    windowManager.minimize();
                  },
                  icon: const Icon(
                    Icons.call_to_action_outlined,
                  )),
              IconButton(
                  onPressed: () {
                    onWindowClose();
                  },
                  icon: const Icon(
                    Icons.close,
                  )),
            ],
            title: const Text('Au79'),
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 65.0,
                  child: DrawerHeader(
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                    child: const Text('Au79'),
                  ),
                ),
                ExpansionTile(
                  leading: const Icon(Icons.archive_outlined),
                  title: const Text('Magazzino'),
                  children: [
                    ListTile(
                      title: const Text('inserimento'),
                      onTap: () {
                        // Navigator.pushNamed(context, '/riparazioni');
                      },
                    ),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.key),
                  title: const Text('Riparazioni'),
                  onTap: () {
                    Navigator.pushNamed(context, '/riparazioni');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Impostazioni'),
                  onTap: () {
                    Navigator.pushNamed(context, '/impostazioni');
                  },
                ),
              ],
            ),
          ),
          body:
              Container() /* DefaultTabController(
            length: 6,
            child: Scaffold(
              body: NestedScrollView(
                floatHeaderSlivers: false,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    const SliverAppBar(
                      //title: Text('Tabs Demo'),
                      toolbarHeight: 10,
                      pinned: false,
                      floating: false,
                      bottom: TabBar(
                        isScrollable: false,
                        tabs: [
                          Tab(
                            child: Text('Vendita'),
                          ),
                          Tab(child: Text('Oreficeria')),
                          Tab(child: Text('Orologeria')),
                          Tab(child: Text('Gioielleria')),
                          Tab(child: Text('Argernteria')),
                          Tab(child: Text('Riparazioni')),
                        ],
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    Icon(Icons.flight, size: 350),
                    Icon(Icons.directions_transit, size: 350),
                    Icon(Icons.directions_car, size: 350),
                    Icon(Icons.directions_bike, size: 350),
                    Icon(Icons.directions_boat, size: 350),
                    RiparazionePage(),
                  ],
                ),
              ),
            )),
       */
          ),
    );
  }
}
