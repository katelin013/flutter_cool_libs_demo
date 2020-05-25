import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AvatarGlowDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        var imageUrl = "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
        return Scaffold(
            appBar: AppBar(title: Text('AvatarGlowDemo')),
            body:  Center(
                child: Column(
                    children: <Widget>[
                        AvatarGlow(
                            glowColor: Colors.blue,
                            endRadius: 90.0,
                            duration: Duration(milliseconds: 2000),
                            repeat: true,
                            showTwoGlows: true,
                            repeatPauseDuration: Duration(milliseconds: 100),
                            child: Material(
                                elevation: 8.0,
                                shape: CircleBorder(),
                                child: CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    child: Image.network(imageUrl, fit: BoxFit.cover, width: 1000),
                                    radius: 40.0,
                                ),
                            ),
                        ),
                    ],
                )
            )
        );
    }
}