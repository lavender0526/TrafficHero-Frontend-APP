
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class trafficInfor extends StatefulWidget {
  const trafficInfor({super.key});

  @override
  State<trafficInfor> createState() => _trafficInfor();
}

class _trafficInfor extends State<trafficInfor> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text('traficInfor'),
        ));
  }
}