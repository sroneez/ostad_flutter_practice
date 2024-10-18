import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePageTest extends StatelessWidget {
  const ProfilePageTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      /*drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("john.doe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_pic.jpg'), // Add your image
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Logout"),
                    actions: [
                      TextButton(onPressed: (){exit(0);}, child: Text('yes')),
                      TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('no')),
                    ],
                  );
                });
              },
            ),
          ],
        ),
      ),*/
      body: GridView.extent(
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        reverse: true,
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
          Image.asset('assets/image1.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image2.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image3.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image4.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image5.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image6.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image7.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image8.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image9.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image10.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/images11.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image12.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image13.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image14.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image15.jpeg',fit: BoxFit.cover,),
          Image.asset('assets/image16.jpeg',fit: BoxFit.cover,),
        ],
      ),
    );
  }
}

Widget myBox(int index) {
  return Container(
    // margin: const EdgeInsets.all(8),
    color: Colors.blue,
    alignment: Alignment.center,
    child: Text('$index'),
  );
}
