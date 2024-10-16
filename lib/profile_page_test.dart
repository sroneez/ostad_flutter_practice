import 'package:flutter/material.dart';

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
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          actions: [
            const Text('Settings'),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              CircleAvatar(
                backgroundImage: AssetImage('assets/face1.webp',),
                // minRadius: 60,
                maxRadius: 70,
              ),
              const SizedBox(height: 10),
              Text('Mark Zukerberg',
                style:const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              Text('Photography | Travelling | Programming',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text('California, USA',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit),
                  Text('Edit the profile'),
                  const SizedBox(height:20),
                ],
              ),
              Row(
                children: [
                  Text('Post'),
                ],
              ),
            ],
          ),
        )
    );
  }
}
