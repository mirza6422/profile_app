import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Scaffold(
        drawer: Drawer(
          child:Column(
            children: [
              DrawerHeader(
                  child:
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [

                CircleAvatar(
                    radius: 55,
              backgroundImage : NetworkImage("https://scontent.flyp2-1.fna.fbcdn.net/v/t39.30808-6/421877060_1052072319416314_3333621526261135194_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=1Es2DXoj_KEQ7kNvgFTw59A&_nc_ht=scontent.flyp2-1.fna&oh=00_AYDRm5_c_koNEHgC8FmCC2W73jfvxi4INFbJ9HcIsLDPFQ&oe=66C3AE53")
                ),
              Column(
                children: [
                  Text("Mirza Shoaib" , style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold )),
                  Text("Flutter App developer", style: TextStyle( fontStyle: FontStyle.italic , fontSize: 16 , fontWeight: FontWeight.w400)),
                  Container(
                    width: 150,
                    child: Text(" Designing and developing mobile applications, integrating APIs, troubleshooting issues, and optimizing app performance. "
                      ,style: TextStyle(fontSize: 8 , fontWeight: FontWeight.w400),),
                  )
                ],
              )

              ],
              )),
            ListTile(leading: Icon(Icons.notifications),
              title:Text("Notifications" ,style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
            ),),
            ListTile(leading: Icon(Icons.privacy_tip_rounded),
              title:Text("Privacy" ,style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
            ),),
            ListTile(leading: Icon(Icons.settings),
              title:Text("Setting" ,style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
            ),),
            ListTile(leading: Icon(Icons.account_circle_rounded),
              title:Text("Accounts" ,style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
            ),),
            ListTile(leading: Icon(Icons.info_rounded),
              title:Text("About" ,style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
            ),),

            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("First App",
              style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30),


            ),
          backgroundColor:Colors.white,


        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hey User!!!",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),

              Text("How are you?",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontSize: 20),),
              Text("Hope you are doing well",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontSize: 20),)
            ],
          ),
        ),
        bottomNavigationBar:  BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,

          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions),label: "Subcriptions"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],)
      ),
    );
  }

  }
