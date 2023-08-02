import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new_task_screen.dart';

import '../utils/assets_utils.dart';
import '../widgets/summary_card.dart';
import '../widgets/task_list_tile.dart';
import '../widgets/user_profile_banner.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
               const UserProfileBanner(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SummaryCard(
                        title: 'New',
                        number: 123,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Progress',
                      number: 123,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Cencelled',
                      number: 123,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Completed',
                      number: 123,
                    ),
                  ),
                ],
              ),
            ),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewTaskScreen()));
        }
      ),
    );
  }
}






