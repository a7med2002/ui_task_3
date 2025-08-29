import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/widgets/services_tile.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> servicesName = [
      "Football",
      "Basketball",
      "Golf",
      "AAAAA",
      "BBBBBB",
      "CCCCC",
      "DDDDDD",
      "EEEEEE",
      "RRRRRRR",
      "WWWWWWW",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text("Services"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: servicesName.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 12),
            child: ServicesTile(
              title: servicesName[index],
              sub_title: "Lorem",
              image_path: "images/other.png",
            ),
          );
        },
      ),
    );
  }
}
