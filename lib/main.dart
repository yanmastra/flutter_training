import 'package:customer_app/list_view_example.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF093F68),
          primary: const Color(0xFF093F68),
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Color(0xFF093F68),
          backgroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF093F68),
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Jemput Bang'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
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

  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: menuIndex == 0 ? LoginPage() : ListViewExample(),
          ),
          SizedBox(
            height: 57,
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        menuIndex = 0;
                      });
                    },
                    child: Text(
                      "Login Page",
                      style: TextStyle(
                        fontWeight: menuIndex == 0 ? FontWeight.bold : FontWeight.normal,
                        fontSize: menuIndex == 0 ? 16 : 14,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        menuIndex = 1;
                      });
                    },
                    child: Text(
                      "ListViewExample",
                      style: TextStyle(
                        fontWeight: menuIndex == 1 ? FontWeight.bold : FontWeight.normal,
                        fontSize: menuIndex == 1 ? 16 : 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        children: const [
          Text("Login Page"),
        ],
      );
}
