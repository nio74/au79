import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WindowListener {
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
            title: Text('Are you sure you want to close this window?'),
            actions: [
              TextButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Yes'),
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
          actions: [
            IconButton(
                onPressed: () {
                  onWindowClose();
                },
                icon: const Icon(
                  Icons.close,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call_to_action_outlined,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_balance_sharp,
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
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('riparazioni'),
                onTap: () {
                  Navigator.pushNamed(context, '/riparazioni');
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: DefaultTabController(
            length: 6,
            child: Scaffold(
              body: NestedScrollView(
                floatHeaderSlivers: false,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    new SliverAppBar(
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
                          Tab(child: const Text('Oreficeria')),
                          Tab(child: const Text('Orologeria')),
                          Tab(child: const Text('Gioielleria')),
                          Tab(child: const Text('Argernteria')),
                          Tab(child: const Text('Riparazioni')),
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
                    Icon(Icons.directions_boat, size: 350),
                  ],
                ),
              ),
            )),
      ),
    );
    /* Scaffold(
      appBar: AppBar(
          title: Center(
        child: Row(children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
            child: Text('Riparazioni'),
            onPressed: () {
              Navigator.pushNamed(context, '/riparazioni');
            },
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text('data'),
            onPressed: () {},
          ),
        ]),
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
   */
  }
}
