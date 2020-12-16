import 'package:flutter/material.dart';

///
/// Template to generate sign in buttons
///
/// Based on flat button
/// Uses material design
/// icons has rounded border
///
class LoginButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String text;
  final void Function() onPressed;
  final bool isBlank;

  LoginButton(
      {Key key,
      @required this.iconData,
      @required this.color,
      @required this.text,
      @required this.onPressed,
      @required this.isBlank})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      height: 48,
      color: isBlank ? Colors.white : color,
      child: Container(
        constraints: BoxConstraints(maxWidth: 240),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 11, 0),
                  child: Icon(
                    iconData,
                    size: 32,
                    color: isBlank ? color : Colors.white,
                  )),
              Text(
                text,
                style: TextStyle(
                  color: isBlank ? color : Colors.white,
                  fontFamily: 'amazon',
                  fontSize: 18,
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
      onPressed: onPressed
    );
  }
}
