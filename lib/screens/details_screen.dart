import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/data/hotels_data/hotels_data.dart';
import 'package:travel_app/utils/colors.dart';

class DescriptionScreen extends StatefulWidget {
  final int id;
  const DescriptionScreen({super.key, required this.id});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    hotels[widget.id].image,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black87.withOpacity(.3),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 20,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black87.withOpacity(.3),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            FadeInLeft(
              delay: Duration(milliseconds: 3000),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hotels[widget.id].name,
                          style: AppText.appSubHeading,
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.secondaryText,
                            ),
                            Text(
                              hotels[widget.id].location,
                              style: AppText.location,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            FadeInLeft(
              delay: Duration(milliseconds: 3000),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Descriptions",
                          style: AppText.hotels,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_rounded,
                              size: 30,
                              color: Colors.amber,
                            ),
                            Text(
                              hotels[widget.id].rating.toString(),
                              style: AppText.rating,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      hotels[widget.id].description,
                      style: AppText.appDescription,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            FadeInLeft(
              delay: Duration(milliseconds: 3500),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.payments,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Proceed to Pay",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Text(
                    hotels[widget.id].cost.toString() + "\$",
                    style: AppText.hotels,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
