import 'package:flutter/material.dart';
import 'package:pcast/custom_appbar.dart';
import 'package:pcast/custom_drawer.dart';
import 'package:pcast/variables/AppColors.dart';
import 'package:pcast/variables/AppValues.dart';
import 'package:pcast/widgets/home_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Tab> myTabs; // Declare the list of Tab widgets

  @override
  void initState() {
    super.initState();
    // Initialize and generate the list of Tab widgets
    myTabs = AppValues.tabTitle.map((title) => Tab(text: title)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              child: Image.asset(
                'assets/homeBackground.png',
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    CustomAppBar(),
                    const SizedBox(
                      height: 20,
                    ),
                    const NewSongCard(),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Listen podcasts",
                          style: TextStyle(
                            color: AppColors.whiteText,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        DefaultTabController(
                          length: (AppValues.tabTitle).length,
                          child: SizedBox(
                            height: 350.0,
                            child: Column(
                              children: <Widget>[
                                TabBar(
                                  isScrollable: true,
                                  tabAlignment: TabAlignment.start,
                                  labelColor: AppColors.whiteText,
                                  dividerColor: Colors.transparent,
                                  tabs: myTabs,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: <Widget>[
                                      for (int i = 0; i < 4; i++)
                                        tabContentList(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Prodcast Author",
                          style: TextStyle(
                            color: AppColors.whiteText,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        DefaultTabController(
                          length: (AppValues.tabTitle).length,
                          child: SizedBox(
                            height: 250.0,
                            child: Column(
                              children: <Widget>[
                                TabBar(
                                  isScrollable: true,
                                  tabAlignment: TabAlignment.start,
                                  labelColor: AppColors.whiteText,
                                  dividerColor: Colors.transparent,
                                  tabs: myTabs,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: <Widget>[
                                      for (int k = 0; k < 4; k++)
                                        podcastAuthor(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: const CustomDrawer(),
    );
  }

  SingleChildScrollView podcastAuthor() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int j = 1; j <= 9; j++)
            InkWell(
              onTap: () {},
              child: Container(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRect(
                        child: Image.asset(
                          'assets/profile/04w.png',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Hip pop",
                        style:
                            TextStyle(color: AppColors.whiteText, fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Podcasts :72569",
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.greyText,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  SingleChildScrollView tabContentList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int j = 1; j <= 9; j++)
            InkWell(
              onTap: () {},
              child: Container(
                height: 270,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRect(
                        child: Image.asset(
                          'assets/images/image1.png',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Miam isn’t the best \n place to live",
                        style:
                            TextStyle(color: AppColors.whiteText, fontSize: 11),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: AppColors.greyText,
                                          size: 10,
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          "24:15:05",
                                          style: TextStyle(
                                            color: AppColors.greyText,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            'assets/profile/profile.png',
                                            height: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        const Text(
                                          "Harold Mccoy",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.whiteText,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {}, // Handle your callback
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Color(0XFF3369FF),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color(0XFF3369FF).withAlpha(60),
                                    blurRadius: 6.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(
                                      0.0,
                                      3.0,
                                    ),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.play_arrow_outlined,
                                size: 15,
                                color: AppColors.whiteText,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
