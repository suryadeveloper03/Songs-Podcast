import 'package:flutter/material.dart';
import 'package:pcast/variables/AppColors.dart';

class NewSongCard extends StatefulWidget {
  const NewSongCard({super.key});

  @override
  State<NewSongCard> createState() => _NewSongCardState();
}

class _NewSongCardState extends State<NewSongCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/BG.png"),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "About flow and our motivations",
                  style: TextStyle(
                    color: AppColors.whiteText,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  /* mainAxisAlignment: MainAxisAlignment.spaceBetween, */
                  children: [
                    Container(
                      width: 180,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    "23.05.2019",
                                    style: TextStyle(
                                      color: AppColors.greyText,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Icon(
                                    Icons.access_time,
                                    color: AppColors.greyText,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    "24:15:05",
                                    style: TextStyle(
                                      color: AppColors.greyText,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
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
                                  SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    "Harold Mccoy",
                                    style: TextStyle(
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
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0XFFFF334B).withAlpha(60),
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
        Positioned(
          top: -22,
          left: 50,
          child: Container(
            width: 70,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "New",
                  style: TextStyle(
                    color: AppColors.whiteText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
