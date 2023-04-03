import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zet_gram/src/bloc/profile_block.dart';
import 'package:zet_gram/src/model/explore_model.dart';
import 'package:zet_gram/src/model/home/tape_model.dart';
import 'package:zet_gram/src/theme/app_theme.dart';
import 'package:zet_gram/src/ui/menu/chat/chat_item_screen.dart';
import 'package:zet_gram/src/utils/styles.dart';

class ProfileFriendScreen extends StatefulWidget {
  final TapeModel tapeModel;

  ProfileFriendScreen(this.tapeModel);

  @override
  _ProfileFriendScreenState createState() => _ProfileFriendScreenState();
}

class _ProfileFriendScreenState extends State<ProfileFriendScreen> {
  bool isFollow = false;

  @override
  void initState() {
    profileBlock.fetchAllProfileFriend();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.screen,
      body: Column(
        children: [
          Container(
            color: AppTheme.white,
            padding: EdgeInsets.only(left: 25, right: 25, bottom: 20),
            height: 96,
            child: Column(
              children: [
                Spacer(),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/icons/arrow_left.svg")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Profile",
                        style: Styles.boldH1(AppTheme.dark),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/more_vertical.svg",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Theme(
              data: ThemeData(
                accentColor: Color(0xFF327FEB),
                canvasColor: Colors.transparent,
                textTheme: AppTheme.textTheme,
                platform: TargetPlatform.iOS,
              ),
              child: StreamBuilder(
                stream: profileBlock.allProfileFriend,
                builder: (BuildContext context,
                    AsyncSnapshot<List<ExploreModel>> snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 35,
                          ),
                          height: 86,
                          child: Row(
                            children: [
                              Container(
                                width: 86,
                                height: 86,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(52),
                                  child: Image.asset(
                                    "assets/images/profile_friend.png",
                                    width: 86,
                                    height: 86,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${widget.tapeModel.userName}",
                                      style: Styles.boldH3(AppTheme.dark),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "@${widget.tapeModel.userName}"
                                          .replaceAll(" ", "")
                                          .toLowerCase(),
                                      style:
                                          Styles.semiBoldLabel(AppTheme.dark80),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Jakarta, Indonesia",
                                      style: Styles.regularContent(
                                          AppTheme.dark60),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 25,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ChatItemScreen(
                                        image: widget.tapeModel.image,
                                        name: widget.tapeModel.userName,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 92,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: AppTheme.screen,
                                    borderRadius: BorderRadius.circular(28),
                                    border: Border.all(
                                      color: AppTheme.primary,
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/message_circle.svg",
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                    right: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFollow = !isFollow;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(
                                      milliseconds: 300,
                                    ),
                                    height: 56,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28),
                                      color: isFollow
                                          ? AppTheme.white
                                          : AppTheme.primary,
                                      border: Border.all(
                                        color: AppTheme.primary,
                                        width: 2,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        isFollow ? "Following" : "Follow",
                                        style: Styles.boldButton(
                                          isFollow
                                              ? AppTheme.dark
                                              : AppTheme.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 25,
                          ),
                          height: 92,
                          padding:
                              EdgeInsets.symmetric(vertical: 17, horizontal: 0),
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "1230",
                                      style: Styles.boldH3(AppTheme.dark),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Likes",
                                      style: Styles.regularContent(
                                          AppTheme.dark80),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "21224",
                                      style: Styles.boldH3(AppTheme.dark),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Followers",
                                      style: Styles.regularContent(
                                          AppTheme.dark80),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "34290",
                                      style: Styles.boldH3(AppTheme.dark),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "Following",
                                      style: Styles.regularContent(
                                          AppTheme.dark80),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        StaggeredGridView.countBuilder(
                          itemCount: snapshot.data!.length,
                          crossAxisCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(
                              snapshot.data![index].image,
                              fit: BoxFit.cover,
                            );
                          },
                          staggeredTileBuilder: (int index) =>
                              new StaggeredTile.fit(2),
                          mainAxisSpacing: 25,
                          crossAxisSpacing: 25,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                        ),
                      ],
                    );
                  }

                  return Shimmer.fromColors(
                    baseColor: AppTheme.shimmerBase,
                    highlightColor: AppTheme.shimmerHighlight,
                    child: ListView(
                      padding: EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 35),
                          height: 86,
                          child: Row(
                            children: [
                              Container(
                                width: 86,
                                height: 86,
                                decoration: BoxDecoration(
                                    color: AppTheme.white,
                                    borderRadius: BorderRadius.circular(86)),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: AppTheme.white,
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 12,
                                        right: 75,
                                      ),
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: AppTheme.white,
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 25,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                height: 56,
                                width: 92,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: AppTheme.screen,
                                  border: Border.all(
                                    color: AppTheme.primary,
                                    width: 2,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                      color: isFollow
                                          ? AppTheme.white
                                          : AppTheme.primary,
                                      borderRadius: BorderRadius.circular(28),
                                      border: Border.all(
                                        color: AppTheme.primary,
                                        width: 2,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 92,
                          margin: EdgeInsets.only(
                            top: 25,
                          ),
                          padding: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        StaggeredGridView.countBuilder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.only(
                            top: 25,
                            bottom: 40,
                          ),
                          itemCount: 25,
                          crossAxisCount: 4,
                          itemBuilder: (context, index) {
                            Random random = new Random();
                            return Container(
                              height: (random.nextInt(70) + 150).toDouble(),
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.circular(10)),
                            );
                          },
                          staggeredTileBuilder: (int index) =>
                              StaggeredTile.fit(2),
                          mainAxisSpacing: 25,
                          crossAxisSpacing: 25,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
