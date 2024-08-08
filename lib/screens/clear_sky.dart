import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2_0/providers/weather_provider.dart';

class ClearSky extends StatelessWidget {
  const ClearSky({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WeatherProvider>(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/clear_sky.jpg'), fit: BoxFit.cover)),
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        provider.getAPi();
                      },
                      child: const Center(
                        child: Icon(Icons.location_on, color: Colors.white),
                      )),
                  const Text(
                    'Rajkot',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              const Text(
                '24°C',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Clear Sky',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [Container()],
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.50),
                      borderRadius: BorderRadius.circular(15)),
                  height: 175,
                  width: 175,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Temperature',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          provider.weatherModel == null
                              ? ""
                              : provider.weatherModel!.main.temp.toString(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Feels free',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        const Text(
                          '34°',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.40),
                      borderRadius: BorderRadius.circular(15)),
                  height: 175,
                  width: 175,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'On the day',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.arrow_upward),
                          Text(
                            'Max',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            '37°',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.arrow_downward),
                          Text(
                            'Min',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            '37°',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(15)),
                height: 200,
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Humidity',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '11%',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pressure',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '1006 mBar ',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Visibility',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            '6 km',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'WindSpeed',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          '16.67 km/h',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: double.infinity,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Sunrise: 6.32am',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    Icon(Icons.sunny),
                    Text(
                      'Sunset: 7.04pm',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
