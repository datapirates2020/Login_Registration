import 'package:flutter/material.dart';
import 'package:new_login/ui/SideMenu.dart';

import 'FABBottomAppBarItem.dart';
import 'fab_with_icons.dart';
import 'layout.dart';



class HomeScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String _lastSelected = 'TAB: 0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenuPage(),

      appBar: AppBar(
        //backgroundColor:Colors.blueAccent[200],

        title: Text('Welcome'),
        centerTitle: true,
    //title: Text(widget.title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
          Colors.purpleAccent,
          Colors.blueAccent[200],
          ])
          ),
        ),
      ),
      body: Center(



      ),
      bottomNavigationBar: FABBottomAppBar(
        //centerItemText: 'A',
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.shutter_speed, text: 'Speed Test'),
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
          //FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
         // FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(
          context), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ Icons.wifi, Icons.assistant_photo, Icons.phone];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }
    void _selectedTab(int index) {
      setState(() {
        _lastSelected = 'TAB: $index';
      });
    }
    void _selectedFab(int index) {
      setState(() {
        _lastSelected = 'FAB: $index';
      });
    }
  }
      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),

      /*bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text('Explore')),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shutter_speed), title: Text('Speed Test')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
      ),*/
      bottomNavigationBar: FABBottomAppBar(
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Is'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
      ),
    );
  } */


