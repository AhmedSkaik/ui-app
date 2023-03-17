import 'package:flutter/material.dart';

class RecogniserScrean extends StatefulWidget {
  const RecogniserScrean({Key? key}) : super(key: key);

  @override
  State<RecogniserScrean> createState() => _RecogniserScreanState();
}

class _RecogniserScreanState extends State<RecogniserScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('recogniser'),
        centerTitle: true,
      ),
    );
  }
}
