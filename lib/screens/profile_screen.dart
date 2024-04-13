import 'package:flutter/material.dart';
import 'package:my_app/screens/setting_screen.dart';

import 'routes/SecondScreen/custom_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void goToAnotherRoute(context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
    // Navigator.pushNamed(context, '/second-screen');
  }

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text('Navigate to Screen Profile'),
    // );
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.favorite)),
                Tab(icon: Icon(Icons.notifications)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const CustomScreen(),
              const SettingScreen(),
              Center(
                child: TextButton(
                  onPressed: () =>
                     Navigator. pushReplacementNamed(context, '/news-screen'),
                  child: const Text('get data news'),
                ),
              ),
            ],
          ),
        ));
  }
}
