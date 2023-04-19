import 'package:flutter/material.dart';
import 'package:repair/widget/text.dart';

class Kvitancya extends StatefulWidget {
  const Kvitancya({super.key});

  @override
  State<Kvitancya> createState() => _KvitancyaState();
}

class _KvitancyaState extends State<Kvitancya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: mainText('Квитанция о подаче', Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          childText('Квитанция о подаче заявки', Colors.black),
        ],
      ),
    );
  }
}
