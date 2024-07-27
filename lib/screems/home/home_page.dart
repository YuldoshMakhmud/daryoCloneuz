import 'package:flutter/material.dart';
import 'package:lessondaryo/screems/home/latest_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Daryo"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                    style: TextStyle(color: Colors.black),
                    "SO'NGI YANGILIKLAR"),
              ),
              Tab(
                child: Text(
                    style: TextStyle(color: Colors.white),
                    "ASOSIY YANGILIKLAR"),
              ),
              Tab(
                child: Text(
                    style: TextStyle(color: Colors.white),
                    "ENG KO'P KO'RILGAN"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LatestPage(),
            Container(color: Colors.blue),
            Container(color: Colors.green),
          ],
        ),
      ),
    );
  }
}
