分享一些自己覺得很酷的Lib
=====================

[Medium](https://medium.com/@katelin013/flutter123-%E5%B9%BE%E5%80%8B%E5%BE%88%E9%85%B7%E7%9A%84-library-%E8%AE%93%E4%BD%A0%E7%9A%84-app-%E6%9B%B4%E5%8A%A0%E6%BC%82%E4%BA%AE-5fe2c02b01a3 "link")

Carousel slider
---------------
輪播的 Widget
支援無限捲動
支援自訂義的 Widget
可以自動播放

```
Slider Democlass CarouseItemSliderDemo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('CarousesliderDemo')),
            body: Container(
                child: CarouselSlider(
                    options: CarouselOptions(
                        // 自動播放
                        autoPlay: true,
                        // 翻頁的間隔時間
                        autoPlayInterval: Duration(seconds: 2),
                        // 動畫的動作, 這裡是快速推出緩慢進入
                        autoPlayCurve: Curves.fastOutSlowIn,
                        // 當頁面切換時呼叫
                        onPageChanged: onPageChanged(),
                        // 捲動的方式
                        scrollDirection: Axis.horizontal,
                    ),
                    items: imgList.map((item) => Container(
                        child: Center(
                            child: Image.network(item, fit:
                                   BoxFit.cover, width: 1000)
                        ),
                    )).toList(),
                )
            ),
        );
    }
}
```

Font Awesome
------------
在前端很好用的 Font awesome
包含基於 Font Awesome 5.13 版本的所有免費 icon

```
FontAwesome DemoIconButton(
  icon: FaIcon(FontAwesomeIcons.gamepad),
  onPressed: () {
    print("click font awesome icon");
  }
);
```

Shimmer
-------
一個很簡單就能讓 Widget 閃爍酷炫的 Lib

```
Shimmer Demo// 這裏的 child 是用 Text 作為示範, 可以套用其他的 Widget
Shimmer.fromColors(
    baseColor: Colors.red,            // 一開始的顏色
    highlightColor: Colors.yellow,    // 閃爍所使用的顏色
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
```

Avatar Glow
一個可以讓圖片發出漸層光圈的 Lib

```
Avatar glow demoAvatarGlow(
    // 光圈的顏色
    glowColor: Colors.blue,
    // 圓角半徑
    endRadius: 90.0,
    // 持續時間
    duration: Duration(milliseconds: 2000),
    // 重複顯示
    repeat: true,
    // 兩層光圈
    showTwoGlows: true,
    repeatPauseDuration: Duration(milliseconds: 100),
    child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: Image.network(imageUrl, fit: BoxFit.cover,
                   width: 1000),
            radius: 40.0,
        ),
    ),
),
```
