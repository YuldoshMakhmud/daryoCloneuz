import 'package:flutter/material.dart';
import 'package:lessondaryo/screems/home/drawer_header.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
           MyDrawerHeader();
        ],
      ),
    );
  }
}
