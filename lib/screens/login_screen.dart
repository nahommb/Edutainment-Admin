import 'package:edutainment_admin/screens/home_screen.dart';
import 'package:edutainment_admin/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Make full width
        height: double.infinity, // Make full height
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login_texture.png'), // your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Admin Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primary),),
              SizedBox(height: 10,),
              SizedBox(
                width: 400,
                child: TextFormField(
                  style: TextStyle(

                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                      hintStyle: TextStyle(color: AppColors.primary),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2.0,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                        )
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: AppColors.primary),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: AppColors.primary,
                            width: 1
                          )
                      ),

                  ),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 350,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }, child: Text('Login',style: TextStyle(color: AppColors.lightBackground),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(10)),

                    )
                  ),
                  )

              )
            ],
          ),
        ),
      ),
    );
  }
}
