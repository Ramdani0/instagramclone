import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple.shade900, Colors.red]),
            border: Border.all(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
            ),
          ),
        ),
        Spacer(),
        Text(
          'Ramdani',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
