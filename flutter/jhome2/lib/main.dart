import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// import 'package:shimmer_image/shimmer_image.dart';
import 'package:indexed_list_view/indexed_list_view.dart';
import 'dart:js' as js;

// final dummyItems = [
//   'https://cdn.pixabay.com/photo/2021/07/18/13/23/seal-6475503_960_720.jpg',
//   'https://cdn.pixabay.com/photo/2021/07/19/20/11/kitten-6479019_960_720.jpg',
//   'https://cdn.pixabay.com/photo/2021/07/21/04/35/woman-6482214_960_720.jpg',
// ];

final dummyItems = [
  'images/data.PNG',
  'images/care.PNG',
  'images/city.PNG',
  'images/farm.PNG',
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: SizedBox(
            width: 1000,
            height: 1000,
            child: Image.network(
              "images/logo.png",
              height: 1000,
              width: 1000,
              fit: BoxFit.fill,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ScreenA',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'ScreenB',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ScreenC',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ScreenD',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
      body: FullScreen(),
    );
  }
}

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key}) : super(key: key);
  static IndexedScrollController controller =
      IndexedScrollController(initialIndex: 75);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildA(context),
        _buildB(context),
        _buildC(context),
        _buildD(context),
      ],
    );
  }

  //top
  Widget _buildA(context) {
    // return Container(child: VideoApp());
    return Expanded(
      child: Stack(
        children: [
          Image.network(
            "https://media1.giphy.com/media/5owNSuvkqgLg1iqNrF/giphy.gif?cid=ecf05e47q5t7puv2tw4m79nffarr7h58xs1j64tof5qt7le9&rid=giphy.gif&ct=g",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              width: 500.0,
              child: FadeAnimatedTextKit(
                repeatForever: true,
                onTap: () {
                  print("Tap Event");
                },
                text: ["Create", "Create\nPlanet", "Create\nPlanet\nCode"],
                textStyle: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
    );
  }

//middle
  Widget _buildB(context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            autoPlay: true,
          ),
          items: dummyItems.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  // margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 30.0,
              fontFamily: 'Bobbers',
              color: Colors.black,
            ),
            child: AnimatedTextKit(repeatForever: true, animatedTexts: [
              TyperAnimatedText('J SoftWare',
                  speed: const Duration(milliseconds: 100)),
              TyperAnimatedText('Our Service',
                  speed: const Duration(milliseconds: 100)),
            ]),
          ),
        ),
      ],
    );
  }

  Widget _buildC(context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(5, 5)),
                ],
              ),
              padding: const EdgeInsets.only(
                  left: 30.0, right: 10, top: 30, bottom: 30),
              height: MediaQuery.of(context).size.height * 7 / 8,
              width: MediaQuery.of(context).size.width * 1 / 4 - 20,
              child: Column(
                children: [
                  Image.network('images/jdatacollector.jpg'),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText('JCollector',
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                    isRepeatingAnimation: true,
                  ),
                  Column(
                    children: [
                      Text('bigdata and A.I.',
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'A web-based data platform can collect various types of data.\nUser management based convenient ETL and fast analysis. \nScheduling all tasks and check progress data.',
                          style: TextStyle(color: Colors.black))
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["http://jsoftware.co.kr/index3.html"]);
                    },
                    icon: Icon(Icons.visibility),
                    label: Text('Go Product Site'),
                    style: TextButton.styleFrom(primary: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(5, 5)),
                ],
              ),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 30, bottom: 30),
              height: MediaQuery.of(context).size.height * 6 / 8,
              width: MediaQuery.of(context).size.width * 1 / 4 - 20,
              child: Column(
                children: [
                  Image.network('images/watch.jpg'),
                  Text(''),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText('JDoctor',
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                    isRepeatingAnimation: true,
                  ),
                  Column(
                    children: [
                      Text('IoT and Statistics and Machine learning',
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Collect biological data from IoT devices and weather data and social data.\nPropagation of stroke warnings to families, government offices, and hospitals. \nMonitoring my health and recommend activities.',
                          style: TextStyle(color: Colors.black))
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["http://jsoftware.co.kr/index4.html"]);
                    },
                    icon: Icon(Icons.visibility),
                    label: Text('Go Product Site'),
                    style: TextButton.styleFrom(primary: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(5, 5)),
                ],
              ),
              padding: const EdgeInsets.only(
                  left: 10, right: 20, top: 30, bottom: 30),
              height: MediaQuery.of(context).size.height * 5 / 8,
              width: MediaQuery.of(context).size.width * 1 / 4 - 20,
              child: Column(
                children: [
                  Image.network('images/app.jpg'),
                  Text(""),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText("1 o'clock",
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                    isRepeatingAnimation: true,
                  ),
                  Column(
                    children: [
                      Text('Total system operation',
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'AI system management web/app solution to show at once.',
                          style: TextStyle(color: Colors.black))
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["http://jsoftware.co.kr/index5.html"]);
                    },
                    icon: Icon(Icons.visibility),
                    label: Text('Go Product Site'),
                    style: TextButton.styleFrom(primary: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(5, 5)),
                ],
              ),
              padding:
                  const EdgeInsets.only(left: 0, right: 30, top: 30, bottom: 0),
              height: MediaQuery.of(context).size.height * 4 / 8,
              width: MediaQuery.of(context).size.width * 1 / 4 - 20,
              child: Column(
                children: [
                  Image.network(
                    'images/bell.jpg',
                    // height: MediaQuery.of(context).size.height * 1/7,
                    width: MediaQuery.of(context).size.width * 1 / 4 - 10,
                  ),
                  // Text(''),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText('Chip in',
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                    isRepeatingAnimation: true,
                  ),
                  Column(
                    children: [
                      Text('Sharing dues in the restaurant',
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(
                        height: 20,
                      ),
                      Text('When sharing dues with friends.',
                          style: TextStyle(color: Colors.black))
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["http://jsoftware.co.kr/index6.html"]);
                    },
                    icon: Icon(Icons.visibility),
                    label: Text('Go Product Site'),
                    style: TextButton.styleFrom(primary: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildD(context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Stack(children: [
            FadeInImage.assetNetwork(
              fadeInDuration: Duration(seconds: 5),
              placeholder: 'images/square.png',
              image: 'images/square.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeatY,
              matchTextDirection: true,
              // fadeOutDuration: Duration(seconds: 3),
            ),

            // Image.asset(
            //   "images/square.png",
            //   fit: BoxFit.fill,
            //     height: MediaQuery.of(context).size.height,
            //     width: MediaQuery.of(context).size.width,
            // ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment = CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 70.0,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('come with us',
                              speed: const Duration(milliseconds: 100)),
                          TypewriterAnimatedText('to the future',
                              speed: const Duration(milliseconds: 100)),
                          // TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                          // TypewriterAnimatedText('Do not test bugs out, design them out'),
                        ],
                      ),
                    ),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.purple,
                      side: BorderSide(color: Colors.purple, width: 1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                    ),
                    onPressed: () {
                      js.context.callMethod("open",
                          ["http://www.jsoftware.co.kr/community.html"]);
                    },
                    icon: Icon(Icons.arrow_forward_ios_sharp),
                    label: makeButton("Contact Us", width: 200, height: 50),
                    // child: makeButton("Contact Us ->", width: 300, height: 50),
                  ),
                ],
              ),
            )
          ])),
          Expanded(
              child: Stack(children: [
            FadeInImage.assetNetwork(
              fadeInDuration: Duration(seconds: 5),
              placeholder: 'images/see.jpg',
              image: 'images/see.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeatY,
              matchTextDirection: true,
              // fadeOutDuration: Duration(seconds: 3),
            ),

            // ProgressiveImage(
            //
            //   image: "images/see.jpg",
            //   fit: BoxFit.fill,
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            // ),
            // Image.asset(
            //   "images/see.jpg",
            //   fit: BoxFit.fill,
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            // ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment = CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 70.0,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('come with us',
                              speed: const Duration(milliseconds: 100)),
                          TypewriterAnimatedText('to the future',
                              speed: const Duration(milliseconds: 100)),
                          // TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                          // TypewriterAnimatedText('Do not test bugs out, design them out'),
                        ],
                      ),
                    ),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.purple,
                      side: BorderSide(color: Colors.purple, width: 1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                    ),
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.arrow_forward_ios_sharp),
                    label: makeButton("Contact Us", width: 200, height: 50),
                    // child: makeButton("Contact Us ->", width: 300, height: 50),
                  ),
                ],
              ),
            )
          ])),
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
          style: TextStyle(fontSize: 50.0, color: Colors.black),
        ),
      ),
      width: width,
      height: height,
    );
  }

  Widget makeButton(String title,
      {required double width, required double height}) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 30.0, color: Colors.black),
        ),
      ),
      width: width,
      height: height,
    );
  }
}
