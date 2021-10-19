// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/screens/home_scree.dart';
import 'package:social_media_app/screens/login_screen.dart';
import 'package:social_media_app/screens/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage(currentUser.profileImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3.0, color: Theme.of(context).primaryColor),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 25.0),
                    )
                  ],
                ),
              )
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),
          ListTile(
              leading: Icon(
                Icons.chat,
              ),
              title: Text(
                "Chat",
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {}),
          ListTile(
              leading: Icon(
                Icons.chat,
              ),
              title: Text(
                "Map",
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {}),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ProfileScreen(
                            user: currentUser,
                          )));
            },
          ),
          Expanded(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ListTile(
                  leading: Icon(Icons.directions_run),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                )),
          ),
        ],
      ),
    );
  }
}
