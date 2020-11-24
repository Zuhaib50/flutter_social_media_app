import 'package:flutter/material.dart';

class BaseImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double radius;
  final int heroId;
  final bool overlay;
  BaseImage({
    this.imageUrl,
    this.height,
    this.width,
    this.radius,
    this.heroId,
    @required this.overlay,
  });

  _buildImage() => ClipRRect(
        borderRadius: BorderRadius.circular(radius == null ? 0 : radius),
        child: Image.asset(
          imageUrl,
          height: height,
          width: width,
          fit: BoxFit.fill,
        ),
      );
  _buildOverlay(BuildContext context) => Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [Colors.black.withOpacity(.6), Colors.black],
            stops: [0.4, 0.9],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return overlay
        ? Stack(
            children: [
              _buildImage(),
              _buildOverlay(context),
            ],
          )
        : _buildImage();
  }
}
