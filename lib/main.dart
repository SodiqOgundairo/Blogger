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
      title: 'YemisApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController controller;
  String text = "";

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  void changeText(String text) {
    setState(() {
      this.text = text;
    });
  }

  void _sendMessage() {
    changeText(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World! It's Yemi"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: controller,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.message),
                labelText: "Type a message here",
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send),
                  splashColor: Colors.black12,
                  tooltip: "Send Message",
                  onPressed: () {
                    _sendMessage();
                  },
                )),
          ),
          Text(text),
        ],
      ),
    );
  }
}
