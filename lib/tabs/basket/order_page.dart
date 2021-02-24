import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/bottom_pages/widget/drop.dart';

import 'tab_bar/all_time.dart';
import 'tab_bar/last_month.dart';
import 'tab_bar/popup_menu_button.dart';
import 'tab_bar/this_month.dart';
import 'tab_bar/this_week.dart';
import 'tab_bar/today.dart';
import 'tab_bar/yesterday.dart';

class BottomOrderPage extends StatefulWidget {
  @override
  _BottomOrderPageState createState() => _BottomOrderPageState();
}

class _BottomOrderPageState extends State<BottomOrderPage>
    with TickerProviderStateMixin {
  int _hasBeenPressed1 = 0;
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          PoUpUpMenuButton(),
        ],
        title: Text('All Orders'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: TabBar(
              controller: tabController,
              indicatorWeight: 0,
              indicator: new BubbleTabIndicator(
                indicatorHeight: 25.0,
                indicatorColor: Colors.blueAccent,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              isScrollable: true,
              unselectedLabelColor: Colors.indigo,
              tabs: [
                Tab(
                  child: Text(
                    'All time',
                  ),
                ),
                Tab(
                  child: Text(
                    'Today',
                  ),
                ),
                Tab(
                  child: Text(
                    'Yesterday',
                  ),
                ),
                Tab(
                  child: Text(
                    'This Week',
                  ),
                ),
                Tab(
                  child: Text(
                    'This Month',
                  ),
                ),
                Tab(
                  child: Text(
                    'Last Month',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                AllTime(),
                Today(),
                YesterDay(),
                ThisWeek(),
                ThisMonth(),
                LastMonth(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
