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
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        actions: [
          const Text('Settings'),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/face1.webp',
                  ),
                  // minRadius: 60,
                  maxRadius: 60,
                ),
                Positioned(
                  right: 11,
                  bottom: 11,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 2),
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 10),
              Text(
                'Mark Zuckerberg',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Photography | Travelling | Programming',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                'California, USA',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    size: 14,
                  ),
                  Text('Edit the profile'),
                  const SizedBox(height: 20),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Post',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
                        ),
                      ),
                      Text('35',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Followers',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          )),
                      Text(
                        '4521',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Follows',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 16,
                          )),
                      Text('124',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/face2.webp',
                      height: 210,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/face3.webp',
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Space between second and third images
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/face4.webp',
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.paperPlane,
                color: Colors.black,
              ),
              label: 'Share'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              label: 'Like'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
