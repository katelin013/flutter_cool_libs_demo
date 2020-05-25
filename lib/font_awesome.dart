import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toast/toast.dart';

class FontAwesomeDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        final icons = [FontAwesomeIcons.gamepad, FontAwesomeIcons.frog, FontAwesomeIcons.solidGem,
                        FontAwesomeIcons.gift, FontAwesomeIcons.golfBall, FontAwesomeIcons.googleDrive];
        return Scaffold(
            appBar: AppBar(title: Text('FontAwesomeDemo')),
            body: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 4.0,
                children: new List.generate(icons.length, (index) {
                    return IconButton(
                        icon: FaIcon(icons[index]),
                        onPressed: () {
                            Toast.show("You click the FaIcon", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
                        }
                    );
                }),
            )
        );
    }
}