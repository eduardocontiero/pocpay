import 'package:flutter/material.dart';
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
              height: 160.0,
              color: Color(0xFF23D067),
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Sugestões para você",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                      )),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 125.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                  padding: const EdgeInsets.only(left: 10.0),
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
                    labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
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
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 0.3,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: Image.asset('assets/images/man.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "Você",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text("pagou a"),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      "@FlutterDev",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0),
                              Text("Puta, cerveja e churrasco"),
                              SizedBox(height: 10.0,),
                              Row(
                                children: <Widget>[
                                  Text("R\$140", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Text("|", style: TextStyle(color: Color(0xFF9FA0A5))),
                                  ),
                                  Icon(Icons.people, color: Color(0xFF9FA0A5), size: 15.0),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("1 semana atrás", style: TextStyle(color: Color(0xFF9FA0A5))),
                                  ),
                                  Expanded(child:Padding(
                                    padding: const EdgeInsets.only(left:25.0),
                                    child: Icon(Icons.mode_comment, color: Color(0xFF9FA0A5), size: 18.0 ),
                                  ),
                                  ),
                                  Text("0"),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:15.0),
                                      child: Icon(Icons.favorite,color: Color(0xFF9FA0A5), size: 18.0 ),
                                    ),
                                  ),
                                   Padding(
                                     padding: const EdgeInsets.only(right:20.0),
                                     child: Text("0"),
                                   ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                new Card(
                  child: new ListTile(
                      leading: const Icon(Icons.home), title: Text('Tab 2')),
                ),
            ],
          ),
              )),
        ],
      );
  }
}