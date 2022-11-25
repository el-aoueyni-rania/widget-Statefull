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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body : Column(
         textDirection: TextDirection.ltr,
         textBaseline: TextBaseline.alphabetic,
         children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    textBaseline: TextBaseline.alphabetic,
                    children: [Image(image: AssetImage('images/lake.jpg'))]),
           SizedBox(height: 20),
                    Row( crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Column(
                      textDirection: TextDirection.ltr,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      Text('oeschinen lake campground',textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Kandersteg, Switzerland',textDirection: TextDirection.ltr , style: TextStyle(color: Colors.grey)),
                      ]),
                      Spacer(flex: 1),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(0),
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              alignment: Alignment.centerRight,
                              icon: (_isFavorited
                                  ? const Icon(Icons.star)
                                  : const Icon(Icons.star_border)),
                              color: Colors.red[500],
                              onPressed: _toggleFavorite,
                            ),),
                          SizedBox(
                            width: 18,
                            child: SizedBox(child: Text('$_favoriteCount'),),),
                        ],)
                    ]),
           SizedBox(height: 30),
           Row(
             textDirection: TextDirection.ltr,
             textBaseline: TextBaseline.alphabetic,
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Icon(Icons.call,textDirection: TextDirection.ltr , color: Colors.blue),
               Icon(Icons.send,textDirection: TextDirection.ltr, color: Colors.blue),
               Icon(Icons.share,textDirection: TextDirection.ltr, color: Colors.blue),
             ],
           ),
           SizedBox(height: 20),
           Column(
               textDirection: TextDirection.ltr,
               textBaseline: TextBaseline.alphabetic,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text('Oeschinen Lake or Oeschinensee as the Swiss call it, is one of the best lakes in Switzerland, if not on the earth. Oeschinen Lake lies in the Kandertal valley in Bernese Oberland region of Switzerland. If you love swimming, rowing, fishing and a barbeque by the lake, or just the breathtaking Alpine views, then this place must be on top of your Switzerland Bucketlist. Moreover, The mountains and valleys around here are an open invitation to serious hikers!',textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold)),

               ]),

    ])
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
