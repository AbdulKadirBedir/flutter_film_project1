

import 'package:flutter_film_project1/screen/login_screen.dart';
import 'package:flutter_film_project1/signup/signup_screen.dart';

class AppRoutes{
    static const String LoginRoute = "/login";
    static const String SingupRoute = "/Singup";

    static final routes = {
     LoginRoute : (context)=> LoginScreen(),
     SingupRoute : (context)=> SignupScreen()
    };

    
}
