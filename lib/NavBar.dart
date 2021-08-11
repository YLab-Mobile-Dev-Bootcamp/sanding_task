import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Username'), accountEmail: Text('User@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/profil.jpg',  width: 90, height: 90, fit: BoxFit.cover),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text('My Account'),
          ),
          ListTile(
            leading: Icon(Icons.wallet_travel_sharp),
            title: Text('My Wallet'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_sharp),
            title: Text('Exit'),
          )
        ],
      ),
    );
  }
}