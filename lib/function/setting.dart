
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/home/homePage.dart';

class setting extends StatelessWidget {
  setting({super.key});
  // setting createState()=> _setting();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _setting(),
      backgroundColor: Color.fromRGBO(187, 214, 239, 0.5),
    );
  }
}


class _setting extends StatelessWidget {
  bool autoOpen = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55,),
            Container(
              height: 120,
              decoration: new BoxDecoration (
                  color: Color.fromRGBO(187, 214, 239, 1),
              ),
              child: Row(
                children: [
                  Expanded(child:
                    SizedBox(width: 30,),
                    flex: 1,
                  ),
                  Expanded(child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text('未登入',style: TextStyle(fontSize: 30,color:Colors.black,)),
                        TextButton(
                          onPressed:(){},//登入紐
                          child: Text('點擊此進行登入或註冊',style: TextStyle(fontSize: 13,color:Colors.black,)),
                          style: TextButton.styleFrom(
                            minimumSize: const Size(100, 30),
                            backgroundColor: Color.fromRGBO(187, 214, 239, 1),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                    flex: 7,
                  ),
                  Expanded(child:
                    SizedBox(width: 80,),
                    flex: 5,
                  ),
                  Expanded(child:
                    Image.asset('assets/imgGroup/man.png',),
                    flex: 3,
                  ),
                  Expanded(child:
                    SizedBox(width: 30,),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ExpansionPanelList(
                  expansionCallback: (int index,bool isExpanded){},
                  children: [
                    ExpansionPanel(
                        headerBuilder: (BuildContext context,bool isExpanded){
                          return ListTile(
                            title: Text('個人化推播設定'),
                          );
                        },
                        body: Container(
                          child: Row(
                            children: [
                              Text('打開APP自動開啟',style: TextStyle(fontSize: 20,color: Colors.black),),
                              Checkbox(
                                value: autoOpen,
                                onChanged: (newValue) {
                                  // setState(() {
                                  //   autoOpen = !autoOpen;
                                  // });
                                },
                            )
                            ]
                        )
                    )
    )],
                )
              ],
            ),
          ],
        )
    );
  }
}