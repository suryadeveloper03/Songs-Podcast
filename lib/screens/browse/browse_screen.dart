import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcast/custom_appbar.dart';
import 'package:pcast/variables/AppColors.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              const Text(
                "Browse",
                style: TextStyle(
                  color: AppColors.whiteText,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoTextField(
                decoration: BoxDecoration(
                  color: AppColors.liteBackgroundColor,
                  // Use your own border styles
                  borderRadius: BorderRadius.circular(
                      15), // Adjust the border radius as needed
                ),
                style: TextStyle(color: Colors.white),
                padding: const EdgeInsets.all(15),
                placeholder: 'Search',
                placeholderStyle: const TextStyle(
                  color: AppColors.greyText,
                  fontFamily: "Roboto",
                ),
                suffix: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.search,
                    color: AppColors.greyText,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
