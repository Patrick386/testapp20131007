
import 'package:flutter/material.dart';

import 'check_out_screen.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test app'),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              color: Colors.amberAccent,
                child:              FilledButton(onPressed: () async {
                  /// 결제페이지로 이동
                  bool? result = await Navigator.push(
                      context,
                      MaterialPageRoute<bool>(
                        builder: (BuildContext context) => CheckOutScreen(),
                      ));
                }, child: const Text('Check out')),)
          ],
        ),
      ),
    );
  }
}
