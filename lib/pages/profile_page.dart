import 'package:flutter/material.dart';
import 'package:instagram_uiclone/widgets/customprofile_appbar.dart';
import 'package:instagram_uiclone/widgets/persistent_header.dart';
import 'package:instagram_uiclone/widgets/profileheader.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (context, index) {
              return [
                CustomProfileAppBar(),
                SliverToBoxAdapter(
                  child: Container(color: Colors.white, child: ProfileHeader()),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: PersistentHeader(
                      child: TabBar(
                          indicatorWeight: 1,
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              icon: Icon(Icons.grid_on),
                            ),
                            Tab(
                              icon: Icon(Icons.assignment_ind_outlined),
                            )
                          ]),
                      mXExtent: 50,
                      mnExtent: 50),
                )
              ];
            },
            body: TabBarView(
              children: [
                CustomScrollView(
                  physics: ClampingScrollPhysics(),
                  slivers: [
                    SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://media.istockphoto.com/photos/madrid-spain-on-gran-via-picture-id1297090032?k=20&m=1297090032&s=170667a&w=0&h=Qa_DyLiwIcrWwiV_jQp9pLM2yCDuymqwveCbLOsdWjY='))),
                          );
                        }),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                        ))
                  ],
                )
              ],
            )));
  }
}
