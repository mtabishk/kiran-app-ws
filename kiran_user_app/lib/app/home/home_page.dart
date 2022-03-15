import 'package:flutter/material.dart';
import 'package:kiran_user_app/services/shared_preferences_service.dart';
import 'package:provider/provider.dart';

import '../../services/show_onboarding_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _showOnBoarding =
        Provider.of<ShowOnboardingProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        leading: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _showOnBoarding.changeQuestionareCompletedValue();
            }),
      ),
    );
  }
}
