import 'package:flutter/material.dart';

import '../widgets/user_profile_banner.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserProfileBanner(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16,),
                    Text(
                      'Add New Task',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 16,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Title'
                      ),
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          hintText: 'Description'
                      ),
                    ),
                    SizedBox(height: 16,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {

                          }, child: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
