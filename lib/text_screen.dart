import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        //AppBar
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
        appBar: AppBar(
          // title: Text("Text Widget"),
          // leading: Icon(Icons.arrow_back_ios_new_rounded),
          backgroundColor: Colors.blueAccent,
        ),
        // Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Past Tours",
                  style: GoogleFonts.alegreyaSc(
                    fontSize: 20,
                  ),
                ),
              ),
              Column(
                children: [
                  Icon(Icons.real_estate_agent_outlined),
                  Text("Your Hotel Rooms")
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 500,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mon,Apr 4, 🕝 10 AM to 11:45 AM",
                            style: GoogleFonts.aDLaMDisplay(),
                          ),
                        ),
                        Text(
                          "✘ Cancelled",
                          style: TextStyle(color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "You Can Request Another Tour Anytime.If You Have Question Please Contact Your Agent.",
                            style: TextStyle(
                                fontFamily: 'Raleway-VariableFont',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 300,
                          width: 340,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets\images\room.jpg"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Goldem Meadows",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text("Price")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "📍St. Celine, Delaware 10299",
                              ),
                              Text(
                                "\$436",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 400,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mon,Apr 4,10 AM to 11:45 AM",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          "✔️ Complete",
                          style: TextStyle(color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                              "You Can Request Another Tour Anytime.If You Have Question Please Contact Your Agent."),
                        ),
                        Container(
                          height: 200,
                          width: 340,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Goldem Meadows",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text("Price")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "📍St. Celine, Delaware 10299",
                              ),
                              Text(
                                "\$436",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 400,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mon,Apr 4,10 AM to 11:45 AM",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          "⏳ Pending",
                          style: TextStyle(color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                              "You Can Request Another Tour Anytime.If You Have Question Please Contact Your Agent."),
                        ),
                        Container(
                          height: 200,
                          width: 340,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.yellow],
                                  transform: GradientRotation(20)),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Goldem Meadows",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text("Price")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "📍St. Celine, Delaware 10299",
                              ),
                              Text(
                                "\$436",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
