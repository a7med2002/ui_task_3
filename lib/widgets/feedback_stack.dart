import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';

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
                    color: AppConstants.primaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4,
                      color: AppConstants.lightPrimaryColor,
                    ),
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
