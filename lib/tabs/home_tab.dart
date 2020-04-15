import 'package:flutter/material.dart';
import 'package:pocpay/widgets/list_activies.dart';
import 'package:pocpay/widgets/suggestion.dart';

class HomeTab extends StatefulWidget {

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab>  with SingleTickerProviderStateMixin{

  TabController _tabController;
  // Current Index of tab
  int _currentIndex = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        new TabController(vsync: this, length: 2, initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    
    return Column(
        children: <Widget>[
          Container(
              width: widthScreen,
              height: 155.0,
              color: Color(0xFF23D067),
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(14.0, 9.0, 0.0, 5.0),
                        child: Text("Sugestões para você",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                      )),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 120.0,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Suggestion();
                        },
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            width: widthScreen,
            height: 50.0,
            color: Color(0xFFE3E4E6),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text("Atividades",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                ),
                new Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  decoration: new BoxDecoration(),
                  child: new TabBar(
                    indicatorColor: Color(0xFF23D067),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 0.0),
                    isScrollable: true,
                    controller: _tabController,
                    tabs: [
                      new Container(
                          height: 22.0,
                          child: Tab(
                            child: Text(
                              "Todas",
                              style: TextStyle(color: Color(0xFF9FA0A5)),
                            ),
                          )),
                      Container(
                        height: 22.0,
                        child: new Tab(
                          child: Text(
                            "Minhas",
                            style: TextStyle(color: Color(0xFF9FA0A5)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: Container(
                color: Color(0xFFE3E4E6),
                child: TabBarView(
            controller: _tabController,
            children: <Widget>[
                ListActivities(),
                ListActivities(),
                
            ],
          ),
              )),
        ],
      );
  }
}