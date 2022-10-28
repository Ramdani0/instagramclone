import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:instagram_uiclone/my_flutter_app_icons.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Real Madrid",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Madrid, Spanyol"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/id/8/8b/Real_Madrid_Club_de_F%C3%BAtbol.png'),
            ),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
          Image.network(
            'https://cdns.klimg.com/bola.net/library/upload/21/2022/10/645x430/benzema-3_2b591cf.jpg',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.favorite_outline,
                ),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.chat_bubble_outline_rounded),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.send_outlined),
                iconSize: 30,
              ),
              Spacer(),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.bookmark_outline),
                iconSize: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text(
                  '9M Likes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 11, top: 4),
            child: Row(
              children: [
                Text(
                  'Real Madrid',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 3)),
                Text('King Ucl')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 10),
            child: Row(
              children: [
                Text(
                  '80 MENIT YANG LALU',
                  style: TextStyle(fontSize: 8, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
