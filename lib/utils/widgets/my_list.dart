import 'package:flutter/material.dart';
import 'package:home_screen/model/songs.dart';
import 'package:home_screen/utils/constants/dimensions.dart';

class MyList extends StatelessWidget {
  final Songs song;
  const MyList({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 20 * heightF),
      child: Container(
        height: 65 * heightF,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(25 * widthP),
            ),
            color: Colors.grey),
        child: Padding(
          padding: EdgeInsets.all(20 * heightF),
          child: Text(song.songsText!),
        ),
      ),
    );
  }
}
