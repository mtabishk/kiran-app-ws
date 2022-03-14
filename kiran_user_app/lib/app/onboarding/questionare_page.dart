import 'package:flutter/material.dart';

class QuestionarePage extends StatefulWidget {
  const QuestionarePage({Key? key}) : super(key: key);

  @override
  State<QuestionarePage> createState() => _QuestionarePageState();
}

class _QuestionarePageState extends State<QuestionarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC3FDFD),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position) {
          return _buildQuestionareBody(position: position);
        },
        itemCount: 6,
      ),
    );
  }

  Widget _buildQuestionareBody({required int position}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Questionare",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 64.0, 16.0, 64.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1. How are you feeling today ?",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(height: 32.0),
                      _buildOption(text: "a. Awesome"),
                      SizedBox(height: 16.0),
                      _buildOption(text: "b. Good"),
                      SizedBox(height: 16.0),
                      _buildOption(text: "d. Bad"),
                      SizedBox(height: 16.0),
                      _buildOption(text: "d. Horrible"),
                    ]),
              ),
            ),
          ),
          SizedBox(height: 32.0),
          if (position < 5)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ImageIcon(AssetImage("assets/icons/swipe.png")),
                    SizedBox(height: 16.0),
                    Text("Swipe Up"),
                  ],
                ),
              ],
            ),
          if (position == 5)
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Color(0xFF0ACDCF),
                  ),
                  onPressed: () {},
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildOption({required String text}) {
    return Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFC3FDFD).withOpacity(0.8),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Text(text,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
