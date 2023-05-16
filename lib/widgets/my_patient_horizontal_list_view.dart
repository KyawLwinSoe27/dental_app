import 'package:dental_app/pages/details_page.dart';
import 'package:dental_app/widgets/rounded_image.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';

class MyPatientHorizontalListWidget extends StatelessWidget {
  final bool isDetails;
  const MyPatientHorizontalListWidget({Key? key, required this.isDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: isDetails ? 150 : 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailsPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      width: 220,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Office No.248",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("/3 patients",
                                  style: TextStyle(color: SECONDARY_COLOR))
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: SECONDARY_COLOR,
                              ),
                              Text(
                                "8:30 AM - 02:00 PM",
                                style: TextStyle(color: SECONDARY_COLOR),
                              ),
                              Spacer(),
                              Visibility(
                                visible: isDetails ? true : false,
                                child: Container(
                                  width: 20,
                                  height: 10,
                                  child: Text("Confirmed"),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              RoundedImage(
                                  image: "assets/images/people1.png",
                                  width: 20.0,
                                  height: 20.0),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedImage(
                                  image: "assets/images/people1.png",
                                  width: 20.0,
                                  height: 20.0),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedImage(
                                  image: "assets/images/people1.png",
                                  width: 20.0,
                                  height: 20.0),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          );
  }
}
