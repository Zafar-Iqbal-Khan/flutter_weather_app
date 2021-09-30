import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleWeather extends StatelessWidget {
  final String city;

  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  SingleWeather({
    this.city,
    this.dateTime,
    this.humidity,
    this.iconUrl,
    this.rain,
    this.temparature,
    this.weatherType,
    this.wind,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    Text(
                      city,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      dateTime,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      temparature,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          iconUrl,
                          color: Colors.white,
                          width: 40,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          weatherType,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 16),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Wind',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          wind.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'km/h',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              height: 3,
                              width: 50,
                              color: Colors.grey,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              height: 3,
                              width: 20,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Rain',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          rain.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              height: 3,
                              width: 50,
                              color: Colors.grey,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              height: 3,
                              width: 10,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Humidity',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          humidity.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              height: 3,
                              width: 50,
                              color: Colors.grey,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              height: 3,
                              width: 5,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
