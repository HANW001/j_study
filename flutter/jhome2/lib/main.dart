import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final dummyItems = [
  'https://cdn.pixabay.com/photo/2021/07/18/13/23/seal-6475503_960_720.jpg',
  'https://cdn.pixabay.com/photo/2021/07/19/20/11/kitten-6479019_960_720.jpg',
  'https://cdn.pixabay.com/photo/2021/07/21/04/35/woman-6482214_960_720.jpg',
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jsoftware Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Jsoftware Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'JSW',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FullScreen(),
    );
  }
}

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildA(),
        _buildB(),
        _buildC(),
        _buildD(),
      ],
    );
  }

  //top
  Widget _buildA() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print('click');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('taxi'),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('bike'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('black'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('drive'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('taxi'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('bike'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('black'),
                ],
              ),
              Opacity(
                opacity: 0.0,
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text('drive'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

//middle
  Widget _buildB() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300.0,
        autoPlay: true,
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildC() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[Event] notice'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }

  Widget _buildD() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Stack(children: [
            Image.asset(
              "images/square.png",
              fit: BoxFit.fill,
              height: 400,
              width: 1000,
            ),
            Positioned(
              child: makeText('가운데', width: 100, height: 150),
              top: 100,
              left: 100,
              right: 100,
            ),
            Positioned(
              child: makeText('가운데', width: 100, height: 250),
              top: 100,
              left: 100,
              right: 100,
            ),
            Positioned(
              child: makeText('가운데', width: 100, height: 350),
              top: 100,
              left: 100,
              right: 100,
            ),
                // Positioned(child:IconButton(icon:Icon., onPressed: () {  },))

          ])),
          Expanded(
              child: Stack(
            children: [
              Image.asset(
                "images/floral.jpg",
                fit: BoxFit.fill,
                height: 400,
                width: 1000,
              ),
              Positioned(
                child: makeText('가운데', width: 100, height: 150),
                top: 100,
                left: 100,
                right: 100,
              ),
              Positioned(
                child: makeText('가운데', width: 100, height: 250),
                top: 100,
                left: 100,
                right: 100,
              ),
              Positioned(
                child: makeText('가운데', width: 100, height: 350),
                top: 100,
                left: 100,
                right: 100,
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget makeText(String title,
      {required double width, required double height}) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 50.0, color: Colors.pinkAccent),
        ),
      ),
      width: width,
      height: height,
    );
  }
}
