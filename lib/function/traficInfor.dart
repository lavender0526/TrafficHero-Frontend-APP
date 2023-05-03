
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class traficInfor extends StatelessWidget {
  traficInfor({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _traficInfor(),
      backgroundColor: Color.fromRGBO(187, 214, 239, 0.5),
    );
  }
}


class _traficInfor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text('traficInfor'),
        ));
  }
}