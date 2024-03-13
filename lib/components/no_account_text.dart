import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/sign_up/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Pas de compte? ",
          style: TextStyle(fontSize: 13),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: const Text(
            "S'enregistrer",
            style: TextStyle(fontSize: 13, color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
