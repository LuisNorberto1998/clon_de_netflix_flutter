import 'package:flutter/material.dart';

class ItemImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://lh3.googleusercontent.com/LuXJCZplZKwVigsjQCipK5qUUiyW8NBHqEtAeMByuYu-QqFHzq0gSULnS-Ict6V_Pvi0',
          width: 90.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,),
      ],
    );
  }
}
