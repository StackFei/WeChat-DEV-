import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './home/index.dart';
import './phone/index.dart';
import './search/index.dart';
import './profile/index.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.car), title: Text('微信')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.info), title: Text('通讯录')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.share), title: Text('发现')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('我')),
  ];

  final List tabBodies = [
    IndexHome(),
    IndexPhone(),
    IndexSearch(),
    IndexProfile()
  ];

  //定义默认选中 以及页面
  int currentIndex = 0;
  var currentpage;

  //初始值
  @override
  void initState() {
    currentpage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex, //当前选中的索引
        items: bottomTabs, //当前对应的页面
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentpage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentpage,
    );
  }
}
