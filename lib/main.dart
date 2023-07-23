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
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello World! It's Yemi"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: const TextInputWidget()
        // const Row(
        //   children: <Widget>[TestWdidget(), TestWdidget(), TestWdidget()],
        // ),
        );
  }
}

// class TestWdidget extends StatelessWidget {
//   const TestWdidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Text("Hello World!");
//   }
// }

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  // String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void emptyFunction() {}

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "Type a message here",
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            splashColor: Colors.black12,
            tooltip: "Send Maeesage",
            onPressed: emptyFunction(),
          )),
    );
  }
}
