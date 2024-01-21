import 'package:flutter/material.dart';
import 'package:splashscreen/pages/home/widgets/build_categories.dart';
import 'package:splashscreen/pages/home/widgets/build_column.dart';
import 'package:splashscreen/pages/home/widgets/build_container.dart';
import 'package:splashscreen/pages/home/widgets/build_row.dart';
import 'package:splashscreen/shared/color/color.dart';

import '../../auth/auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                logout();
              },
              icon: Icon(
                Icons.logout,
                color: ColorsManager.mainGreen,
              )),
          const SizedBox(
            width: 15,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "HomeScreen",
          style: TextStyle(color: ColorsManager.mainGreen),
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:  Column(
          children: [
            BuildContainer(),
            BuildRow(),
            BuildCatergoties(),
            BuildColumn(),
          ],
        ),
      ),
    );
  }
}
