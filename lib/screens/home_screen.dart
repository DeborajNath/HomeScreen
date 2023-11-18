import 'dart:io';

import 'package:flutter/material.dart';
import 'package:home_screen/model/songs.dart';
import 'package:home_screen/utils/constants/dimensions.dart';
import 'package:home_screen/utils/widgets/drawer.dart';
import 'package:home_screen/utils/widgets/my_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = ['Movies', 'Songs', 'TV Shows'];
  String? selectedItem = 'Songs';

  final songList = Songs.songsList();
  List<Songs> foundSong = [];

  @override
  void initState() {
    foundSong = songList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widthP = Dimensions.myWidthThis(context);
    // double heightP = Dimensions.myHeightThis(context);
    double heightF = Dimensions.myHeightFThis(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 229, 229),
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: 40 * heightF, left: 10 * widthP, right: 10 * widthP),
        child: Column(
          children: [
            searchBox(),
            SizedBox(
              height: 20 * heightF,
            ),
            SizedBox(
              width: double.infinity,
              child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12 * widthP),
                      borderSide:
                          const BorderSide(width: 3, color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12 * widthP),
                      borderSide:
                          const BorderSide(width: 3, color: Colors.cyan),
                    ),
                  ),
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ))
                      .toList(),
                  onChanged: (item) => setState(() {
                        selectedItem = item;
                      })),
            ),
            SizedBox(
              height: 20 * heightF,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foundSong.length,
                itemBuilder: (context, index) {
                  return MyList(
                    song: foundSong[index],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20 * heightF),
              child: FloatingActionButton(
                onPressed: () => exit(0),
                backgroundColor: Colors.cyan,
                child: const Icon(Icons.cancel),
              ),
            )
          ],
        ),
      ),
      endDrawer: const NavigationDrawers(),
    );
  }

  void runFilter(String enteredKeyword) {
    List<Songs> results = [];
    if (enteredKeyword.isEmpty) {
      results = songList;
    } else {
      results = songList
          .where((item) => item.songsText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      foundSong = results;
    });
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => runFilter(value),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
