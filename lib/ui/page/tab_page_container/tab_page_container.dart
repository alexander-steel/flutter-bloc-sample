import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TabPageContainer extends HookWidget {
  final List<Widget> tab = [
    const Tab(child: Text('Tab 1')),
    const Tab(child: Text('Tab 2')),
    const Tab(child: Text('Tab 3')),
  ];

  @override
  Widget build(BuildContext context) {
    final _controller = useTabController(initialLength: tab.length);
    return Column(
      children: [
        TabBar(
          tabs: tab,
          controller: _controller,
          labelColor: Theme.of(context).primaryColor,
        ),
        Expanded(
          /// タブの中身を表示するWidget
          child: TabBarView(
            controller: _controller,

            /// タブに表示したいWidgetをchildrenに記載する
            children: const [
              Center(child: Text('Tab 1 View')),
              Center(child: Text('Tab 2 View')),
              Center(child: Text('Tab 3 View')),
            ],
          ),
        )
      ],
    );
  }
}
