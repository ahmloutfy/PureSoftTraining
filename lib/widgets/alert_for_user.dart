import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class UserAlert extends StatefulWidget {
  const UserAlert({Key? key}) : super(key: key);

  @override
  State<UserAlert> createState() => _UserAlertState();
}

class _UserAlertState extends State<UserAlert> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () {
        UniversalKey.formKey.currentState?.save();
        if(errorMessages.isNotEmpty){
          showDialog(context: context, builder: (context) => AlertDialog(
            contentPadding: const EdgeInsets.only(bottom: 2),
            buttonPadding: const EdgeInsets.only(top: 0),
            title: const Text(
              ' Warning! !تحذير',
              textAlign: TextAlign.center,
            ),
            content: Text(errorMessages.join(''),
            textAlign: TextAlign.center,
            ),
            actions: [
              okTextButton(context),
            ],
          ),);

        }
    }, child: const Text(
      'Add أضف',
      style: TextStyle(
        color: Colors.white,
      ),
    ),);
  }
}