import 'package:flutter/material.dart';

void main() {
  runApp(EmojiApp());
}

class EmojiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EmojiHomePage(title: '🐹 Emoji Demo 🐹'),
    );
  }
}

class EmojiHomePage extends StatefulWidget {
  EmojiHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EmojiHomePageState createState() => _EmojiHomePageState();
}

class _EmojiHomePageState extends State<EmojiHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'EmojiOne'),
        ),
      ),
      body: Center(
        child: Text(
          '🐶 🐈 🐇',
          style: TextStyle(fontFamily: 'EmojiOne', fontSize: 32),
        ),
      ),
    );
  }
}
