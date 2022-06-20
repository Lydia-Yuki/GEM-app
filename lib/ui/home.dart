import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home',
    style: optionStyle),
    Text('Hymn Book',
        style: optionStyle),
    Text('About',
        style: optionStyle),
    Text('Events',
        style: optionStyle),
    Text('Database',
        style: optionStyle)
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Hymn Book"),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: "Events"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Database")
],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}