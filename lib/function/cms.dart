
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class cms extends StatefulWidget {
  const cms({super.key});

  @override
  State<cms> createState() => _cms();
}

class _cms extends State<cms> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child:Row(
                    children:[
                      Text("快速地點：",style: TextStyle(fontSize: 20,color:Colors.black,)),
                      //快速地點按鈕
                      IconButton(
                        icon: Image.asset('assets/imgCms/toilet.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),//廁所
                      IconButton(
                        icon: Image.asset('assets/imgCms/gasStation.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),//加油站
                      IconButton(
                        icon: Image.asset('assets/imgCms/chargingStation.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),//充電站
                      IconButton(
                        icon: Image.asset('assets/imgCms/battery.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),//換電站
                    ]
                )
            ),
            Expanded(
              flex: 10,
              child: Center(
                //CMS放置處
                child:Text("感謝您使用本產品\n若有即時路況資訊將會顯示於此",style: TextStyle(fontSize: 20,color:Colors.black,)),
              ),
            )
          ],
        ));
  }
}