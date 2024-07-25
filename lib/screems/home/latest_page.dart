import 'package:flutter/material.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return const Expanded(
              child: Column(
                children: [
                  Text("Dunyo"),
                  Row(children: [Text("Kecha"), Icon(Icons.watch)])
                ],
              ),
            );
          }),
    );
  }
}
