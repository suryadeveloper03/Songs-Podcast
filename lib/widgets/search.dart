import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcast/variables/AppColors.dart';

void showTopDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black.withOpacity(0.8),
    transitionDuration: Duration(milliseconds: 400),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0.0, -1.0), end: Offset(0.0, 0.0))
            .animate(animation),
        child: child,
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 12, right: 12),
          decoration: BoxDecoration(
            color: AppColors.liteBackgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CupertinoTextField(
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        // Use your own border styles
                        borderRadius: BorderRadius.circular(
                            15), // Adjust the border radius as needed
                      ),
                      style: TextStyle(color: Colors.white),
                      padding: const EdgeInsets.all(15),
                      placeholder: 'Search',
                      placeholderStyle: const TextStyle(
                        color: AppColors.whiteText,
                      ),
                      suffix: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.search,
                          color: AppColors.whiteText,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: AppColors.imageBorder,
                              child: Image.asset(
                                'assets/images/image1.png',
                                height: 70,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Night streets in Hog Kong",
                                  style: TextStyle(
                                    color: AppColors.whiteText,
                                    fontSize: 11,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: AppColors.greyText,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "24:15:05",
                                      style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Janush Kowalski",
                                  style: TextStyle(
                                    color: AppColors.whiteText,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: AppColors.imageBorder,
                              child: Image.asset(
                                'assets/images/image2.png',
                                height: 70,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Miami isn’t the best plae...",
                                  style: TextStyle(
                                    color: AppColors.whiteText,
                                    fontSize: 11,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: AppColors.greyText,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "24:15:05",
                                      style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "John Smith & Katy Doe",
                                  style: TextStyle(
                                    color: AppColors.whiteText,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: AppColors.imageBorder,
                              child: Image.asset(
                                'assets/images/image3.png',
                                height: 70,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "On her way she met a co...",
                                  style: TextStyle(
                                    color: AppColors.whiteText,
                                    fontSize: 11,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: AppColors.greyText,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "24:15:05",
                                      style: TextStyle(
                                        color: AppColors.greyText,
                                        fontSize: 12,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                    color: AppColors.whiteText,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
