import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_icons/simple_icons.dart';


String full_name = "TGH TEC";
String logo_name = "TGH TEC";
List<String> nickname = [
  "Guarding Components",
  "Adjustable Work Tables",
  "T-Slotted Extrusions",
  "Web Bracket Assemblies",
  "T-bolts & Flange Nuts",
  "Fixed Feet",
];
String subTitle =
    "We work hard to create top-selling components that meet the needs of our customers - no matter what they might need!, After 30+ years in the industry, we've found that certain components consistently meet these criteria and consistently fly off the shelves.";

// String portfolio_repository = "https://drive.google.com/file/d/1eCrMAJLbuuqfeCj3za_bvtODb4XfikI9/view?usp=sharing";
String github_repository_link =
    "https://github.com/samir-benabadji?tab=repositories";

const socialMediaLinks = [
  {
    "name": "Github",
    "link": "https://github.com/samir-benabadji",
    "fontAwesomeIcon": FontAwesomeIcons
        .github, // Reference https://fontawesome.com/icons/github?style=brands
    "backgroundColor":
        Color(0xFF181717), // Reference https://simpleicons.org/?q=github
  },
  {
    "name": "Discord",
    "link": "https://discordapp.com/users/TGH-%3EA",
    "fontAwesomeIcon": FontAwesomeIcons
        .discord, // Reference https://fontawesome.com/icons/instagram?style=brands
    "backgroundColor": Color.fromARGB(
        255, 88, 2, 128), // Reference https://simpleicons.org/?q=instagram
  },
];

// https://simpleicons.org/
const skills = [
  {
    "title": "Full Stack Development",
    "fileName": "assets/images/fullstackdev.png",
    "skills": [
      "Building responsive website's front end using Flutter Web",
      "Developing mobile applications using Flutter,",
      "Creating application's backend in Node, Firebase & NestJS",
    ],
    "softwareSkills": [
      {
        "skillName": "Flutter",
        "fontAwesomeClassname": SimpleIcons.flutter,
        "style": {
          "backgroundColor": Color(0xFF02569B),
        },
      },
      {
        "skillName": "Firebase",
        "fontAwesomeClassname": SimpleIcons.firebase,
        "style": {
          "backgroundColor": Color(0xFFFFCA28),
        },
      },
      {
        "skillName": "NestJS",
        "fontAwesomeClassname": SimpleIcons.nestjs,
        "style": {
          "backgroundColor": Color(0xFFE0234E),
        },
      },
      {
        "skillName": "NodeJS",
        "fontAwesomeClassname": SimpleIcons.nodedotjs,
        "style": {
          "backgroundColor": Color(0xFF339933),
        },
      },
    ],
  },
];





const contactPageData = {
  "contactSection": {
    "title": "Custom solutions for your entire sales team",
    "profile_image_path": "assets/images/TGH K Logo.png",
    "description":
        "Let us show you how our accurate B2B company and contact data can help you reach the right decision makers and close more deals.",
  },
  "addressSection": {
    "title": "Address",
    "subtitle": "Algeria, Oran",
    "avatar_image_path": "assets/images/address_image.png",
    "location_map_link": "https://goo.gl/maps/L8LFwWQ4GkjQqj1V9",
  },
  "phoneSection": {
    "title": "Email",
    "subtitle": "benabadji.samir.2002@gmail.com",
  },
};
