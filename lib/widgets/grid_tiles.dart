import 'package:flutter/material.dart';
import 'package:home_cleaning/controller/services_controller.dart';

class GridTiles extends StatelessWidget {
  final services = ServicesController();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: services.serviceList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int i) {
        return InkWell(
          onTap: () {},
          child: Card(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  services.serviceList[i].imagePath,
                  height: 40.0,
                  width: 40.0,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    services.serviceList[i].title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
