import 'package:flutter/material.dart';
import 'package:rti_assignment/ui/design_system/text_styles.dart';
import 'package:rti_assignment/ui/home_page/widgets/common_date_tile.dart';

import '../custom_date_widget/custom_date_picker.dart';
import 'widgets/common_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? selectedFirstDate;
  DateTime? selectedSecondDate;
  DateTime? selectedThirdDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        persistentFooterButtons: const [Text('Md sadab wasim')],
        persistentFooterAlignment: AlignmentDirectional.bottomCenter,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Calendar widgets',
                style: RTITextStyles.headerTextStyle,
              ),
              const SizedBox(height: 30),
              CommonButton(
                "Without preset",
                () => showDateDialog(context, false, false),
              ),
              const SizedBox(height: 15),
              selectedFirstDate != null
                  ? CommonDateWidget(
                      selectedFirstDate!,
                      () => setState(() {
                        selectedFirstDate = null;
                      }),
                    )
                  : const SizedBox(height: 15),
              const SizedBox(height: 30),
              CommonButton(
                "With 4 presets",
                () => showDateDialog(context, true, false),
              ),
              const SizedBox(height: 15),
              selectedSecondDate != null
                  ? CommonDateWidget(
                      selectedSecondDate!,
                      () => setState(() {
                        selectedSecondDate = null;
                      }),
                    )
                  : const SizedBox(height: 15),
              const SizedBox(height: 30),
              CommonButton(
                "With 6 presets",
                () => showDateDialog(context, false, true),
              ),
              const SizedBox(height: 15),
              selectedThirdDate != null
                  ? CommonDateWidget(
                      selectedThirdDate!,
                      () => setState(() {
                        selectedThirdDate = null;
                      }),
                    )
                  : const SizedBox(height: 15),
            ],
          ),
        ));
  }

  Future<void> showDateDialog(
      BuildContext context, bool intermediatePicker, bool advancePicker) async {
    final picked = await showCustomDatePicker(
        context: context,
        with4preset: intermediatePicker,
        with6preset: advancePicker,
        initialDate: DateTime.now(),
        cancelText: 'Cancel',
        confirmText: 'Save',
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));

    if (picked != null) {
      if (intermediatePicker) {
        setState(() {
          selectedSecondDate = picked;
        });
      } else if (advancePicker) {
        setState(() {
          selectedThirdDate = picked;
        });
      } else {
        setState(() {
          selectedFirstDate = picked;
        });
      }
    }
  }
}
