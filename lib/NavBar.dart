import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: UserAccountsDrawerHeader(
              accountName: const Text('Mohamed Shebl',style: TextStyle(
                fontSize: 20,
              ),),
              accountEmail: const Text('Mohamed@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    'images/man.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                 // borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                image: AssetImage(
                  'images/tile_background copy.png',
                ),
                fit: BoxFit.cover,
              )),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_rounded),
            title: const Text('Account'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
                  child: Text(
                    '3', style: TextStyle(
                    color: Colors.white ,
                    fontSize: 15,
                  ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text('Invite Code'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.people_sharp),
            title: const Text('Invite Medfriend'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.link),
            title: const Text('Connect to Tutum Watch'),
            onTap: () => null,
          ),
          const Divider(
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
