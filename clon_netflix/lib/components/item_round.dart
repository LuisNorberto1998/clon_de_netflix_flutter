import 'package:flutter/material.dart';

class ItemRound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110.0),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 2.0,
                  )),
              child: ClipOval(
                child: Image.network(
                  'https://static1.abc.es/media/play/2019/06/06/friendss-k16G--620x349@abc.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.network(
              'https://cdn.freebiesupply.com/logos/thumbs/2x/friends-1-logo.png',
              width: 100.0,
            )
          ],
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
