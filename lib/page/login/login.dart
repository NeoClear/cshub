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
            ClipPath(
              clipper: LogoClipper(),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage('asset/logo/logo.png'),
                        fit: BoxFit.fill)),
              ),
            ),
            // Container(height: 0),
            // Following are login methods (include sign up button)
            FacebookLoginButton(),
            GoogleLoginButton(),
            MicrosoftLoginButton(),
            EmailLoginButton(),
            EmailSignUpButton(),
            Container(height: 0)
          ],
        ),
      ),
    );
  }
}

class LogoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
