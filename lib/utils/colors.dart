import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff810CA8);
  static const backgroundColor = Colors.white;
  static const primaryText = Colors.black;
  static const secondaryText = Color(0xff686771);
}

class AppText {
  static const appHeading = TextStyle(
    fontFamily: "Poppins",
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryText,
    height: 1.2,
  );
  static const appHeading2 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );
  static const appSubHeading = TextStyle(
    fontFamily: "Poppins",
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );

  static const appSubHeading2 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );
  static const appDescription = TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryText,
  );
  static var searchText = TextStyle(
    fontFamily: "Poppins",
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black.withOpacity(.2),
  );
  static const distance = TextStyle(
    fontFamily: "Poppins",
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static const location2 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 13.5,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static const title = TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static const hotels = TextStyle(
    fontFamily: "Poppins",
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );
  static const location = TextStyle(
    fontFamily: "Poppins",
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryText,
  );
  static const rating = TextStyle(
    fontFamily: "Poppins",
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryText,
  );
}
