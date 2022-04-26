import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeBottomNavigationBar extends HookWidget {
  const HomeBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationIndex = useState(0);
    return BottomNavigationBar(
      selectedItemColor: Colors.blueAccent,
      currentIndex: navigationIndex.value,
      onTap: (int index) => navigationIndex.value = index,
      items: const [
        BottomNavigationBarItem(
          label: "alarms",
          icon: Icon(Icons.access_alarms),
        ),
        BottomNavigationBarItem(
          label: "sixty_fps",
          icon: Icon(Icons.sixty_fps_select),
        ),
        BottomNavigationBarItem(
          label: "thirty_fps",
          icon: Icon(Icons.thirty_fps_select),
        ),
      ],
    );
  }
}
