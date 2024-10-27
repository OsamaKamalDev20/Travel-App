import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/data/destinations_data/destinations_data.dart';
import 'package:travel_app/data/hotels_data/hotels_data.dart';
import 'package:travel_app/screens/details_screen.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.menu,
              size: 30,
              color: AppColors.primaryColor,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 30,
                  color: AppColors.primaryColor,
                ),
                SizedBox(width: 2),
                Text("Karachi", style: AppText.appSubHeading2),
                Icon(Icons.keyboard_arrow_down, color: AppColors.primaryColor),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/profile.jpeg",
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInUp(
                delay: Duration(milliseconds: 3000),
                child: RichText(
                  text: TextSpan(
                    text: "Journey to Amazing Destinations: ",
                    style: AppText.appHeading2,
                    children: <TextSpan>[
                      TextSpan(
                        text: "ExploreX",
                        style: AppText.appHeading,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              FadeInLeft(
                delay: Duration(milliseconds: 3500),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          CupertinoIcons.sort_up_circle_fill,
                          color: Colors.black.withOpacity(.2),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black.withOpacity(.2),
                        ),
                        border: InputBorder.none,
                        hintText: "Search best Places....",
                        hintStyle: AppText.searchText,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 3000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Destinations", style: AppText.appSubHeading),
                    Text("See All", style: AppText.appSubHeading2),
                  ],
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 3500),
                child: Container(
                  margin: EdgeInsets.only(top: 14),
                  height: size.height * .4,
                  child: ListView.builder(
                    itemCount: destinations.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    DescriptionScreen(id: index),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  destinations[index].image,
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    destinations[index].distance.toString() +
                                        " km",
                                    style: AppText.distance,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, .5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    destinations[index].location,
                                    style: AppText.title,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                left: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    destinations[index].name,
                                    style: AppText.location2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 24),
              FadeInLeft(
                delay: Duration(milliseconds: 3000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Hotels", style: AppText.appSubHeading),
                    Text("View All", style: AppText.appSubHeading2),
                  ],
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 3500),
                child: Container(
                  margin: EdgeInsets.only(top: 14),
                  height: size.height * .4,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: hotels.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    DescriptionScreen(id: index),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  hotels[index].image,
                                  fit: BoxFit.fill,
                                  height: 120,
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotels[index].name,
                                      style: AppText.hotels,
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          hotels[index].location,
                                          style: AppText.location,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star_rate_rounded,
                                              size: 30,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              hotels[index].rating.toString(),
                                              style: AppText.rating,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
