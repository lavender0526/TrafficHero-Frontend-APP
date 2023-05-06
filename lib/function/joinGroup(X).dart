
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class joinGrou extends StatefulWidget {
  joinGrou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("交通群組"),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => _joinGroup();
}

class _joinGroup extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Expanded( //組名+退出
              child: Container(
                child: Row(
                  children: [
                    Expanded(child:
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("雲科大車隊(UBXY68)", style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                    ),
                      flex: 7,
                    ),
                    Expanded(child:
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        child: Text('退出群組', style: TextStyle(fontSize: 15,
                          color: Colors.black,)),
                        onPressed: () {
                          //退出群組方法
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(50, 50),
                          backgroundColor: Color.fromRGBO(199, 199, 199, 1),
                        ),
                      ),
                    ),
                      flex: 3,
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded( //人數
              child: Container(
                decoration: new BoxDecoration (
                    color: Color.fromRGBO(150, 192, 230, 1),
                    border: Border.all(
                        color: Color.fromRGBO(65, 113, 156, 1))
                ),
                child: Row(
                  children: [
                    Expanded(child:
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("人數：3", style: TextStyle(fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                    ),
                      flex: 6,
                    ),
                    Expanded(child:
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("點擊查看群組人員", style: TextStyle(fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                    ),
                      flex: 4,
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded(child: //訊息框
            Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: new BoxDecoration (
                    color: Color.fromRGBO(150, 192, 230, 1),
                    border: Border.all(
                        color: Color.fromRGBO(65, 113, 156, 1))
                ),
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                        Text('123\n456\n456\n456\n456\n456\n456\n456',
                            style: TextStyle(fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ]
                  ),
                )
            ),
              flex: 7,
            ),
            Expanded(child: //標籤
            Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: new BoxDecoration (
                    color: Color.fromRGBO(189, 215, 238, 1),
                    border: Border.all(
                        color: Color.fromRGBO(65, 113, 156, 1))
                ),
                child: Row(
                  children: [
                    Expanded(child:
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row( //第一行標籤
                            children: [
                              ElevatedButton(
                                child: Text('加油', style: TextStyle(
                                  fontSize: 20, color: Colors.black,)),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(
                                        231, 231, 231, 1),
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                              ),
                              SizedBox(width: 5,),
                              ElevatedButton(
                                child: Text('等等', style: TextStyle(
                                  fontSize: 20, color: Colors.black,)),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(
                                        231, 231, 231, 1),
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                              ),
                              SizedBox(width: 5,),
                              ElevatedButton(
                                child: Text('拋錨', style: TextStyle(
                                  fontSize: 20, color: Colors.black,)),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(
                                        231, 231, 231, 1),
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row( //第二行標籤
                            children: [
                              ElevatedButton(
                                child: Text('廁所', style: TextStyle(
                                  fontSize: 20, color: Colors.black,)),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(
                                        231, 231, 231, 1),
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                              ),
                              SizedBox(width: 5,),
                              ElevatedButton(
                                child: Text('不用等', style: TextStyle(
                                  fontSize: 20, color: Colors.black,)),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(
                                        231, 231, 231, 1),
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                              ),
                              SizedBox(width: 5,),
                              ElevatedButton(
                                child: Text('@', style: TextStyle(
                                  fontSize: 20, color: Colors.black,)),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(
                                        231, 231, 231, 1),
                                    shape:
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                      flex: 9,
                    ),
                    Expanded(child:
                    Padding(padding: EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        child: Text('+', style: TextStyle(fontSize: 40,
                          color: Colors.white,)),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(124, 176, 224, 1),
                            shape:
                            RoundedRectangleBorder(borderRadius: BorderRadius
                                .circular(20))
                        ),
                      ),
                    ),
                      flex: 2,
                    )
                  ],
                )
            ),
              flex: 3,
            ),
            Expanded(child: //定位+語音訊息
            Row(
              children: [
                Expanded(child:
                SizedBox(width: 20,),
                  flex: 1,
                ),
                Expanded(child:
                IconButton(
                  icon: Image.asset('assets/imgGroup/man.png'),
                  iconSize: 100,
                  onPressed: () {
                    //傳送訊息
                  },
                ),
                  flex: 3,
                ),
                Expanded(child:
                SizedBox(width: 20,),
                  flex: 2,
                ),
                Expanded(child:
                IconButton(
                  icon: Image.asset('assets/imgGroup/man.png'),
                  iconSize: 100,
                  onPressed: () {
                    //傳送定位
                  },
                ),
                  flex: 3,
                ),
                Expanded(child:
                SizedBox(width: 20,),
                  flex: 1,
                ),
              ],
            ),
              flex: 4,
            )
          ],
        )
    );
  }
}


// class joinGroup extends StatelessWidget {
//   joinGroup({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//           children: [
//             Expanded(//組名+退出
//               child: Container(
//                 child: Row(
//                   children: [
//                     Expanded(child:
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text("雲科大車隊(UBXY68)",style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold)),
//                     ),
//                       flex: 7,
//                     ),
//                     Expanded(child:
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: ElevatedButton(
//                         child: Text('退出群組',style: TextStyle(fontSize: 15, color: Colors.black,)),
//                         onPressed: () {
//                           //退出群組方法
//                         },
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: const Size(50, 50),
//                           backgroundColor: Color.fromRGBO(199, 199, 199, 1),
//                         ),
//                       ),
//                     ),
//                       flex: 3,
//                     ),
//                   ],
//                 ),
//               ),
//               flex: 1,
//             ),
//             Expanded(//人數
//               child:Container(
//                 decoration: new BoxDecoration (
//                     color: Color.fromRGBO(150, 192, 230, 1),
//                     border: Border.all(
//                         color: Color.fromRGBO(65, 113, 156, 1))
//                 ),
//                 child:Row(
//                   children: [
//                     Expanded(child:
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text("人數：3",style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold)),
//                     ),
//                       flex: 6,
//                     ),
//                     Expanded(child:
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: Text("點擊查看群組人員",style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold)),
//                     ),
//                       flex: 4,
//                     ),
//                   ],
//                 ),
//               ),
//               flex: 1,
//             ),
//             Expanded(child://訊息框
//             Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: new BoxDecoration (
//                     color: Color.fromRGBO(150, 192, 230, 1),
//                     border: Border.all(
//                         color: Color.fromRGBO(65, 113, 156, 1))
//                 ),
//                 child: SingleChildScrollView(
//                   child: Column(
//                       children:[
//                         Text('123\n456\n456\n456\n456\n456\n456\n456',style: TextStyle(fontSize: 50,color:Colors.black,fontWeight: FontWeight.bold)),
//                       ]
//                   ),
//                 )
//             ),
//               flex: 7,
//             ),
//             Expanded(child://標籤
//             Container(
//                 width: MediaQuery.of(context).size.width,
//                 decoration: new BoxDecoration (
//                     color: Color.fromRGBO(189,215,238, 1),
//                     border: Border.all(
//                         color: Color.fromRGBO(65, 113, 156, 1))
//                 ),
//                 child:Row(
//                   children: [
//                     Expanded(child:
//                     Padding(
//                       padding: EdgeInsets.all(20.0),
//                       child: Column(
//                         children: [
//                           Row(//第一行標籤
//                             children: [
//                               ElevatedButton(
//                                 child: Text('加油',style: TextStyle(fontSize: 20, color: Colors.black,)),
//                                 onPressed: () { },
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: Color.fromRGBO(231, 231, 231, 1),
//                                     shape:
//                                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                                 ),
//                               ),
//                               SizedBox(width: 5,),
//                               ElevatedButton(
//                                 child: Text('等等',style: TextStyle(fontSize: 20, color: Colors.black,)),
//                                 onPressed: () { },
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: Color.fromRGBO(231, 231, 231, 1),
//                                     shape:
//                                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                                 ),
//                               ),
//                               SizedBox(width: 5,),
//                               ElevatedButton(
//                                 child: Text('拋錨',style: TextStyle(fontSize: 20, color: Colors.black,)),
//                                 onPressed: () { },
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: Color.fromRGBO(231, 231, 231, 1),
//                                     shape:
//                                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 15,),
//                           Row(//第二行標籤
//                             children: [
//                               ElevatedButton(
//                                 child: Text('廁所',style: TextStyle(fontSize: 20, color: Colors.black,)),
//                                 onPressed: () { },
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: Color.fromRGBO(231, 231, 231, 1),
//                                     shape:
//                                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                                 ),
//                               ),
//                               SizedBox(width: 5,),
//                               ElevatedButton(
//                                 child: Text('不用等',style: TextStyle(fontSize: 20, color: Colors.black,)),
//                                 onPressed: () { },
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: Color.fromRGBO(231, 231, 231, 1),
//                                     shape:
//                                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                                 ),
//                               ),
//                               SizedBox(width: 5,),
//                               ElevatedButton(
//                                 child: Text('@',style: TextStyle(fontSize: 20, color: Colors.black,)),
//                                 onPressed: () { },
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: Color.fromRGBO(231, 231, 231, 1),
//                                     shape:
//                                     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                       flex: 9,
//                     ),
//                     Expanded(child:
//                     Padding(padding: EdgeInsets.all(20.0),
//                       child: ElevatedButton(
//                         child: Text('+',style: TextStyle(fontSize: 40, color: Colors.white,)),
//                         onPressed: () { },
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Color.fromRGBO(124, 176, 224, 1),
//                             shape:
//                             RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
//                         ),
//                       ),
//                     ),
//                       flex:2,
//                     )
//                   ],
//                 )
//             ),
//               flex: 3,
//             ),
//             Expanded(child://定位+語音訊息
//             Row(
//               children: [
//                 Expanded(child:
//                 SizedBox(width: 20,),
//                   flex: 1,
//                 ),
//                 Expanded(child:
//                   IconButton(
//                     icon: Image.asset('assets/imgGroup/man.png'),
//                     iconSize: 100,
//                     onPressed: () {
//                       //傳送訊息
//                     },
//                   ),
//                   flex: 3,
//                 ),
//                 Expanded(child:
//                 SizedBox(width: 20,),
//                   flex: 2,
//                 ),
//                 Expanded(child:
//                   IconButton(
//                     icon: Image.asset('assets/imgGroup/man.png'),
//                     iconSize: 100,
//                     onPressed: () {
//                       //傳送定位
//                     },
//                   ),
//                   flex: 3,
//                 ),
//                 Expanded(child:
//                 SizedBox(width: 20,),
//                   flex: 1,
//                 ),
//               ],
//             ),
//               flex: 4,
//             )
//           ],
//         )
//     );
//   }
// }