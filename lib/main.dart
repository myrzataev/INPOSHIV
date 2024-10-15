import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inposhiv/internal/my_app.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:uni_links/uni_links.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await setupServiceLocator();
    await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  // Uri? initialLink;
  // try {
  //   initialLink = await getInitialUri();
  //   print('Initial deep link: $initialLink');
  // } catch (e) {
  //   print('Error occurred while retrieving initial link: $e');
  // }
  runApp(MyApp(
    // initialLink: initialLink,
  ));
}
