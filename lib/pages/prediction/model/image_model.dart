import 'package:flutter/cupertino.dart';

class ImageModel {
  String image;
  String name;

  ImageModel({required this.image, required this.name});
}

class GoldAiName {
  String name;

  GoldAiName({required this.name});
}

List<ImageModel> predictionImage = [
  ImageModel(
      image: 'https://banklive.net/flags/1x1/us.svg', name: 'الدولار الأمريكي'),
  ImageModel(image: 'https://banklive.net/flags/1x1/eu.svg', name: 'اليورو'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/gb.svg',
      name: 'الجنيه الإسترليني'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/ca.svg', name: 'الدولار الكندي'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/dk.svg', name: 'الدنمارك كرونة'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/no.svg', name: 'النرويج كرونة'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/se.svg', name: 'الكرونة السويدية'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/ch.svg', name: 'الفرنك السويسري'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/sa.svg', name: 'الريال السعودي'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/kw.svg', name: 'الدينار الكويتي'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/ae.svg', name: 'الدرهم الاماراتي'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/au.svg',
      name: 'الدولار الاسترالي'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/bh.svg', name: 'الدينار البحريني'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/jp.svg', name: 'الين الياباني'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/om.svg', name: 'الريال العماني'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/qa.svg', name: 'الريال القطري'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/jo.svg', name: 'الدينار الاردني'),
  ImageModel(
      image: 'https://banklive.net/flags/1x1/cn.svg', name: ' اليوان الصيني')
];

List<GoldAiName> goldAiNameList = [
  GoldAiName(name: 'ذهب عيار 24'),
  GoldAiName(name: 'ذهب عيار 22'),
  GoldAiName(name: 'ذهب عيار 21'),
  GoldAiName(name: 'ذهب عيار 18'),
  GoldAiName(name: 'ذهب عيار 12'),
];
