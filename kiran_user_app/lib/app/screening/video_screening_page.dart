import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kiran_user_app/app/common_widgets/circle_button.dart';
import 'package:kiran_user_app/main.dart';

class VideoScreeningPage extends StatefulWidget {
  const VideoScreeningPage({Key? key}) : super(key: key);

  @override
  State<VideoScreeningPage> createState() => _VideoScreeningPageState();
}

class _VideoScreeningPageState extends State<VideoScreeningPage> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![1], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Builder(builder: (context) {
                          if (!controller.value.isInitialized) {
                            return Container();
                          }
                          return SizedBox(
                            height: size.width * 0.8,
                            width: size.width * 0.5,
                            child: AspectRatio(
                                aspectRatio: controller.value.aspectRatio,
                                child: CameraPreview(controller)),
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomCircleButtton(
                        color: Colors.red,
                        child: ImageIcon(
                          AssetImage("assets/icons/phone-call-end.png"),
                          size: 28.0,
                          color: Colors.white,
                        ),
                        onTap: () => Navigator.of(context).pop(),
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
