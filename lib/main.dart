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
          title: Text("Profile", style: TextStyle(fontSize: 16)),
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
            Column(
              spacing: 40,
              children: [
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
                        border: Border.all(width: 6, color: Colors.blue[50]!),
                        image: DecorationImage(
                          image: AssetImage("images/man.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Adewale Taiwo", style: TextStyle(fontSize: 18)),
                        Text(
                          "House Manager",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ],
                ),
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    spacing: 24,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Houses"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 80,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Container(
                            height: 120,
                            width: 80,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: Colors.blue[50]!,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("images/man.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Tabi\nLateef",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 80,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: Colors.blue[50]!,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("images/man.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Tabi\nLateef",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 120,
                            width: 80,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color: Colors.blue[50]!,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("images/man.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Tabi\nLateef",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    spacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Services"),
                          Text(
                            "All",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ],
                      ),
                      Column(
                        spacing: 16,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 24,
                              horizontal: 26,
                            ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  spacing: 16,
                                  children: [
                                    Image(
                                      image: AssetImage("images/engineer.png"),
                                      width: 50,
                                      height: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Electrical",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Description",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 24,
                              horizontal: 26,
                            ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  spacing: 16,
                                  children: [
                                    Image(
                                      image: AssetImage("images/other.png"),
                                      width: 50,
                                      height: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Others",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Description",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
