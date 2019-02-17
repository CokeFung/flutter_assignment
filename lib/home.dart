import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  List page = ['Home', 'Notify', 'Map', 'Profile', 'Setup'];
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab( icon: Icon(Icons.view_compact)),
            Tab( icon: Icon(Icons.notifications)),
            Tab( icon: Icon(Icons.explore)),
            Tab( icon: Icon(Icons.person)),
            Tab( icon: Icon(Icons.settings)),
          ],
          labelColor: Colors.red,
        ),
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Center(
                child: Text('Home', style: TextStyle(fontSize: 25, color: Colors.red)),
              ),
            ),
            Container(
              child: Center(
                child: Text('Notify', style: TextStyle(fontSize: 25, color: Colors.red)),
              ),
            ),
            Container(
              child: Center(
                child: Text('Map', style: TextStyle(fontSize: 25, color: Colors.red)),
              ),
            ),
            Container(
              child: Center(
                child: Text('Profile', style: TextStyle(fontSize: 25, color: Colors.red)),
              ),
            ),
            Container(
              child: Center(
                child: Text('Setup', style: TextStyle(fontSize: 25, color: Colors.red)),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 