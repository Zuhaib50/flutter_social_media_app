import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/mixins/BaseMixins.dart';

class NewStoryButton extends StatefulWidget {
  const NewStoryButton({
    this.height,
    this.width,
    Key key,
  }) : super(key: key);
  final double height;
  final double width;

  @override
  _NewStoryButtonState createState() => _NewStoryButtonState();
}

class _NewStoryButtonState extends State<NewStoryButton> with BaseMixins {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              width: responsive(
                context,
                isSmallPhone: 60.0,
                isPhone: 80.0,
              ),
              //widget.width * .22,
              height: responsive(
                context,
                isSmallPhone: 60.0,
                isPhone: 80.0,
              ),
              // widget.height * .11,
              decoration: BoxDecoration(
                  color: Color(0xFF1ab7ea),
                  borderRadius: BorderRadius.circular(50)),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: responsive(
                context,
                isSmallPhone: widget.height * 0.05,
                isPhone: 37.0,
              ),

              // widget.height * 0.05,
            ),
            CircleAvatar(
              backgroundColor: Color(0xFF1ab7ea).withOpacity(.6),
              radius: responsive(
                context,
                isSmallPhone: widget.height * 0.045,
                isPhone: 33.0,
              ),

              //  widget.height * 0.045,
            ),
            CircleAvatar(
              backgroundColor: Color(0xFF1ab7ea).withOpacity(.6),
              backgroundImage: AssetImage('assets/Group 156.png'),
              radius: 15,
            ),
          ],
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('My Story'),
        ))
      ],
    );
  }
}
