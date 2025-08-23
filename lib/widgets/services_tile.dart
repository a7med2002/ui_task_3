import 'package:flutter/material.dart';

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