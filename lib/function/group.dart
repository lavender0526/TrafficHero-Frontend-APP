import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class group extends StatefulWidget {
  const group({super.key});

  @override
  State<group> createState() => _group();

}

class _group extends State<group> {
  //取得輸入之群組code的Controller
  TextEditingController _inputGCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('你現在的群組：',textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color:Colors.black,)),
              SizedBox(height: 5,),
              Container(
                height: 200,
                // width: 800,
                decoration: new BoxDecoration (
                    color: Color.fromRGBO(187, 214, 239, 1),
                    border: Border.all(
                        color: Color.fromRGBO(65, 113, 156, 1))
                ),
                child: Column(
                    children:[
                      SizedBox(height: 40,),
                      Text('你還沒有群組，輸入代碼加入吧！',style: TextStyle(fontSize: 20, color: Colors.black,)),
                      SizedBox(height: 20,),
                      Row(
                          children:[
                            Expanded(
                              child:
                              SizedBox(height: 10,),
                              flex: 3,
                            ),
                            Expanded(
                              child: TextField(
                                controller: _inputGCode, //设置controller
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                        borderSide: BorderSide(
                                          color: Color.fromRGBO(65,113,156, 1),
                                          width: 2,
                                        )
                                    ),
                                    hintText: '輸入代碼',
                                    hintStyle: TextStyle(color: Colors.white,),
                                    filled: true,
                                    fillColor: Color.fromRGBO(91, 155, 213, 1)
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              flex: 7,
                            ),
                            Expanded(
                              child:
                              SizedBox(height: 10,),
                              flex: 1,
                            ),
                            Expanded(
                              child:
                              ElevatedButton(
                                child: Text('加入',style: TextStyle(fontSize: 15, color: Colors.white,)),
                                onPressed: () {
                                  print(_inputGCode.text); //取得資料
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(50, 50),
                                    backgroundColor: Color.fromRGBO(39, 99, 153, 1),
                                    shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child:
                              SizedBox(height: 10,),
                              flex: 3,
                            ),
                          ]
                      ),
                    ]
                ),
              ),
              SizedBox(height: 10,),
              Text('你曾經加入的群組：',style: TextStyle(fontSize: 20,color:Colors.black,)),
              SizedBox(height: 5,),
              Container(
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                            height: 30,
                            decoration: new BoxDecoration (
                                color: Color.fromRGBO(150, 192, 230, 1),
                                border: Border.all(
                                    color: Color.fromRGBO(65, 113, 156, 1))
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("雲科大車隊(UBXY68)    目前人數：3",style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold)),
                            )
                        ),
                        Container(
                          height: 180,
                          decoration: new BoxDecoration (
                              color: Color.fromRGBO(187, 214, 239, 1),
                              border: Border.all(
                                  color: Color.fromRGBO(65, 113, 156, 1))
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text('群組人員：',style: TextStyle(fontSize: 20,color:Colors.black,)),
                                Row(//User圖片
                                  children: [
                                    Expanded(child:
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child:Row(
                                            children:[
                                              SizedBox(width: 10,),
                                              Image.asset('assets/imgGroup/man.png',
                                                width: 80,
                                              ),
                                              SizedBox(width: 10,),
                                              Image.asset('assets/imgGroup/woman.png',
                                                width: 80,
                                              ),
                                              SizedBox(width: 10,),
                                              Image.asset('assets/imgGroup/woman.png',
                                                width: 80,
                                              ),
                                            ]
                                        )
                                    ),
                                      flex: 8,
                                    ),
                                    Expanded(child:
                                    Align(//加入群組驅動紐
                                      alignment: Alignment.centerRight,
                                      // child:Padding(
                                      // padding: EdgeInsets.all(15),
                                      child:IconButton(
                                        icon: Image.asset('assets/imgGroup/enter.png'),
                                        iconSize: 75,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => joinGroup()),
                                          );
                                        },
                                      ),
                                      // )

                                    ),
                                      flex:2,
                                    )
                                  ],
                                ),
                                Row(//User姓名
                                  children: [
                                    Expanded(child:
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child:Row(
                                            children:[
                                              SizedBox(width: 26,),
                                              Text('User1',style: TextStyle(fontSize: 20,color:Colors.black,)),
                                              SizedBox(width: 37,),
                                              Text('User2',style: TextStyle(fontSize: 20,color:Colors.black,)),
                                              SizedBox(width: 40,),
                                              Text('User3',style: TextStyle(fontSize: 20,color:Colors.black,)),
                                            ]
                                        )
                                    ),
                                      flex: 8,
                                    ),
                                    Expanded(child:
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child:Padding(
                                          padding: EdgeInsets.all(10),
                                          child:Text('加入群組',style: TextStyle(fontSize: 15,color:Colors.black,)),
                                        )
                                    ),
                                      flex:2,
                                    )
                                  ],
                                )
                              ]
                          ),
                        )
                      ]
                  )
              ),
            ])
    );


  }
}
class joinGroup extends StatelessWidget {//加入群組的Class
  const joinGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(46, 117, 182, 1),
        title: const Text('交通群組'),
      ),
      body: Container(
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
                    icon: Image.asset('assets/imgGroup/voice.png'),
                    iconSize: 200,
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
                    icon: Image.asset('assets/imgGroup/gps.png'),
                    iconSize: 200,
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
      ),
    );
  }
}