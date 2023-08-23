import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import '../widgets/alert_for_user.dart';
import '../widgets/background_image.dart';
import '../widgets/division_text_field.dart';

class AddDivision extends StatefulWidget {
  const AddDivision({super.key});

  @override
  State<AddDivision> createState() => _AddDivisionState();
}

class _AddDivisionState extends State<AddDivision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Add New Division   أضف قسم جديد'),
        ),
      ),
      body: SingleChildScrollView(
        child: BackgroundImage(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Form(
              key: UniversalKey.formKey,
              child: Column(
                children: [

                  DivisionTextField(
                    whenTapped: (value) {

  if (!value!.contains(LanguagesValidators.englishValidator) || value.isEmpty) {
    errorMessages.add('Please insert English title!\n');
  }
},
                   labelString: const Text('Division Title',

                   ),
                    hintString: 'Enter Division Title!',
                    linesCount: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  (DivisionTextField(


                    whenTapped: (value) {

                      if (!value!.contains(LanguagesValidators.englishValidator) || value.isEmpty) {
                        errorMessages.add('Please insert English description!\n');
                      }
                    },
                    labelString: const Text('Division Details'),
                    hintString: 'Enter Division Details!',
                    linesCount: 5,
                  )),
                  const SizedBox(
                    height: 50,
                  ),
                  DivisionTextField(


                    whenTapped: (value) {

                      if (!value!.contains(LanguagesValidators.arabicValidator) || value.isEmpty) {
                        errorMessages.add('!من فضلك أدخل عنوان عربي\n',
                        );
                      }
                    },
                    labelString: const Text('عنوان القسم'),
                    hintString: 'أدخل عنوان القسم!',
                    linesCount: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  (DivisionTextField(


                    whenTapped: (value) {

                      if (!value!.contains(LanguagesValidators.arabicValidator) || value.isEmpty) {
                        errorMessages.add('!من فضلك أدخل وصف عربي');
                      }
                    },
                    labelString: const Text('تفاصيل القسم'),
                    hintString: 'أدخل تفاصيل القسم!',
                    linesCount: 5,
                  )),
                  const SizedBox(
                    height: 20,
                  ),
            const UserAlert(

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
