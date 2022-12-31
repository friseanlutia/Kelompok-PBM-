import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.black, Color.fromARGB(31, 255, 255, 255)],
              begin: Alignment.bottomCenter,
              end: Alignment.center)
          .createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Walpaper.jpeg'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Color.fromARGB(115, 0, 0, 0), BlendMode.darken),
        )),
      ),
    );
  }
}
