import 'package:flutter/material.dart';
import 'package:kiran_user_app/app/common_widgets/circle_button.dart';
import 'package:kiran_user_app/app/constants.dart';

class ScreeningPage extends StatelessWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TODO: show Doctor animation here
            Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                //TODO: show video or audio or chat widget here
                Container(
                  height: _width * 0.8,
                  width: _width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCircleButtton(
                      color: kPrimaryColor,
                      onTap: () {},
                      child: ImageIcon(
                        AssetImage("assets/icons/video-camera.png"),
                        color: Colors.white,
                      ),
                    ),
                    CustomCircleButtton(
                      color: kPrimaryColor,
                      onTap: () {},
                      child: ImageIcon(
                        AssetImage("assets/icons/mic.png"),
                        color: Colors.white,
                      ),
                    ),
                    CustomCircleButtton(
                      color: kPrimaryColor,
                      onTap: () {},
                      child: ImageIcon(
                        AssetImage("assets/icons/chat.png"),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
