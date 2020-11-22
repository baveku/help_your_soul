import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_your_soul/screens/chat/chatting.dart';
import 'package:help_your_soul/screens/event/event.dart';
import 'package:help_your_soul/screens/news/news.dart';
import 'package:help_your_soul/screens/profile/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(tabBar: HomeConfigure.tabbar(context), tabBuilder: HomeConfigure.buildTabbar);
  }
}

class HomeConfigure {
  static CupertinoTabBar tabbar(BuildContext context) {
    final theme = Theme.of(context);
    return CupertinoTabBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_active)),
        BottomNavigationBarItem(icon: Icon(Icons.map)),
        BottomNavigationBarItem(icon: Icon(Icons.person)),
      ],
      activeColor: theme.primaryColor,
      inactiveColor: theme.disabledColor,
      iconSize: 24,
    );
  }

  static Widget buildTabbar(BuildContext context, int index) {
    switch (index) {
      case 0:
        return NewsPage();
      case 1:
        return ChatPage();
      case 2:
        return EventPage();
      case 3:
        return ProfilePage();
    }
  }
}
