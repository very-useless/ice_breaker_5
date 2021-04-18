import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pending Requests",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Pending Requests')),
        body: BodyLayout(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("Explore"),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text("Requests"),
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("Profile"),
                backgroundColor: Colors.blue
            ),

          ],
        ),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/ad.jpg'),
          ),
          title: Text('Aryan Dhankani'),
          trailing: RaisedButton(color: Colors.green,
            textColor: Colors.black,
            onPressed: null,
            child: Text("Accept Lvl 1"),),
          onTap: () {
            print('ad');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/dm.jpg'),
          ),
          title: Text('Dhruv Mehrotra'),
          trailing: RaisedButton(color: Colors.green,
            textColor: Colors.black,
            onPressed: null,
            child: Text("Accept Lvl 1"),),
          onTap: () {
            print('dm');}
      ),
      ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/st.jpg'),
          ),
          title: Text('Saumya Talera'),
          trailing: RaisedButton(color: Colors.green,
            textColor: Colors.black,
            onPressed: null,
            child: Text("Accept Lvl 2"),),
          onTap: () {
            print('st');}
      ),
    ],
  );
}