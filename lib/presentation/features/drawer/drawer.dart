import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(04),
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: const Text(
                  "RoomFinder",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                accountEmail: const Row(
                  children: [
                    Text(
                      "roomfinder01@gmail.com",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
                currentAccountPictureSize: const Size.square(46),
                currentAccountPicture: Container(
                  color: Colors.amber,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: const Icon(
                      Icons.home,
                      size: 44,
                      color: Colors.white,
                    ), //Text
                  ),
                ) //circleAvatar
                ), //UserAccountDrawerHeader
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 4,
            ),
          ), //DrawerHeader
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' My Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: const Icon(Icons.video_label),
            title: const Text(' Saved Items'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text(' Share App '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(' Settings '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(' LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 190,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 4,
            ),
          ),
        ],
      ),
    );
  }
}
