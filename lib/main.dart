import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = "Attandance App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(Icons.email)),
            Tab(icon: Icon(Icons.grade)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.download)),
          ]),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
              tooltip: "Comment Icon",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              tooltip: "Settings Icon",
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.person),
            Icon(Icons.email),
            Icon(Icons.grade),
            Icon(Icons.search),
            Icon(Icons.download),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text(
                    "Md.Abu Sufyan",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("abusufyan421@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 8, 8, 8),
                    child: Text(
                      "MAS",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text("My Profile"),
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("My Course"),
                leading: const Icon(Icons.book),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Registration"),
                leading: const Icon(Icons.app_registration),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Attandance"),
                leading: const Icon(Icons.percent),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Edit Profile"),
                leading: const Icon(Icons.edit),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("LogOut"),
                leading: const Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.greenAccent,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {},
        ),
      ),
    );
  }
}
