import 'package:edutainment_admin/screens/add_story_screen.dart';
import 'package:edutainment_admin/screens/analytics_screen.dart';
import 'package:edutainment_admin/theme/app_colors.dart';
import 'package:edutainment_admin/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<Widget> screenList = [
  AddStoryScreen(),
  AnalyticsScreen()
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
          screenList[0]
        ],
      ),
    );
  }
}
