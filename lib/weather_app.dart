import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherapp/models/weather_locations.dart';
import 'package:weatherapp/widgets/buildin_transform.dart';
import 'package:weatherapp/widgets/single_weather.dart';
import 'package:weatherapp/widgets/slider_dot.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int currentPage = 0;
  String bgImg;

  _onPageChanged(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (locationList[currentPage].weatherType == 'Night') {
      bgImg = 'assets/night.jpg';
    } else if (locationList[currentPage].weatherType == 'Cloudy') {
      bgImg = "assets/cloudy.jpeg";
    } else if (locationList[currentPage].weatherType == "Sunny") {
      bgImg = 'assets/sunny.jpg';
    } else if (locationList[currentPage].weatherType == 'Rainy') {
      bgImg = "assets/rainy.jpg";
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/menu.svg",
                color: Colors.white,
                width: 40,
              ),
            ),
            margin: EdgeInsets.only(right: 20),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              bgImg,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black38,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 140,
                left: 30,
              ),
              child: Row(
                children: [
                  for (int i = 0; i < locationList.length; i++)
                    i == currentPage
                        ? SliderDot(isActive: true)
                        : SliderDot(isActive: false)
                ],
              ),
            ),
            TransformerPageView(
              transformer: ScaleAndFadeTransformer(),
              viewportFraction: 0.8,
              onPageChanged: _onPageChanged,
              scrollDirection: Axis.horizontal,
              itemCount: locationList.length,
              itemBuilder: (context, index) {
                return SingleWeather(
                  city: locationList[index].city,
                  dateTime: locationList[index].dateTime,
                  humidity: locationList[index].humidity,
                  iconUrl: locationList[index].iconUrl,
                  rain: locationList[index].rain,
                  temparature: locationList[index].temparature,
                  weatherType: locationList[index].weatherType,
                  wind: locationList[index].wind,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
