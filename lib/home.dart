import 'package:flutter/material.dart';
import 'page/home1.dart';
import 'page/kategori.dart';
import 'page/profil.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Home1(),
    const Kategori(),
    const Profil()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Home1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: () {},
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[300],
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home1();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.white : Colors.green,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Kategori();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.folder,
                          color: currentTab == 0 ? Colors.white : Colors.green,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profil();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 0 ? Colors.white : Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
