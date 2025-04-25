import 'package:edutainment_admin/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});


  @override
  Widget build(BuildContext context) {
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
         },icon: Icons.analytics_outlined),
          sideBarButtons(text: 'Add Story',onTap: (){
            print('clicked');
          },icon: Icons.bookmark_added_outlined),
          sideBarButtons(text: 'Add Games',onTap: (){
            print('clicked');
          },icon: Icons.add),
          sideBarButtons(text: 'Add Story',onTap: (){
            print('clicked');
          },icon: Icons.add),
          sideBarButtons(text: 'Add Story',onTap: (){
            print('clicked');
          },icon: Icons.add),
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