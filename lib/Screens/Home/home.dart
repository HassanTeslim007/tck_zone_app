import 'package:flutter/material.dart';
import 'package:tck_zone_app/Screens/useful_links.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Column(
        children: [
          homeHeader(size),
          Container(
            width: double.infinity,
            height: size.height * 0.07,
            color: Color.fromRGBO(244, 244, 244, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "Useful Link",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap:(){},
                      child: homeBodyContainer(
                          size, "Donate Items", "assets/img3.png",
                          Color.fromRGBO(164, 189, 255, 1)),
                    ),
                    SizedBox(width: 30,),
                    InkWell(
                      onTap: (){},
                      child: homeBodyContainer(size, "Request Items", "assets/img2.png",
                          Color.fromRGBO(255, 252, 171, 1)),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.04),
                Row(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: homeBodyContainer(size, "Visit Store", "assets/img3.png",
                          Color.fromRGBO(254, 172, 219, 1)),
                    ),
                    SizedBox(width: 30,),
                    InkWell(
                      onTap: (){},
                      child: homeBodyContainer(size, "Donate Items", "assets/img1.png",
                          Color.fromRGBO(250, 162, 121, 1)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 40, color: Colors.red,),),
          title: Text("")
        ),
        BottomNavigationBarItem(
          icon: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UsefulLinks()));
          }, icon: Icon(Icons.link, size: 40,),),
            title: Text("")
        )
      ]),
    );
  }

  Padding homeHeader(Size size) {
    return Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
            height: size.height / 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage("assets/Avatar3.png"),
                  ),
                  Text(
                    "Hello dear, welcome",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "This project is a way of helping kids and raising funds for our free technology training for kids",
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: size.height * 0.02),
                ],
              ),
            ),
          ),
        );
  }

  Widget homeBodyContainer(Size size, String title, String image, Color color) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[600],
              blurRadius: 2.0, // soften the shadow
              spreadRadius: 0.1, //extend the shadow
            )
          ]),
      width: size.height * 0.18,
      height: size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(image),
              width: 40,
              height: 40,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
