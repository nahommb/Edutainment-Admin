import 'package:edutainment_admin/data/provider.dart';
import 'package:edutainment_admin/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  Future popUp (context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Log out'),
        content: Text('Are you Sure Wnat Log out'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Yes')),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('No'))
        ],
      );
    });
  }


  @override
  Widget build(BuildContext context) {

    final dataProvider = Provider.of<DataProvider>(context);

    return Container(
      height: double.infinity,
      width: 200,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20))
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
         sideBarButtons(text: 'Analytics',onTap: (){
           print('clicked');

           dataProvider.changePage(0);
         },icon: Icons.analytics_outlined),
          sideBarButtons(text: 'Add Story',onTap: (){
            print('clicked');
            dataProvider.changePage(1);
          },icon: Icons.bookmark_added_outlined),
          sideBarButtons(text: 'Add Games',onTap: (){
            print('clicked');
            dataProvider.changePage(2);
          },icon: Icons.games_outlined),
          sideBarButtons(text: 'Control',onTap: (){
            print('clicked');
            dataProvider.changePage(3);
          },icon: Icons.settings_suggest_outlined),
          sideBarButtons(text: 'Log Out',onTap: (){
            print('clicked');
             popUp(context);
            // dataProvider.changePage(4);
          },icon: Icons.logout_outlined),
        ],
      ),
    );
  }
}

Widget sideBarButtons({text,onTap,icon}){
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: ListTile(
      leading: Icon(icon,color: AppColors.lightBackground,),
      title: Text(text,style: TextStyle(fontSize: 20,color: AppColors.lightBackground),),
      onTap: onTap,
    ),
  );
}