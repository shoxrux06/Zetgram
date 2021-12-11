import 'package:flutter/material.dart';
import 'package:zet_gram/src/model/home/tape_model.dart';
import 'package:zet_gram/src/ui/menu/main_screen.dart';
import 'package:zet_gram/src/ui/profile/profile_friend_screen.dart';

// String token = "";

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // if(prefs.getString("token") != ""){
  //   token = prefs.getString("token")!;
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,
      ),
      home: ProfileFriendScreen(
        TapeModel(
          id: 1,
          userImage: "userImage",
          userName: "userName",
          message: "message",
          image: "image",
          count: 12,
          isFavorite: false,
          comments: [],
          time: "time",
        ),
      ),
    );
  }
}
