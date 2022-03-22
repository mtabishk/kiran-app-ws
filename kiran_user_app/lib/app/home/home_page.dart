import 'package:flutter/material.dart';
import 'package:kiran_user_app/app/common_widgets/custom_navigation_drawer.dart';
import 'package:kiran_user_app/app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _showOnBoarding =
    //     Provider.of<ShowOnboardingProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kSecondaryColor,
        actions: [
          Image.asset("assets/icons/kiran-logo.png"),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: CustomNavigationDrawer(),
    );
  }
}
