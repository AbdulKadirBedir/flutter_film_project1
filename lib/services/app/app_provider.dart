
import 'package:flutter_film_project1/services/notifier/authentication_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders{
 static List<SingleChildWidget> providers = [
   ChangeNotifierProvider(create: (_)=> AuthenticationNotifier())
 ];
}