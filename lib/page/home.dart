import 'package:flutter/material.dart';
import 'package:flutter_app/entity/story.dart';
import 'package:flutter_app/item/story_item.dart';

class HomeTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StoryList();
}

class StoryList extends State<HomeTab> {
  List<Story> _storys = [];

  @override
  void initState() {
    super.initState();
    initList();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 255, 255, 255),
      appBar: new AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: new Text('标题',
            style: new TextStyle(fontSize: 18.0, color: Colors.black54)),
      ),
      body: new ListView.builder(
          padding: const EdgeInsets.all(15.0),
          itemCount: _storys.length,
          itemBuilder: (BuildContext context, int position) {
            Story story = this._storys[position];

            return InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      ch: new AlertDialog(
                          content: new Text(
                        "点击Item",
                        style: new TextStyle(fontSize: 20.0),
                      )),
                      builder: (BuildContext context) {});
                },
                child: new StoryListItem(story));
          }),
    );
  }

  void initList() {
    setState(() {
//      String json = "";
//      Map userMap = JSON.decode(json);

      _storys = [
        new Story(
            name: '儿童染发',
            time: '2018-05-20',
            storyCover: '',
            title: '春天',
            subtitle: '春色满园',
            location: '河北 石家庄'),
        new Story(
            name: '放水淀粉',
            time: '2018-05-25',
            storyCover: '',
            title: '夏天',
            subtitle: '祖国的花朵',
            location: '湖北 武汉'),
        new Story(
            name: '三大放送',
            time: '2018-06-20',
            storyCover: '',
            title: '冬天',
            subtitle: '皎洁白雪',
            location: '浙江 杭州'),
        new Story(
            name: "是非得失",
            time: '2018-02-02',
            storyCover: '',
            title: '秋天',
            subtitle: '秋风萧瑟',
            location: '加拿大 温哥华'),
      ];
    });
  }
}
