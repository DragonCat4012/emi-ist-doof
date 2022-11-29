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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Highlight Tour',
              style: Theme.of(context).textTheme.headline4,
            ),

            const Text(
              'Do irure ullamco labore elit occaecat et deserunt deserunt occaecat proident ea aliquip. Sunt sunt Lorem nisi irure sunt consequat adipisicing Lorem dolor duis. Nisi minim velit sunt do eiusmod qui aute exercitation laboris aliqua consectetur. Dolore pariatur excepteur eu fugiat aliqua sunt proident mollit labore. Laboris do deserunt nostrud et consectetur aute ullamco veniam sunt elit minim quis. Labore do sit eiusmod Lorem incididunt et non elit do. Velit ex dolor magna sint dolore Lorem sunt labore cupidatat excepteur cillum.',
            ),

            RichText(
              text: TextSpan(
                style: new TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: '\nGebäude: ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(text: 'Semperbau'),
                  new TextSpan(
                      text: '\nSammlung: ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(text: 'Gemäldegalerie Alte Meister'),
                  new TextSpan(
                      text: '\nDauer: ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(text: '1 Stunde'),
                ],
              ),
            ),

            ElevatedButton.icon(
              icon: Icon(
                Icons.signpost_outlined,
                color: Colors.orange,
                size: 30.0,
              ),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.orange, width: 3),
              ),
              onPressed: () {},
              label: Text(
                'Tour Starten',
                style: TextStyle(color: Colors.orange),
              ),
            ),

            //
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
