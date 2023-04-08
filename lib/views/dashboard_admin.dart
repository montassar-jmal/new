import 'package:flutter/material.dart';

class DashboardAdminScreen extends StatelessWidget {
  const DashboardAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildDrawerHeader(),
          const Divider(
            color: Colors.grey,
          ),
          buildDrawerItem(
            icon: Icons.photo,
            text: "Photo",
            onTap: () => navigate(0),
            tileColor:  Colors.blue ,
            textIconColor:  Colors.white,

          ),
          buildDrawerItem(
            icon: Icons.video_call,
            text: "Video",
            onTap: () => navigate(1),
            tileColor:  Colors.blue ,
            textIconColor:  Colors.white,
          ),
          buildDrawerItem(
              icon: Icons.chat,
              text: "Chat",
              onTap: () => navigate(2),
            tileColor:  Colors.blue ,
            textIconColor:  Colors.white,
          ),
        ],
      ),
    );
  }

  Widget buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text("Ripples Code"),
      accountEmail: Text("ripplescode@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('image/logo.jpg'),
      ),
      currentAccountPictureSize: Size.square(72),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("RC"),
        )
      ],
      otherAccountsPicturesSize: Size.square(50),
    );
  }

  Widget buildDrawerItem({
    required String text,
    required IconData icon,
    required Color textIconColor,
    required Color? tileColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: textIconColor),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    if (index == 0) {

    }
    else if (index == 1) {

    }
    if (index == 2) {

    }
  }
}


