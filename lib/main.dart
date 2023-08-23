import 'package:flutter/material.dart';
import 'package:pure_soft_training/screens/add_new_divison.dart';
import 'package:pure_soft_training/utilities/constants.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily:
              LocaleFont.myLocale?.languageCode == 'en' ? null : 'Cairo',
        ),
        title: 'Pure Soft Training (Responsive)',
        home: const AddDivision(),
      ),
    );
  }
}

// Github Sync : 13/12/2022 (0)

/* Next task(s):

- reduce space above 'OK' button
- mix of arabic and english in the field

 */