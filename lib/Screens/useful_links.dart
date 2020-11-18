import 'package:flutter/material.dart';

class UsefulLinks extends StatefulWidget {
  @override
  _UsefulLinksState createState() => _UsefulLinksState();
}

class _UsefulLinksState extends State<UsefulLinks> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 94, 20, 1),
        title: Text(
          "UsefulLinks",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(child: Image.asset("assets/Logo.png")),
              ),
              Center(
                child: Text("@tckzone",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("Let us bring coding to your school for free",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
                elevation: 1.0,
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Join our weekly coding class",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("YouTube Channel",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("Visit our website",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("See Pictures",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("Send us a Message",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("Become a Volunteer",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("Partner with us",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
