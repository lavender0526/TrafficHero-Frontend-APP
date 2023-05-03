import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/navBar/account.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'User',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              "User@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  '..\picture\cat.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(75, 145, 209, 1),
              image: DecorationImage(
                image: NetworkImage(
                  'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/00/a0000276/img/basic/a0000276_main.jpg?20170427165412&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('管理帳戶'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => account()
                  )
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('個人化推播設定'),
            onTap: () => print("settings"),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text('快速地點設定'),
            onTap: () => print("pp"),
          ),
        ]));
  }
}