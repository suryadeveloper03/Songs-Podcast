import 'package:flutter/material.dart';
import 'package:pcast/variables/AppValues.dart';
import 'package:pcast/widgets/search.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Image.asset(
            'assets/logo/${AppValues.logoName}',
            width: 100,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                showTopDialog(context);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        )
      ],
    );
  }
}
