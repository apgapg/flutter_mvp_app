
import 'package:flutter/material.dart';
import 'package:flutter_mvp_app/ui/home_page_presentor.dart';
import 'package:flutter_mvp_app/ui/home_page_view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);


  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> implements HomePageView {

  String _text="Loading...";

  HomePagePresentor _presentor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _presentor=new HomePagePresentor();
    _presentor.attachView(this);
    _presentor.getText();
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("MVP app"),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Text(_text,style: new TextStyle(fontSize: 18.0),),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  onLoadText(String text) {
    // TODO: implement onLoadText
    setState(() {
      _text=text;
    });
  }
  @override
  onFailLoadText() {
    // TODO: implement onFailLoadText
    setState(() {
      _text="Failed";
    });
  }


}
