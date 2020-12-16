import 'package:cshub/page/login/email_login_button.dart';
import 'package:cshub/page/login/email_sign_up_button.dart';
import 'package:cshub/page/login/facebook_login_button.dart';
import 'package:cshub/page/login/google_login_button.dart';
import 'package:cshub/page/login/microsoft_login_button.dart';
import 'package:flutter/material.dart';

///
/// Login Page
///
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Show logo in sign in page
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: Image.asset('asset/logo/logo.png'),
            ),
            Container(height: 0),
            // Following are login methods (include sign up button)
            FacebookLoginButton(),
            GoogleLoginButton(),
            MicrosoftLoginButton(),
            EmailLoginButton(),
            EmailSignUpButton(),
            Container(height: 5)
          ],
        ),
      ),
    );
  }
}