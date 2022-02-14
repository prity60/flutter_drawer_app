import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RightDrawerWidget(),
    );
  }
}

class RightDrawerWidget extends StatelessWidget {
  const RightDrawerWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer')),
      body: Center(
        child: Icon(
          Icons.cake,
          size: 120.0,
          color: Colors.orange,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.face,
                size: 48.0,
                color: Colors.white,
              ),
              accountName: Text('H. A. Smrity'),
              accountEmail: Text('test@gmail.com'),
              otherAccountsPictures: [
                Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('Birth Date'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.mood),
              title: Text('Mood'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.note_add),
              title: Text('Note'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
