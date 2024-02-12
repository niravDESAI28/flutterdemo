import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 22, 232),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(0, 130, 244, 1)),
                accountName: Text(
                  "NIRAV DESAI",
                  style: TextStyle(fontSize: 15),
                ),
                accountEmail: Text("dnirav@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  // child: Text(
                  //   "ND",
                  //   style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  // ), //Text
                  child: Image.network(
                      "https://static-00.iconduck.com/assets.00/profile-circle-icon-2048x2048-cqe5466q.png"),
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person_3_outlined),
              title: const Text(' Edit Profile '),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_border_purple500_outlined),
              title: const Text(' Rate App '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
                leading: const Icon(Icons.person_add_alt),
                title: const Text(' invite Friend '),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.emoji_events_outlined),
              title: const Text(' Champions Chart '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_books_outlined),
              title: const Text(' Stock Gyan '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.flag_circle_outlined),
              title: const Text(' Missions '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.flip_camera_android_sharp),
              title: const Text(' About '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.cloud_download_outlined),
              title: const Text(' Check For Updetes '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: const Text(
                'LogOut',
                style: TextStyle(color: Colors.red),
              ),
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
