import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'F-58 Team Project'),
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
  double _input1 = 0;
  double _input2 = 0;
  double sonuc=0;

  void toplama(){
    sonuc = (_input1 + _input2) as double;

  }

  void carp(){
    sonuc = (_input1 * _input2) as double;

  }

  void bol(){
    sonuc = (_input1 / _input2) as double;

  }

  void cikart(){
    sonuc = (_input1 - _input2) as double;

  }





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  _input1 = double.parse(value);
                });
              },
              decoration: InputDecoration(
                labelText: 'Type something',
              ),
            ),

            SizedBox(height: 16.0),

            TextField(
              onChanged: (value) {
                setState(() {
                  _input2 = double.parse(value);
                });
              },

              decoration: InputDecoration(
                labelText: 'Type something',

              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    toplama();
                    setState(() {

                    });
                  },
                  child: Text('Topla'),
                ),

                ElevatedButton(
                  onPressed: () {
                    carp();
                    setState(() {

                    });
                  },
                  child: Text('Çarp'),
                ),

                ElevatedButton(
                  onPressed: () {
                    bol();
                    setState(() {

                    });
                  },
                  child: Text('Bol'),
                ),

                ElevatedButton(
                  onPressed: () {
                    cikart();
                    setState(() {

                    });
                  },
                  child: Text('Çıkart'),
                ),
              ],
            ),
            Text("sonuç: ${sonuc}",style: TextStyle(fontSize: 25)),




          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
