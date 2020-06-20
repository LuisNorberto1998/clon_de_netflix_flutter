import 'package:clon_netflix/components/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [cabecera(), infoSerie(), botonera()],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://lh3.googleusercontent.com/proxy/CZwud5lIZqa4DciGeozdNmnVXq70495BOk24uQ-RuC1z07zpcvg3lfT3BdeS3SEAnYtSRlFgCVEq8XVYbdv2lXhVwziSfHWJ1YqBknZVvx-_viJM50heI2nay8jEzC_S3pg2nA',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black12, Colors.black])),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Adoles',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                'Mi lista',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              )
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                'Información',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
