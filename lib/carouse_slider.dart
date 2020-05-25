import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
    'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg?cs=srgb&dl=short-coated-black-and-brown-puppy-in-white-and-red-polka-39317.jpg&fm=jpg',
    'https://images.pexels.com/photos/148182/pexels-photo-148182.jpeg?cs=srgb&dl=brown-and-white-grizzly-bear-148182.jpg&fm=jpg',
    'https://images.pexels.com/photos/50577/hedgehog-animal-baby-cute-50577.jpeg?cs=srgb&dl=animal-pet-cute-baby-50577.jpg&fm=jpg',
    'https://images.pexels.com/photos/86405/penguin-funny-blue-water-86405.jpeg?cs=srgb&dl=close-up-photography-of-penguin-on-snow-86405.jpg&fm=jpg',
];

class CarouseItemSliderDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('CarousesliderDemo')),
            body: Container(
                child: CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),   // 翻頁的間隔時間
                        autoPlayCurve: Curves.fastOutSlowIn,      // 動畫的動作, 這裡是快速推出緩慢進入
                        onPageChanged: onPageChanged(),           // 當頁面切換時呼叫
                        scrollDirection: Axis.horizontal,         // 捲動的方式
                    ),
                    items: imgList.map((item) => Container(
                        child: Center(
                            child: Image.network(item, fit: BoxFit.cover, width: 1000)
                        ),
                    )).toList(),
                )
            ),
        );
    }
}

onPageChanged(){
    print("Page is changed");
}