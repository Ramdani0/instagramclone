import 'package:flutter/material.dart';

class AddStoryCardProfile extends StatelessWidget {
  const AddStoryCardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 32,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Real_Madrid_CF.svg/1200px-Real_Madrid_CF.svg.png'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
