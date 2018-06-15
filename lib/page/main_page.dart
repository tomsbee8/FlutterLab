import 'package:flutter/material.dart';
import 'package:flutter_app/component/icon_tab.dart';
import 'package:flutter_app/page/home.dart';
import 'package:flutter_app/page/find.dart';
import 'package:flutter_app/page/message.dart';
import 'package:flutter_app/page/mine.dart';

const int INDEX_HOME = 0;
const int INDEX_FIND = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;

Color tabDefaultColor = new Color.fromARGB(255, 0, 0, 0);

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainPageState();
}

class MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(initialIndex: _currentIndex, length: 4, vsync: this);
    onChanged = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          new HomeTab(),
          new FindTab(),
          new MessageTab(),
          new MineTab()
        ],
        controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          controller: _controller,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: new TextStyle(fontSize: 11.0),
          tabs: <IconTab>[
            new IconTab(
                icon: _currentIndex == INDEX_HOME
                    ? "assets/images/btn_nav_home_p.png"
                    : "assets/images/btn_nav_home.png",
                text: "主页",
                color: _currentIndex == INDEX_HOME
                    ? tabDefaultColor
                    : Colors.grey[600]),
            new IconTab(
                icon: _currentIndex == INDEX_FIND
                    ? "assets/images/btn_nav_find_p.png"
                    : "assets/images/btn_nav_find.png",
                text: "发现",
                color: _currentIndex == INDEX_FIND
                    ? tabDefaultColor
                    : Colors.grey[600]),
            new IconTab(
                icon: _currentIndex == INDEX_MESSAGE
                    ? "assets/images/btn_nav_message_p.png"
                    : "assets/images/btn_nav_message.png",
                text: "消息",
                color: _currentIndex == INDEX_MESSAGE
                    ? tabDefaultColor
                    : Colors.grey[600]),
            new IconTab(
                icon: _currentIndex == INDEX_MINE
                    ? "assets/images/btn_nav_mine_p.png"
                    : "assets/images/btn_nav_mine.png",
                text: "我的",
                color: (_currentIndex == INDEX_MINE)
                    ? tabDefaultColor
                    : Colors.grey[600]),
          ],
        ),
      ),
    );
  }
}
