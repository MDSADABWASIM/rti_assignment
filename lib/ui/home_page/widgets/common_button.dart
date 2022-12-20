import 'package:flutter/material.dart';
import 'package:rti_assignment/ui/design_system/rti_colors.dart';
import 'package:rti_assignment/ui/design_system/text_styles.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(this.title, this.onTapped, {super.key});

  final String title;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTapped,
      style: TextButton.styleFrom(
        backgroundColor: RTIColors.blue,
        fixedSize: Size(MediaQuery.of(context).size.width - 32, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        title,
        style: RTITextStyles.homeButtonTextStyle,
      ),
    );
  }
}
