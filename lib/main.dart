import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      title: 'Flutter Ui Task 3',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          actions: [
            Image(image: AssetImage("images/menu.png"), width: 24, height: 24),
          ],
          actionsPadding: EdgeInsets.only(right: 12),
        ),
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(width: 200, height: 520, color: Colors.blue[50]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 40,
                  children: [
                    // Image & UserName Data
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 20,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 6,
                              color: Colors.blue[50]!,
                            ),
                            image: DecorationImage(
                              image: AssetImage("images/man.png"),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adewale Taiwo",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "House Manager",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Two Card (Wallet & Master)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 32,
                            horizontal: 20,
                          ),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.blue[50],
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x7A9E9E9E),
                                blurRadius: 2,
                                offset: Offset(1, 1),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 5,
                                children: [
                                  Text(
                                    "Wallet Balance:",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "\$5046.57",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                spacing: 5,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Service",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "24",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 32,
                            horizontal: 16,
                          ),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.blueAccent,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x7A9E9E9E),
                                blurRadius: 2,
                                offset: Offset(1, 1),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            spacing: 8,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Master Card",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "5999-XXXX",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Adewale T.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Houses Cards
                    Column(
                      children: [
                        // Head (Title & All Button)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Houses",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        // Houses Section
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              // Add Worker
                              Container(
                                height: 120,
                                width: 80,
                                margin: EdgeInsets.only(right: 16),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 14,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x409E9E9E),
                                      blurRadius: 2,
                                      offset: Offset(1, 1),
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blueAccent,
                                      radius: 20,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                    ),
                                    Text(
                                      "Add\nWorkers",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              // House Cards
                              HouseCard(
                                house_name: 'Tabi\nLateef',
                                imgae_path: 'images/man.png',
                              ),
                              HouseCard(
                                house_name: 'Queen\nNeedle',
                                imgae_path: 'images/man.png',
                              ),
                              HouseCard(
                                house_name: 'Joan\nBlessing',
                                imgae_path: 'images/man.png',
                              ),
                              HouseCard(
                                house_name: 'Tabi\nLateef',
                                imgae_path: 'images/man.png',
                              ),
                              HouseCard(
                                house_name: 'Tabi\nLateef',
                                imgae_path: 'images/man.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Services Section
                    Column(
                      spacing: 32,
                      children: [
                        // Services Head
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Services",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        // Services Tiles
                        Column(
                          spacing: 24,
                          children: [
                            ServicesTile(
                              title: "Electrical",
                              sub_title: "Description",
                              image_path: "images/engineer.png",
                            ),
                            ServicesTile(
                              title: "Others",
                              sub_title: "Description",
                              image_path: "images/other.png",
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Feedback Section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 24,
                      children: [
                        // Feedbacks Head
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Feedbacks",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        // Feedbacks Stacks
                        Column(
                          spacing: 16,
                          children: [
                            FeedbackStack(
                              cover_path: "images/img1.png",
                              comment: "Perfect Work through all June month",
                              person_img_path: "images/man.png",
                            ),
                            FeedbackStack(
                              cover_path: "images/img2.png",
                              comment: "Perfect Work through all June month",
                              person_img_path: "images/man.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HouseCard extends StatelessWidget {
  final String house_name;
  final String imgae_path;
  const HouseCard({
    super.key,
    required this.house_name,
    required this.imgae_path,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.only(right: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 12,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
                border: Border.all(width: 4, color: Colors.blue[50]!),
                image: DecorationImage(image: AssetImage(imgae_path)),
              ),
            ),
            Text(
              house_name,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class ServicesTile extends StatelessWidget {
  final String title;
  final String sub_title;
  final String image_path;
  const ServicesTile({
    super.key,
    required this.title,
    required this.sub_title,
    required this.image_path,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x409E9E9E),
            blurRadius: 2,
            offset: Offset(1, 1),
            spreadRadius: 2,
          ),
        ],
      ),
      child: ListTile(
        leading: Image(image: AssetImage(image_path), width: 50, height: 50),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          sub_title,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.arrow_forward, color: Colors.black, size: 40),
      ),
    );
  }
}

class FeedbackStack extends StatelessWidget {
  final String cover_path;
  final String comment;
  final String person_img_path;
  const FeedbackStack({
    super.key,
    required this.cover_path,
    required this.comment,
    required this.person_img_path,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(cover_path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 100,
          child: Container(
            width: 270,
            height: 100,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color(0x409E9E9E),
                  blurRadius: 2,
                  offset: Offset(1, 1),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 4, color: Colors.blue[50]!),
                    image: DecorationImage(image: AssetImage(person_img_path)),
                  ),
                ),
                Expanded(
                  child: Text(
                    comment,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
