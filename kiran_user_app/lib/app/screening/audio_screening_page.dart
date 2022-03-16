import 'package:flutter/material.dart';

class AudioScreeningPage extends StatefulWidget {
  const AudioScreeningPage({Key? key}) : super(key: key);

  @override
  State<AudioScreeningPage> createState() => _AudioScreeningPageState();
}

class _AudioScreeningPageState extends State<AudioScreeningPage> {
  bool _micOpened = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TODO: show Doctor animation here
            Spacer(),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                //TODO: show video or audio or chat widget here
                Container(
                  height: size.width * 0.8,
                  width: size.width,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _micOpened = !_micOpened;
                          });
                        },
                        icon: _micOpened
                            ? Icon(Icons.settings_voice, size: 38.0)
                            : Icon(Icons.keyboard_voice, size: 38.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
