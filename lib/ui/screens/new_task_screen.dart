import 'package:flutter/material.dart';

import '../widgets/summary_card.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
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
            Expanded(
                child: ListView.separated(
                  itemCount: 20,
                    itemBuilder: (context, index){
                       return ListTile(
                         title: Text('Title Will be Here'),
                         subtitle: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('subtitle will be hare'),
                             Text('Date'),
                             Row(
                               children: [
                                 Chip(
                                  label: Text(
                                    'New',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                                 Spacer(),
                                 IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.red.shade300,)),
                                 IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.green,)),
                              ],
                             )
                           ],
                         )
                       );
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


