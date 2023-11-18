import 'package:flutter/material.dart';
import 'package:home_screen/utils/constants/dimensions.dart';

class NavigationDrawers extends StatefulWidget {
  const NavigationDrawers({super.key});

  @override
  State<NavigationDrawers> createState() => _NavigationDrawersState();
}

class _NavigationDrawersState extends State<NavigationDrawers> {
  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: 20 * widthP, top: 5 * heightF, right: 20 * widthP),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    height: 58 * widthP,
                    width: 58 * widthP,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50 * widthP),
                        color: Colors.blue),
                  ),
                  SizedBox(
                    width: 20 * heightF,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: (14 * widthP),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'lorem_teal_falcon',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: (14 * widthP),
                            ),
                            overflow:
                                TextOverflow.ellipsis, // Handle long names
                            maxLines: 1,
                          ),
                          Icon(
                            Icons.copy,
                            size: 10 * widthP,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 290 * heightF,
                width: 297 * widthP,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 18, 172, 15),
                  borderRadius: BorderRadius.circular(50 * widthP),
                  border: Border.all(
                    color: const Color.fromARGB(255, 146, 37, 255),
                    width: 1.0,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 11 * heightF,
                    ),
                    SizedBox(
                      height: 11 * heightF,
                    ),
                  ],
                ),
              ),
              Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'Likes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'Dislikes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'Saved Posts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'New Post',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'LoremIpsum',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
              Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: (18 * widthP),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
