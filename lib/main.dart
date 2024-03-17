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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter App '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // always marked "final".

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.


    return SafeArea(

      child: Scaffold(

        appBar: AppBar(
          backgroundColor:Colors.redAccent,
          leading:const Icon(Icons.menu,color: Colors.white,),

          actions:const [
            Icon(Icons.search,color: Colors.white,),
            Icon(Icons.more_vert,color: Colors.white,),
          ],
          centerTitle: true,

        ),
        body: const Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child:Text("       Red & White Group of Institues\nOne Step IN Changing Education Chain...",style:TextStyle(fontSize:20,color: Colors.red),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          backgroundColor: Colors.red[400],
          child: const Icon(Icons.add,color: Colors.white,),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
