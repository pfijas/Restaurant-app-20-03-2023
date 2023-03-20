
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Editprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading:
        IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)),
        title: Text("Complete Your Profile"),
      ),
      body:ListView(
        children: [
          Center(
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
          ),
          Center(
            child: Text("Edit Profile",
            style: GoogleFonts.abel()
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(

              elevation: 50,

              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    makeInput(label: " Name"),
                    makeInput(label: " Phone Number"),
                    makeInput(label: " Email"),
                    makeInput(label: " Birthday"),
                    makeInput(label: " Gender"),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black)
                            )
                        ),
                        child: MaterialButton(
                          focusColor: Colors.red,
                          minWidth: 30,
                          height:40,
                          onPressed: (){},
                          //color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Text("Update Profile",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 16,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ),
          ),

          SizedBox(
            height: 20,
          )
        ],
      )
    );
  }
}
Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
      ),),
      SizedBox(height: 5,),
      SizedBox(
        height: 30,
        child: TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(

              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
            ),
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}