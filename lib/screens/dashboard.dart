import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';
import 'package:flutter_ui_task_3/screens/services_screen.dart';
import 'package:flutter_ui_task_3/widgets/feedback_stack.dart';
import 'package:flutter_ui_task_3/widgets/house_card.dart';
import 'package:flutter_ui_task_3/widgets/section_head.dart';
import 'package:flutter_ui_task_3/widgets/services_tile.dart';

class Dashboard extends StatelessWidget {
  final String fullName;
  const Dashboard({super.key, this.fullName = "Adewale Taiwo"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () => showMessage("Ahmed Meqdad", context),
            child: Image(
              image: AssetImage("images/menu.png"),
              width: 24,
              height: 24,
            ),
          ),
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
                          color: AppConstants.primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 6,
                            color: AppConstants.lightPrimaryColor,
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/man.png"),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(fullName, style: TextStyle(fontSize: 18)),
                          Text(
                            "House Manager",
                            style: TextStyle(color: AppConstants.primaryColor),
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
                                  style: AppConstants.primaryNumberTextStyle,
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
                                  style: AppConstants.primaryNumberTextStyle,
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
                          color: AppConstants.primaryColor,
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
                      SectionHead(title: "Houses", onTap: () {}),

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
                                    backgroundColor: AppConstants.primaryColor,
                                    radius: 20,
                                    child: AppConstants.addIcon,
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
                    spacing: AppConstants.space,
                    children: [
                      // Services Head
                      SectionHead(
                        title: "Services",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ServicesScreen(),
                            ),
                          );
                        },
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
                    spacing: AppConstants.space,
                    children: [
                      // Feedbacks Head
                      SectionHead(title: "Feedbacks", onTap: () {}),
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
    );
  }
}
