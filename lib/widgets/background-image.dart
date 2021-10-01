import 'package:flutter/material.dart';
class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black,Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,

      ).createShader(bounds),blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/office_desk.jpg'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black54,
              BlendMode.darken),
        )
        ),
      ),
    );
  }
}