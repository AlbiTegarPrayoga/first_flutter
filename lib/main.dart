import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Flutter 1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.favorite),
          title: Text('Latihan Flutter 1'),
        ),
        body: ListView(
          children: [
            Text('Latihan Flutter'),
            Image.asset('asset/gambar/logo.png'),
            Image.network(
                'https://pngimage.net/wp-content/uploads/2018/06/gambar-pemandangan-format-png-2.png'),
            Row(
              children: [
                Expanded(
                  child: Text('Deliver features faster',
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child:
                      Text('Craft beautiful UIs', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 +
                    200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white)),
              transform: Matrix4.rotationZ(0.1),
            ),
            Container(
              height: 100,
              width: 100.0,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: Center(child: Text('Hello World')),
            ),
            Card(
              color: Colors.amberAccent,
              child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Hello World!'),
              ),
            )
          ],
        ));
  }
}
