import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

///
/// 在构建ListView时有4中选择：
//1>少量子元素的列表视图:List<Widget>，
//2>无限元素的列表视图ListView.builder利用IndexedWidgetBuilder来按需构造。
//3>固定数量元素的列表视图ListView.separated构造函数，会有两个IndexedWidgetBuilder：itemBuilder 创建widegt 形成分隔
//4>ListView.custom的SliverChildDelegate构造
///
///
class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
          backgroundColor: Colors.red,
        ),
        body:
        //ListViewWidget()
        RandomWords(),
      //ListViewSeparated()
        );
  }
}

//少量
class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: creatWidget(),
    );
  }

  List<Widget> creatWidget() {
    List<Widget> list = new List();
    var index = 0;
    for (index; index < 100; index++) {
      list.add(Center(
          child: Text(
        index.toString(),
        style: TextStyle(fontSize: 18),
      )));
    }
    return list;
  }
}

//无限
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];

  final _saved = new Set<WordPair>();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(
          () {
            if (alreadySaved) {
              _saved.remove(pair);
            } else {
              _saved.add(pair);
            }
          },
        );
      },
    );
  }
}

//固定数量
class ListViewSeparated extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return new Text("text $index", style: TextStyle(fontSize: 18),);
        },
        separatorBuilder: (BuildContext context, int index) {
          return new Container(height: 1.0, color: Colors.red);
        }, itemCount: 100,);
  }



}