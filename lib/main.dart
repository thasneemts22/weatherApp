import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2_0/providers/dummy_provider.dart';
import 'package:weather_app_2_0/providers/weather_provider.dart';
import 'package:weather_app_2_0/screens/clear_sky.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WeatherProvider()),
        ChangeNotifierProvider(create: (_) => DummyProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const ClearSky()),
    );
  }
}

class WEATHERAPP extends StatelessWidget {
  const WEATHERAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/rainy_day.jpg',
                ),
                fit: BoxFit.cover),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Rajkot',
                    style: TextStyle(color: Colors.black, fontSize: 20),
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
                'Shower Rain',
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Temperature',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '37°',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Feels free',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
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
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '16.67 km/h',
                          style: TextStyle(color: Colors.black, fontSize: 15),
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
