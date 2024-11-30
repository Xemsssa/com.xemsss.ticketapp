import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:test_app/utils/styles.dart';
import 'package:test_app/widgets/ColumnWidget.dart';

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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Accumulated miled', style: Styles.headlineStyle,),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Center(child: Text('192802',style: Styles.headlineStyle.copyWith(fontSize: 48)))
            ),

           Padding(
             padding: const EdgeInsets.all(20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('MIles accured', style: Styles.headlineStyle3,),
                 Text('23 may 2021', style: Styles.headlineStyle3,)
               ],
             ),
           ),
            RowWidget(text1: '23 042', text2: 'Airline CO', pos: CrossAxisAlignment.start,),
            RowWidget(text1: '24', text2: 'Miles', pos: CrossAxisAlignment.start,),
            RowWidget(text1: '54 340', text2: 'Exuma', pos: CrossAxisAlignment.start,),

            Center(
              child: InkWell(child: Text("How to get more miles")),
            )
          ],
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  final CrossAxisAlignment pos;
  final String text1, text2;
  const RowWidget({
    super.key, required this.text1, required this.text2, required this.pos
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20, bottom: 20 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColumnWidget(text1: text1, text2: "Miles",pos: pos,),
          ColumnWidget(text1: text2, text2: "Received From", pos: CrossAxisAlignment.end,),
        ],
      ),
    );
  }
}
