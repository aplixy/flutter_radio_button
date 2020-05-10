import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radio/image_radio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var images = [
    "https://file03.16sucai.com/2016/10/1100/16sucai_p20161017095_34f.JPG",
    "https://file03.16sucai.com/2016/10/1100/16sucai_p20161017095_34f.JPG",
    "https://file03.16sucai.com/2016/10/1100/16sucai_p20161017095_34f.JPG",
  ];

  ImageRadioController controller;

  @override
  void initState() {
    controller = new ImageRadioController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageRadio(
              images[0],
              isSeleted: false,
              controller: controller,
              onChange: (v) => print("ImageRadio_1--->$v"),
            ),

            SizedBox(width: 20,),

            ImageRadio(
              images[1],
              isSeleted: true,
              controller: controller,
              onChange: (v) => print("ImageRadio_2--->$v"),
            ),

            SizedBox(width: 20,),

            ImageRadio(
              images[2],
              isSeleted: false,
              controller: controller,
              onChange: (v) => print("ImageRadio_3--->$v"),
            ),
          ],
        ),
      ),
    );
  }
}
