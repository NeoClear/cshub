import 'package:flutter/material.dart';

import 'login_button.dart';

class EmailSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginButton(
      iconData: Icons.email_outlined,
      color: Colors.black,
      text: 'Sign up with Email',
      onPressed: () {},
      isBlank: true,
    );
  }
}
