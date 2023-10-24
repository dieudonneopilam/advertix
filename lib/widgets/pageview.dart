import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:video_player/video_player.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({
    super.key,
    required this.urlimage,
    required this.profilUrl,
  });
  final String urlimage;
  final String profilUrl;

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.urlimage);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          // Container(
          // margin: const EdgeInsets.only(top: 0),
          // width: double.infinity,
          // height: double.infinity,
          // decoration: BoxDecoration(
          // color: Colors.black,
          // image: DecorationImage(
          // image: AssetImage(
          // widget.urlimage,
          // ),
          // fit: BoxFit.fitHeight,
          // alignment: Alignment.bottomCenter),
          // ),
          // ),
          _controller.value.isInitialized
              ? SizedBox(
                width: double.infinity,
                child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller,),
                  ),
              )
              : Container(
                  color: Colors.black,
                ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                size: 50,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        colors: [Colors.amber, Colors.pink],
                        transform: GradientRotation(2))),
                child: const HeroIcon(HeroIcons.bars3CenterLeft,
                    color: Colors.white, size: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
