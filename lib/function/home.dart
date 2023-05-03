
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class home extends StatelessWidget {
  home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _home(),
      backgroundColor: Color.fromRGBO(187, 214, 239, 0.5),
    );
  }
}

class _home extends StatelessWidget {
  _home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child : SingleChildScrollView(
          child:Column(
            children: [
            SizedBox(height: 50,width: 50,),
            Row(
              children:  const[
                SizedBox(width: 15,),
                Text('23°',style: TextStyle(fontSize: 100,color:Color.fromRGBO(46, 117, 182, 1),),),//今日溫度
                Text('雲林縣斗六市',style: TextStyle(fontSize: 30,color:Color.fromRGBO(46, 117, 182, 1),))
              ],
            ),
            Container(
              margin: EdgeInsets.all(15.0),//與螢幕距離
              height:200,
              decoration: new BoxDecoration (
                color:Color.fromRGBO(46, 117, 182, 1),
                //设置四周圆角 角度
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                //设置四周邊框border: new Border.all(width: 1, color: Colors.red),
              ),
              child: Center(
                child: Text('今日路況',style: TextStyle(fontSize: 50,color:Color.fromRGBO(255, 255, 255, 1),),),//今日路況
              ),
            ),
            // SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.all(15.0),
              height:500,
              decoration: new BoxDecoration(
                color:Color.fromRGBO(46, 117, 182, 1),
                //设置四周圆角 角度
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                //设置四周邊框border: new Border.all(width: 1, color: Colors.red),
              ),
              child: Center(
                child: Text('今日天氣',style: TextStyle(fontSize: 50,color:Color.fromRGBO(255, 255, 255, 1),),),//今日路況
              ),
            ),
            ],

    )
    ));
  }
}