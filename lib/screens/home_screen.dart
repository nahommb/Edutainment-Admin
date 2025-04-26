import 'package:edutainment_admin/screens/add_game_screen.dart';
import 'package:edutainment_admin/screens/add_story_screen.dart';
import 'package:edutainment_admin/screens/analytics_screen.dart';
import 'package:edutainment_admin/screens/control_screen.dart';
import 'package:edutainment_admin/theme/app_colors.dart';
import 'package:edutainment_admin/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static final routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<Widget> screenList = [
  AnalyticsScreen(),
  AddStoryScreen(),
  AddGameScreen(),
  ControlScreen()
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title:SizedBox(width:500,child: Text('Dashboard',style: TextStyle(color: AppColors.primary),)),
        actions: [
          Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              SizedBox(width: 10,),
              Text('Nahom',style: TextStyle(color: AppColors.primary),),
              SizedBox(width: 10,),
            ],
          )
        ],
      ),
      body: Row(
        children: [
          SideBar(),
          Expanded(child: screenList[dataProvider.pageIndex])
        ],
      ),
    );
  }
}
