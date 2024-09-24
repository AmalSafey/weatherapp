import 'package:flutter/material.dart';
import 'package:flutter_application_47weather/home.dart';

class minhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("lib/assets/6012811703546397915.jpg"),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.transparent,
                  ),
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ],
      ),
    );
  }
}
