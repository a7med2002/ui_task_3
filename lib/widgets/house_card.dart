import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';

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
                color: AppConstants.primaryColor,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: AppConstants.lightPrimaryColor,
                ),
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
