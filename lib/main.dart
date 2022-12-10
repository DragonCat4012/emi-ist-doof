import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tour Details',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Tour Details'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arr = [
    "Herzlich Wilkommen",
    "Sixtinische Madonna",
    "Das Schokoladenmädchen",
    "Wegbeschreibung 1"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Highlight Tour',
              style: Theme.of(context).textTheme.headline4,
            ),

            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'Incididunt eiusmod aute occaecat velit ad proident ea consequat. Non nisi eiusmod non voluptate sunt exercitation eu. Tempor enim dolor cillum voluptate ad ullamco do Lorem mollit. Quis aliqua irure ipsum aliquip et proident et incididunt. Est anim exercitation ex quis sunt enim veniam dolor ut in consequat ea adipisicing aliquip.'),
                  TextSpan(
                      text: '\n\nGebäude: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Semperbau'),
                  TextSpan(
                      text: '\nSammlung: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Gemäldegalerie Alte Meister'),
                  TextSpan(
                      text: '\nDauer: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '1 Stunde'),
                ],
              ),
            ),

            ElevatedButton.icon(
              icon: const Icon(
                Icons.signpost_outlined,
                color: Colors.orange,
                size: 30.0,
              ),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.orange, width: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
                //    minimumSize: const Size(double.infinity, double.infinity),
              ),
              onPressed: () {},
              label: const Text(
                'Tour Starten',
                style: TextStyle(color: Colors.orange),
              ),
            ),

            for (var item in arr)
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.orange, width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  onPressed: () {},
                  child: Row(children: [
                    Container(
                      //aspect ratio for Image
                      child: Image(
                        image: AssetImage('assets/index.jpg'),

                        fit: BoxFit
                            .cover, //fill type of image inside aspectRatio
                      ),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Text(
                      item,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right_sharp,
                    )
                  ]),
                ),
              ),

            //
          ],
        ),
      ),
    );
  }
}
