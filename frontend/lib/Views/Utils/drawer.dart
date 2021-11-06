import 'package:flutter/material.dart';
class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        color: Colors.black12,
        child: new ListView(
          padding: EdgeInsets.zero,
          children: [
            new DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage('assets/images/drawer.jpg')),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                          child: Image.asset(
                            'assets/images/BG.png',
                            fit: BoxFit.fill,
                            width: size.width * .2,
                            height: size.height * .2,
                          )),
                      radius: 50.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: new Text(
                       'ABC',
                        style: TextStyle(
                            color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: new Text(
                      'ABC',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text('My Profile'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              onTap: () {

              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Own Sightings'),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {

              },
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () async {
              },
            ),
          ],
        ),
      ),
    );
  }
}
