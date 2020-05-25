import 'package:flutter/material.dart';
import 'package:fivecoolflutterlib/carouse_slider.dart';
import 'package:fivecoolflutterlib/font_awesome.dart';
import 'package:fivecoolflutterlib/shimmer.dart';
import 'package:fivecoolflutterlib/avatar_glow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('FlutterExample'),
          ),
          body: ItemSelectWidget(),
        )
    );
  }
}

class ItemSelectWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final functions = [ CarouseItemSliderDemo(), FontAwesomeDemo(), ShimmerDemo(), AvatarGlowDemo()];
    return Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 6.0,
          crossAxisSpacing: 4.0,
          children: new List.generate(functions.length, (index) {
            return RaisedButton(
              child: Text(functions[index].toString().replaceAll("Demo", "")),
              padding: const EdgeInsets.all(10.0),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => functions[index])
                );
              },
            );
          }),
        )
    );
  }
}