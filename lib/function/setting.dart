
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/home/homePage.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _setting();
}
class Step {
  Step(
      this.img,
      this.title,
      [this.isExpanded = false]
      );
  String img;
  String title;
  bool isExpanded;
}
//在這擴增設定
List<Step> getPersonSet() {
  return [
    Step('assets/imgSetting/personSet.png','個人化推播設定'),
  ];
}
List<Step> getLocationSet() {
  return [
    Step('assets/imgSetting/locationSet.png','快速地點設定'),
  ];
}
class setCheckBox{
  bool selected;
  String text;
  setCheckBox(this.text,this.selected);
}

class _setting extends State<setting> {
  final List<Step> _getPersonSet = getPersonSet();
  final List<Step> _getLocationSet = getLocationSet();
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
            Column(
                children:[
                  _setPerson(),
                  _setlocation(),
                ]
            ),
              ],
            )
              );
  }
  Widget _setPerson() {//個人化推播設定
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _getPersonSet[index].isExpanded = !isExpanded;
        });
      },
      children: _getPersonSet.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          backgroundColor: Color.fromRGBO(221,235,247,1),
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(step.title,style: TextStyle(fontSize: 20),),
              leading: Image.asset(step.img,width: 40,),
            );
          },
          body: Column(
            children:
            personSet.map((e) {
              return _personSet(e);
            }).toList(),
          ),
          canTapOnHeader: true,
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
  Widget _setlocation() {//快速地點設定
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _getLocationSet[index].isExpanded = !isExpanded;
        });
      },
      children: _getLocationSet.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          backgroundColor: Color.fromRGBO(221,235,247,1),
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(step.title,style: TextStyle(fontSize: 20),),
              leading: Image.asset(step.img,width: 40,),
            );
          },
          body: Column(
            children:
            locationSet.map((e) {
              return _locationSet(e);
            }).toList(),
          ),
          canTapOnHeader: true,
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
  //checkbox設置
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
        Text(s.text,style: TextStyle(fontSize: 20),),
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
        Text(s.text,style: TextStyle(fontSize: 20),),
      ],
    );
  }
}
