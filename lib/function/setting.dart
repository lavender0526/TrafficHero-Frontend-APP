
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/home/homePage.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _setting();
}

class setCheckBox{
    bool selected;
    String text;
    setCheckBox(this.text,this.selected);
}
class openState{
  openState([this.isOpen=false]);
  bool isOpen;
}

class _setting extends State<setting> {
  final List<openState> _openState=[];
  List<setCheckBox> personSet =[];
  List<setCheckBox> locationSet =[];

  void initState(){
    personSet.add(setCheckBox('打開APP自動開啟', false));
    personSet.add(setCheckBox('氣象資訊', false));
    personSet.add(setCheckBox('施工資訊', false));
    personSet.add(setCheckBox('停車場資訊', false));
    locationSet.add(setCheckBox('加油站', false));
    locationSet.add(setCheckBox('廁所', false));
    locationSet.add(setCheckBox('汽車充電站', false));
    locationSet.add(setCheckBox('電動車電池站', false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                        Expanded(child:
                        SizedBox(height: 20,),
                          flex: 1,
                        ),
                        Expanded(child:
                        Text('未登入',style: TextStyle(fontSize: 30,color:Colors.black,)),
                          flex: 2,
                        ),
                        Expanded(child:
                          TextButton(
                            onPressed:(){},//登入紐
                            child: Text('點擊此進行登入或註冊',style: TextStyle(fontSize: 13,color:Colors.black,)),
                            style: TextButton.styleFrom(
                              minimumSize: const Size(100, 30),
                              backgroundColor: Color.fromRGBO(187, 214, 239, 1),
                            ),
                        ),
                          flex: 1,
                        ),
                        Expanded(child:
                          SizedBox(height: 20,),
                            flex: 1,
                          ),
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
            SizedBox(height: 10,),
            Container(
                // child:ListView.builder(
                //     itemBuilder: (BuildContext context, int index){
                //       return ExpansionPanelList (
                //         expansionCallback: (int index, bool isExpanded) {
                //           setState(() {
                //             _openState[index].isOpen = !isExpanded;
                //           });
                //         },
                //         animationDuration: Duration(milliseconds:1000),
                //         dividerColor:Colors.red,
                //         elevation:1,
                //         children:
                //         // children : [
                //         //   ExpansionPanel (
                //         //     headerBuilder: (BuildContext context, bool isExpanded) {
                //         //       return ListTile(
                //         //         title: Text('個人化推播設定'),
                //         //       );
                //         //     },
                //         //     body: ListTile(
                //         //       title: Text('test'),
                //         //     ),
                //         //     // Column(
                //         //     //   children:
                //         //     //   personSet.map((e) {
                //         //     //     return _personSet(e);
                //         //     //   }).toList(),
                //         //     // ),
                //         //     canTapOnHeader: true,
                //         //     isExpanded: isOpen,
                //         //   ),
                //         //   // ExpansionPanel (
                //         //   //   headerBuilder: (BuildContext context, bool isExpanded) {
                //         //   //     return ListTile(
                //         //   //       title: Text('快速地點設定'),
                //         //   //     );
                //         //   //   },
                //         //   //   body: Column(
                //         //   //     children:
                //         //   //     locationSet.map((e) {
                //         //   //       return _locationSet(e);
                //         //   //     }).toList(),
                //         //   //   ),
                //         //   //   isExpanded: isOpen,
                //         //   // ),
                //         // ],
                //       );
                //     }
                // )
            )


              ],
            )
              );
  }

  Widget _personSet(setCheckBox s){
    return Row(
      children: [
        Checkbox(
            value: s.selected,
            onChanged: (value){
              s.selected = !s.selected;
              setState(() {});
            },
        ),
        Text(s.text),
      ],
    );
  }
  Widget _locationSet(setCheckBox s){
    return Row(
      children: [
        Checkbox(
          value: s.selected,
          onChanged: (value){
            s.selected = !s.selected;
            setState(() {});
          },
        ),
        Text(s.text),
      ],
    );
  }
}
