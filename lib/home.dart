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
        color: const Color(0xff007251),
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Home1();
                      currentTab = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    size: 40,
                    color: currentTab == 0 ? Colors.blue : Colors.white,
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Kategori();
                      currentTab = 1;
                    });
                  },
                  child: Icon(
                    Icons.folder,
                    size: 40,
                    color: currentTab == 1 ? Colors.blue : Colors.white,
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const Profil();
                      currentTab = 2;
                    });
                  },
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: currentTab == 2 ? Colors.blue : Colors.white,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
