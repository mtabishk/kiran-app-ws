import 'package:flutter/material.dart';
import 'package:kiran_user_app/app/sign_in/sign_in_page.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(children: [
        Container(
          height: _height * 0.8,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
        ),
        Transform(
          transform: Matrix4.identity()
            ..translate(-_width * 0.1, -_width * 1.1),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFC3FDFD).withOpacity(0.8),
            ),
          ),
        ),
        Transform(
          transform: Matrix4.identity()
            ..translate(
              _width * 0.6,
              -_width * 0.7,
            ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFC3FDFD).withOpacity(0.8),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: _height / 4,
          left: _width / 8,
          right: _width / 8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(child: Image.asset('assets/icons/user_logo.png')),
              SizedBox(height: 32.0),
              Text(
                "KIRAN",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0ACDCF),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "An app for screening the possible Mental health issues in adolescents and PwDs.",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 40.0,
          right: 10,
          child: Row(
            children: [
              Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Color(0xFF0ACDCF),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
