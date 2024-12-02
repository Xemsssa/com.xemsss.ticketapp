import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child:
        ListView(
            children: [
              Text('EditProfileScreen')
            ],
          ),
        ),
      appBar: AppBar(),
    );
  }
}
