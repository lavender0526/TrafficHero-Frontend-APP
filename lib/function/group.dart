import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/function/joinGroup.dart';

class group extends StatelessWidget {
  group({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _group(),
      backgroundColor: Color.fromRGBO(187, 214, 239, 0.5),
    );
  }
}

class _group extends StatelessWidget {
  //取得輸入之群組code的Controller
  TextEditingController _inputGCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,width: 50,),
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