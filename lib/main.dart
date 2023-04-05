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
      title: 'Theme',
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.blue,
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          displaySmall: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          titleLarge: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          titleMedium: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          bodyLarge: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
          bodyMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          displaySmall: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          titleLarge: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          titleMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          bodyLarge: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
          bodyMedium: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
        ),
      ),
      themeMode: ThemeMode.light,
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
      final mySnackBar = SnackBar(
        content: Text(
          "Berhasil menambahkan angka",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        padding: EdgeInsets.all(10),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blueAccent,
      );
      ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displaySmall,
            ),
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
