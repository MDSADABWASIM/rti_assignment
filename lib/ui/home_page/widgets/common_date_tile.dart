import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rti_assignment/ui/design_system/text_styles.dart';

import '../../design_system/rti_colors.dart';

class CommonDateWidget extends StatelessWidget {
  const CommonDateWidget(this.date, this.onTap, {super.key});
  final DateTime date;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 155,
      decoration: BoxDecoration(
          color: RTIColors.liteblue, borderRadius: BorderRadius.circular(68)),
      alignment: Alignment.center,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.date_range_outlined,
              color: RTIColors.blue,
              size: 14,
            ),
            const SizedBox(width: 8),
            Text(
              DateFormat("dd MMM yyyy").format(date),
              textAlign: TextAlign.center,
              style: RTITextStyles.dialogActionButtonTextStyle,
            ),
            IconButton(
              padding:const EdgeInsets.all(0),
              constraints: BoxConstraints.tight(const Size(24,20)),
                icon: Icon(
                  Icons.close,
                  color: RTIColors.blue,
                  size: 14,
                ),
                onPressed: onTap),
          ]),
    );
  }
}
