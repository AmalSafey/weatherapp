import 'package:flutter/material.dart';
import 'package:flutter_application_47weather/containerutur.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String citycountry = '';
  final List<String> cities = [
    'Cairo',
    'sohag',
    'Shebin El-Kom',
    'Shorouk City',
    'Copenhagen',
    'Casablanca',
    'Calgary',
    'Caracas',
    'Colombo',
    'Chennai',
    'Canberra',
    'Cincinnati',
    'Córdoba',
    'Cairo',
    'Heliopolis',
    'Nasr City',
    'Maadi',
    'Zamalek',
    'Alexandria',
    'Borg El Arab',
    'El Alamein',
    'Sidi Krir',
    'Giza',
    '6th of October',
    'El Hawamdiya',
    'Zaki',
    'London',
    'Paris',
    'Benha',
    'Shubra El Kheima',
    'Qalyub',
    'Zagazig',
    'El Husseiniya',
    'Belbes',
    'Minya',
    'Mallawi',
    'Abu Qurqas',
    'Aswan',
    'Nasser City',
    'Kom Ombo',
    'Luxor',
    'Esna',
    'Arment',
    'Suez',
    'Port Tawfiq',
    'Port Said',
    'El Borsa',
    'Ismailia',
    'El Qantara',
    'Mansoura',
    'El Mansoura',
    'Damietta',
    'Ras El Bar',
    'Matrouh',
    'Sidi Barrani',
    'Kafr El Sheikh',
    'Desouk',
    'Tanta',
    'El Mahalla El Kubra',
    'Beni Suef',
    'El Wasta',
    'Fayoum',
    'Ibshway',
    'Kharga',
    'Dakhla',
    'Hurghada',
    'El Gouna',
    'Sharm El Sheikh',
    'Dahab',
    'Arish',
    'Sheikh Zuweid',
  ];

  List<String> filteredCities = [];

  void _filterCities(String query) {
    if (query.isEmpty) {
      filteredCities = [];
    } else {
      filteredCities = cities
          .where((city) => city.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(109, 143, 181, 1), // Main background color
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/6012811703546398082.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.black
                  .withOpacity(0.5), // Overlay for better text visibility
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            height: 300,
            width: double.infinity, // Makes it responsive
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  TextField(
                    controller: TextEditingController(text: citycountry),
                    onChanged: (value) {
                      citycountry = value;
                      _filterCities(value);
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Colors.white),
                      hintText: 'Enter City Name..',
                      hintStyle: TextStyle(color: Colors.white70),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white, width: 3.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.white, width: 3.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  citycountry.isEmpty
                      ? Text(
                          'Please enter the name of your city🔎',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      : Column(
                          children: [
                            ...filteredCities.map((city) {
                              return ListTile(
                                title: Text(
                                  city,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onTap: () {
                                  setState(() {
                                    citycountry = city; // Set selected city
                                    filteredCities = []; // Clear filtered list
                                  });
                                },
                              );
                            }).toList(),
                            // Display weather information using MyWidget
                            if (citycountry.isNotEmpty)
                              ContainerWidged.containrtwidged(
                                  cityname: citycountry)
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*import 'package:flutter/material.dart';
import 'package:flutter_application_47weather/containerutur.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String citycountry = '';
  final List<String> cities = [
    // Cities in Egypt
    'Cairo',
    'sohag',
    'Shebin El-Kom',
    'Shorouk City',
    'Copenhagen', 'Casablanca', 'Calgary', 'Caracas',
    'Colombo', 'Chennai', 'Canberra', 'Cincinnati', 'Córdoba',
    'Cairo', 'Heliopolis', 'Nasr City', 'Maadi', 'Zamalek',
    'Alexandria', 'Borg El Arab', 'El Alamein', 'Sidi Krir',
    'Giza', '6th of October', 'El Hawamdiya', 'Zaki',
    'London',
    'Paris',
    'Benha',
    'Shubra El Kheima',
    'Qalyub',
    'Zagazig', 'El Husseiniya', 'Belbes',
    'Minya', 'Mallawi', 'Abu Qurqas',
    'Aswan', 'Nasser City', 'Kom Ombo',
    'Luxor', 'Esna', 'Arment',
    'Suez', 'Port Tawfiq',
    'Port Said', 'El Borsa',
    'Ismailia', 'El Qantara',
    'Mansoura', 'El Mansoura',
    'Damietta', 'Ras El Bar',
    'Matrouh', 'Sidi Barrani',
    'Kafr El Sheikh', 'Desouk',
    'Tanta', 'El Mahalla El Kubra',
    'Beni Suef', 'El Wasta',
    'Fayoum', 'Ibshway',
    'Kharga', 'Dakhla',
    'Hurghada', 'El Gouna',
    'Sharm El Sheikh', 'Dahab',
    'Arish', 'Sheikh Zuweid',
  ];

  List<String> filteredCities = [];

  void _filterCities(String query) {
    if (query.isEmpty) {
      filteredCities = [];
    } else {
      filteredCities = cities
          .where((city) => city.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/6012811703546398082.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            height: 300,
            width: double.infinity, // Makes it responsive
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  TextField(
                    controller: TextEditingController(
                        text: citycountry), // Set the controller
                    onChanged: (value) {
                      citycountry = value;
                      _filterCities(value);
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search, color: Colors.purple),
                      hintText: 'Enter City Name..',
                      hintStyle: TextStyle(color: Colors.purple),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            BorderSide(color: Colors.purple, width: 3.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            BorderSide(color: Colors.purple, width: 3.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide:
                            BorderSide(color: Colors.purple, width: 3.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  citycountry.isEmpty
                      ? Text(
                          'Please enter the name of your city🔎',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      : Column(
                          children: [
                            ...filteredCities.map((city) {
                              return ListTile(
                                title: Text(
                                  city,
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 20),
                                ),
                                onTap: () {
                                  setState(() {
                                    citycountry = city; // Set selected city
                                    filteredCities = []; // Clear filtered list
                                  });
                                },
                              );
                            }).toList(),
                            // Display weather information using MyWidget
                            if (citycountry.isNotEmpty)
                              containerwidged.containrtwidged(
                                  cityname: citycountry)
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Dummy MyWidget class to display weather information*/
