import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            // Icon(Icons.menu, color: Colors.black,iconSize: 40,),
            //title: Text("Profile"),
            elevation: 0,
            backgroundColor: Colors.green[100],
            title: Column(
              children: [
                SizedBox(
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Krsik ',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'X Store',
                              style: TextStyle(
                                  color: Colors.lightGreen.shade400,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
        body: Container(
            color: Colors.green[100], child: Center(child: HomeSection())));
  }
}

class HomeSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeSectionWidget();
  }
}

class HomeSectionWidget extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        primary: Colors.green[100],
        shape: StadiumBorder(),
        padding: EdgeInsets.only(left: 25, right: 25));
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Column(
                children:[ 
                   Image(image: AssetImage('assets/image/home_pic2.png'),height: 180,width: 180,)
                   ]
              ),
              Column(children: [
                //const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Text(
                      'SELLER',
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                ),
              ]),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 30.0, right: 10.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 50,
                        thickness: 2,
                      )),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                      color: Colors.lightGreen.shade400,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 30.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2,
                        height: 50,
                      )),
                ),
              ]),
              Column(
                children:[ 
                   Image(image: AssetImage('assets/image/home_pic1.png'),height: 180,width: 180,)
                   ]
              ),
              Column(children: [
                //const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: Text(
                      'BUYER',
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}
