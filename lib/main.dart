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
  // ignore: unused_field
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
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Highlight Tour',
                style: Theme.of(context).textTheme.headline4,
              ),

              RichText(
                text: TextSpan(
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    new TextSpan(
                        text:
                            'Incididunt eiusmod aute occaecat velit ad proident ea consequat. Non nisi eiusmod non voluptate sunt exercitation eu. Tempor enim dolor cillum voluptate ad ullamco do Lorem mollit. Quis aliqua irure ipsum aliquip et proident et incididunt. Est anim exercitation ex quis sunt enim veniam dolor ut in consequat ea adipisicing aliquip.'),
                    new TextSpan(
                        text: '\n\nGebäude: ',
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
