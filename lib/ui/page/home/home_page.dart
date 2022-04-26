import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_sample/ui/page/home/widget/bottom_navigation/home_bottom_navigation_bar.dart';
import 'package:flutter_bloc_sample/ui/page/tab_page_container/tab_page_container.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bloc SampleApp"),
        ),
        body: TabPageContainer(),
        bottomNavigationBar: const HomeBottomNavigationBar());
  }
}
