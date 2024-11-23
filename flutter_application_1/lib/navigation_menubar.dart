import 'package:flutter/material.dart';
import 'Page/home_page.dart';
class PersistentBottomNavPage extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();
  final _tab4navigatorKey = GlobalKey<NavigatorState>();
  final _tab5navigatorKey = GlobalKey<NavigatorState>();

  PersistentBottomNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: const HomePage(),
          icon: Icons.home,
          navigatorkey: _tab1navigatorKey,
        ),
        PersistentTabItem(
          tab: const HomePage(),
          icon: Icons.search,
          navigatorkey: _tab2navigatorKey,
        ),
        PersistentTabItem(
          tab: const HomePage(),
          icon: Icons.party_mode_outlined,
          navigatorkey: _tab3navigatorKey,
        ),
        PersistentTabItem(
          tab: const HomePage(),
          icon: Icons.ondemand_video,
          navigatorkey: _tab4navigatorKey,
        ),
        PersistentTabItem(
          tab: const HomePage(),
          icon: Icons.person,
          navigatorkey: _tab5navigatorKey,
        ),
      ],
    );
  }
}


class PersistentBottomBarScaffold extends StatefulWidget {
  /// pass the required items for the tabs and BottomNavigationBar
  final List<PersistentTabItem> items;

  const PersistentBottomBarScaffold({Key? key, required this.items})
      : super(key: key);

  @override
  State<PersistentBottomBarScaffold> createState() =>
      _PersistentBottomBarScaffoldState();
}

class _PersistentBottomBarScaffoldState
    extends State<PersistentBottomBarScaffold> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /// Check if curent tab can be popped
        if (widget.items[_selectedTab].navigatorkey?.currentState?.canPop() ??
            false) {
          widget.items[_selectedTab].navigatorkey?.currentState?.pop();
          return false;
        } else {
          // if current tab can't be popped then use the root navigator
          return true;
        }
      },
      child: Scaffold(
        /// Using indexedStack to maintain the order of the tabs and the state of the
        /// previously opened tab
        body: IndexedStack(
          index: _selectedTab,
          children: widget.items
              .map((page) => Navigator(
                    /// Each tab is wrapped in a Navigator so that naigation in
                    /// one tab can be independent of the other tabs
                    key: page.navigatorkey,
                    onGenerateInitialRoutes: (navigator, initialRoute) {
                      return [
                        MaterialPageRoute(builder: (context) => page.tab)
                      ];
                    },
                  ))
              .toList(),
        ),

        /// Define the persistent bottom bar
                bottomNavigationBar: BottomAppBar(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              widget.items.length,
              (index) => IconButton(
                icon: Icon(
                  widget.items[index].icon,
                  size: 36,
                  color: _selectedTab == index 
                    ? const Color.fromARGB(255, 100, 100, 100)  // สีเมื่อเลือก
                    : const Color.fromARGB(255, 164, 163, 163), // สีเมื่อไม่ได้เลือก
                ),
                onPressed: () {
                  setState(() {
                    _selectedTab = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Model class that holds the tab info for the [PersistentBottomBarScaffold]
class PersistentTabItem {
  final Widget tab;
  final GlobalKey<NavigatorState>? navigatorkey;
  final IconData icon;

  PersistentTabItem(
      {required this.tab,
      this.navigatorkey,
      required this.icon});
}
