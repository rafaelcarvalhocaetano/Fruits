import 'package:flutter/material.dart';
import 'package:sacolao/Dairy.dart';
import 'package:sacolao/Nutriente.dart';
import 'package:sacolao/configs/SizeConfig.dart';
import 'package:sacolao/frutas.dart';
import 'package:sacolao/vegetal.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: MyHomePage(),
            );
          },
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.menu, color: Colors.black, size: 6 * SizeConfig.imageSizeMultiplier),
                Spacer(),
                Icon(Icons.shopping_cart, color: Colors.black, size: 6 * SizeConfig.imageSizeMultiplier)
              ],
            ),
          ),
          SizedBox(height: 5 * SizeConfig.heightMultiplier,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Text("Search here", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 2.4 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                    ),),
                    Spacer(),
                    Icon(Icons.search, color: Colors.black, size: 6 * SizeConfig.imageSizeMultiplier,),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5 * SizeConfig.heightMultiplier,),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.grey,
            indicatorWeight: 3.0,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text("Frutas", style: TextStyle(
                  fontSize: 2.5 * SizeConfig.textMultiplier,
                  fontFamily: 'OpenSans'
                ),),
              ),
              Tab(
                child: Text("Vegetais", style: TextStyle(
                    fontSize: 2.5 * SizeConfig.textMultiplier,
                    fontFamily: 'OpenSans'
                ),),
              ),
              Tab(
                child: Text("Nutrientes", style: TextStyle(
                    fontSize: 2.5 * SizeConfig.textMultiplier,
                    fontFamily: 'OpenSans'
                ),),
              ),
              Tab(
                child: Text("Dairy", style: TextStyle(
                    fontSize: 2.5 * SizeConfig.textMultiplier,
                    fontFamily: 'OpenSans'
                ),),
              ),
              ]),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  Frutas(),
                  Vegetal(),
                  Nutriente(),
                  Dairy(),
                ],
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

