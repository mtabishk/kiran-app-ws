import 'package:flutter/material.dart';

class QuestionarePage extends StatelessWidget {
  const QuestionarePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC3FDFD),
      body: Center(
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
                        SizedBox(height: 16.0),
                        Container(
                          height: 44,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFC3FDFD).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                            child: Text("a. Awesome",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          height: 44,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFC3FDFD).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                            child: Text("b. Good",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          height: 44,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFC3FDFD).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                            child: Text("c. Bad",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          height: 44,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFC3FDFD).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                            child: Text("d. Horrible",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
