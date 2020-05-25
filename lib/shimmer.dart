import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class ShimmerDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('ShimmerDemo')),
            body:  Center(
                child: Column(
                children: <Widget>[
                    Shimmer.fromColors(
                        baseColor: Colors.red,
                        highlightColor: Colors.yellow,
                        child: Text(
                            'Shimmer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight:
                                FontWeight.bold,
                            ),
                        ),
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.blue,
                        highlightColor: Colors.green,
                        child: Text(
                            'Shimmer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight:
                                FontWeight.bold,
                            ),
                        ),
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.black,
                        highlightColor: Colors.blueGrey,
                        child: Text(
                            'Shimmer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight:
                                FontWeight.bold,
                            ),
                        ),
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.orange,
                        highlightColor: Colors.purple,
                        child: Text(
                            'Shimmer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight:
                                FontWeight.bold,
                            ),
                        ),
                    ),
                    Shimmer.fromColors(
                        baseColor: Colors.pink,
                        highlightColor: Colors.lightGreen,
                        child: Text(
                            'Shimmer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight:
                                FontWeight.bold,
                            ),
                        ),
                    )
                ],
            )
        )
        );
    }
}