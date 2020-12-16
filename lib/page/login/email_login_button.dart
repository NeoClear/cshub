import 'package:flutter/material.dart';

import 'login_button.dart';

class EmailLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginButton(
      iconData: Icons.email,
      color: Colors.grey[700],
      text: 'Sign in with Email',
      onPressed: () {},
      isBlank: false,
    );
  }
}
