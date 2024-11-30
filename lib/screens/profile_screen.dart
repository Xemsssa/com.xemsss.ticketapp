import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:test_app/utils/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/ticket-booking.png',
                    height: 40,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Book Tickets', style: Styles.headlineStyle,),
                      Text('New-York', style: Styles.headlineStyle4,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                        decoration: BoxDecoration(
                          color: Styles.lightGray,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          children: [
                            Container(padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Styles.primaryColor,
                              ),
                              child: Icon(
                                Icons.shield,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text('Premium status'))
                          ],
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('Edit'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Styles.primaryColor
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Styles.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.lightbulb,color: Styles.textColor,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You've got a new award", style: Styles.headlineStyle.copyWith(color: Styles.white)),
                      Text('You have 150 flight in a year', style: Styles.headlineStyle3.copyWith(color: Styles.white))
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
