import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "S",
              style: TextStyle(
                fontSize: 40,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "weet",
              style: TextStyle(
                fontSize: 38,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
        ),
        Text(
          widget.text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          widget.image!,
          height: 265,
          width: 235,
        ),
      ],
    );
  }
}
