import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Styles.primaryColor
      ),
      padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
      child: const Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            FluentSystemIcons.ic_fluent_search_regular,
            color: Color(0xffbfc205),
          ),
          Text('Search'),
          // TextField()
        ],
      ),
    );
  }
}

