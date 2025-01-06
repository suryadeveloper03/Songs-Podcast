import 'package:flutter/material.dart';
import 'package:pcast/screens/browse/browse_screen.dart';
import 'package:pcast/screens/home_page.dart';
import 'package:pcast/variables/AppColors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Hello,\n samantha!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            const Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                              size: 25,
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 25,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.grey),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                'assets/profile/profile.png',
                              ),
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Listened time:",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                Text(
                                  "24:15:05",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Playlists:",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                Text(
                                  "24",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            ),
                            const Column(
                              children: [
                                Text(
                                  "Following:",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                Text(
                                  "179",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Column(
                              children: [
                                ListTile(
                                  leading:
                                      Image.asset('assets/icons/world.png'),
                                  title: const Text(
                                    'Browse',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    /* Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BrowseScreen(),
                                      ),
                                    ); */
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const BrowseScreen()),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.remove_red_eye,
                                    color: Color(0XFF898F97),
                                  ),
                                  title: const Text(
                                    'Subscribe',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.favorite_border_outlined,
                                    color: Color(0XFF898F97),
                                  ),
                                  title: const Text(
                                    'Favorite',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.history,
                                    color: Color(0XFF898F97),
                                  ),
                                  title: const Text(
                                    'History',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.payment,
                                    color: Color(0XFF898F97),
                                  ),
                                  title: const Text(
                                    'Payment',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: Image.asset(
                                    'assets/icons/adjustment.png',
                                  ),
                                  title: const Text(
                                    'Account Settings',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(15.0),
                                      backgroundColor: Color(0XFF19232F),
                                    ),

                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.logout,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      "Logout",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    //.........
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            /*ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const UserAccountsDrawerHeader(
                  // <-- SEE HERE
                  decoration: BoxDecoration(color: AppColors.darkBGColor),
                  accountName: Text(
                    "Pinkesh Darji",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text(
                    "pinkesh.earth@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  currentAccountPicture: FlutterLogo(),
                ),
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: const Text('Page 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.train,
                  ),
                  title: const Text('Page 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
