import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restuarant/Splash/signup.dart';

import 'Editprofilepage.dart';
import 'Settingpage.dart';

class Profile_1 extends StatefulWidget {
  const Profile_1({Key? key}) : super(key: key);

  @override
  State<Profile_1> createState() => _Profile_1State();
}

class _Profile_1State extends State<Profile_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
        title: Text("Profile", style: GoogleFonts.notoSerifLao()),
        backgroundColor: Colors.white10,
        elevation: 100,
      ),
      body: Container(
        color: Colors.white24,
        height: 800,
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ],
            ),
            InkWell(
              child: TextButton(
                onPressed: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Edit profile photo"), Icon(Icons.edit)],
                ),
              ),
              onTap: () => setState(() {
                Navigator.push(context, MaterialPageRoute(builder:(context) =>Editprofile()));
              }),
            ),

            SizedBox(
              height: 50,
              child: Column(
                children: [
                  Text(
                    " PALAKKKAL Fijas ",
                    style: GoogleFonts.lora(),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white24,
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                elevation: 50,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.library_books_outlined),
                      title: Text("My Orders"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.payment),
                      title: Text("Payments"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_history),
                      title: Text("Address Book"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                    InkWell(
                      onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => setting_1(),));},
                      child:
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("      Log Out     ",
                            style: TextStyle(
                                color: Colors.red
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
