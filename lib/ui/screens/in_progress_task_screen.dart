import 'package:flutter/material.dart';

import '../widgets/summary_card.dart';
import '../widgets/task_list_tile.dart';
import '../widgets/user_profile_banner.dart';

class InProgressTaskScreen extends StatelessWidget {
  const InProgressTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index){
                  return TaskListTile();
                }, separatorBuilder: (BuildContext context, int index) {
                return Divider(height: 4,);
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
