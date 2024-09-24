/*import 'package:flutter/material.dart';
import 'package:flutter_application_47weather/assets/classapi.dart';
import 'package:flutter_application_47weather/assets/model.dart';

class containerwidged extends StatelessWidget {
  final String cityname;

  containerwidged.containrtwidged({required this.cityname});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<weatherapp>(
      future: Apimanager.getsource(cityname),
      builder: (context, snapshot) {
        List<String> stringlist = [
          "sun rise",
          "sun set",
          "moon rise",
          "moon set"
        ];
        List<String> animate = ["☀️", "🌤", "🌙", "🌙"];
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text(""));
        } else {
          List<String> list = [
            snapshot.data!.sunrise,
            snapshot.data!.sunset,
            snapshot.data!.moonrise,
            snapshot.data!.moonset
          ];
          return Column(
            children: [
              Center(
                child: SizedBox(
                  height: 300,
                  width: 300, // Makes it responsive
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      Text(
                        snapshot.data!.cityname,
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (snapshot.data!.image.contains('https:'))
                            Image.network(
                              snapshot.data!.image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          else
                            Image.network(
                              'https:${snapshot.data!.image}',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          Text(
                            snapshot.data!.weathercondition,
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Max temp ${snapshot.data!.maxtemp}',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Min temp ${snapshot.data!.mintemp}',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'region is (${snapshot.data!.region})',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Last Update',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${snapshot.data!.lastupdate}',
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 127, 1, 149),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Container(
                  height: 300,
                  child: GridView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                stringlist[index],
                                style: TextStyle(
                                    color: Colors.purple, fontSize: 20),
                              ),
                              Text(
                                animate[index],
                                style: TextStyle(fontSize: 30),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(list[index],
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 22)),
                            ],
                          ));
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1 / 2,
                        crossAxisCount: 4,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2),
                  ),
                ),
              )

              
            ],
          );
        }
      },
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:flutter_application_47weather/assets/classapi.dart';
import 'package:flutter_application_47weather/assets/model.dart';

class ContainerWidged extends StatelessWidget {
  final String cityname;

  ContainerWidged.containrtwidged({required this.cityname});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<weatherapp>(
      future: Apimanager.getsource(cityname),
      builder: (context, snapshot) {
        List<String> stringlist = [
          "sun rise",
          "sun set",
          "moon rise",
          "moon set"
        ];
        List<String> animate = ["☀️", "🌤", "🌙", "🌙"];
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error loading data"));
        } else {
          List<String> list = [
            snapshot.data!.sunrise,
            snapshot.data!.sunset,
            snapshot.data!.moonrise,
            snapshot.data!.moonset
          ];
          return Column(
            children: [
              Center(
                child: SizedBox(
                  height: 300,
                  width: 300, // Makes it responsive
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      Text(
                        snapshot.data!.cityname,
                        style: TextStyle(
                          color:
                              Color.fromRGBO(109, 143, 181, 1), // Updated color
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (snapshot.data!.image.contains('https:'))
                            Image.network(
                              snapshot.data!.image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          else
                            Image.network(
                              'https:${snapshot.data!.image}',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          Text(
                            snapshot.data!.weathercondition,
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  109, 143, 181, 1), // Updated color
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Max temp ${snapshot.data!.maxtemp}',
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  109, 143, 181, 1), // Updated color
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Min temp ${snapshot.data!.mintemp}',
                            style: TextStyle(
                              color: Color.fromRGBO(
                                  109, 143, 181, 1), // Updated color
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Region is (${snapshot.data!.region})',
                        style: TextStyle(
                          color:
                              Color.fromRGBO(109, 143, 181, 1), // Updated color
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Last Update',
                        style: TextStyle(
                          color:
                              Color.fromRGBO(109, 143, 181, 1), // Updated color
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${snapshot.data!.lastupdate}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(
                              50, 139, 240, 1), // Can keep or change
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Container(
                  height: 300,
                  child: GridView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              stringlist[index],
                              style: TextStyle(
                                color: Color.fromRGBO(
                                    109, 143, 181, 1), // Updated color
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              animate[index],
                              style: TextStyle(fontSize: 30),
                            ),
                            SizedBox(height: 20),
                            Text(
                              list[index],
                              style: TextStyle(
                                color: Color.fromRGBO(
                                    109, 143, 181, 1), // Updated color
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 2,
                      crossAxisCount: 4,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
