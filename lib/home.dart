import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocpay/tabs/home_tab.dart';
import 'package:pocpay/widgets/suggestion.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  List<BottomNavigationBarItem> _buildTabItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: currentTab == 0 ? Colors.black : Color(0xFF92a199),
          ),
          title: Text(
            "Início",
            style: TextStyle(
                color: currentTab == 0 ? Colors.black : Color(0xFF92a199)),
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.credit_card,
              color: currentTab == 1 ? Colors.black : Color(0xFF92a199)),
          title: Text("Carteira",
              style: TextStyle(
                  color: currentTab == 1 ? Colors.black : Color(0xFF92a199)))),
      BottomNavigationBarItem(icon: Container(), title: Container()),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none,
              color: currentTab == 2 ? Colors.black : Color(0xFF92a199)),
          title: Text("Notificações",
              style: TextStyle(
                  color: currentTab == 2 ? Colors.black : Color(0xFF92a199)))),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/settings.svg',
            width: 22.5,
          ),
          title: Text("Ajustes",
              style: TextStyle(
                  color: currentTab == 3 ? Colors.black : Color(0xFF92a199)))),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = HomeTab();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE3E4E6),
          elevation: 0.0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(
              'assets/images/qr-code.svg',
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: SvgPicture.asset(
                'assets/images/add-user.svg',
                width: 30.0,
              ),
            ),
          ],
          title: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Meu saldo",
                style: TextStyle(color: Colors.black, fontSize: 13.0),
              ),
              Text("R\$ 0,00")
            ],
          ),
        ),
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: Container(
          height: 70.0,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                right: 0.0,
                top: 12.0,
                bottom: 0.0,
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedFontSize: 12.5,
                  unselectedFontSize: 12,
                  currentIndex: currentTab,
                  items: _buildTabItems(),
                  onTap: null,
                ),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width / 2.33,
                top: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // Add one stop for each color. Stops should increase from 0 to 1

                        colors: [
                          // Colors are easy thanks to Flutter's Colors class.
                          Color(0xFFa1edb0),
                          Color(0xFF23D067),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(40.0)),
                  height: 60.0,
                  width: 62.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "\$",
                        style: TextStyle(color: Colors.white, fontSize: 27.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Text("Pagar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
