import 'package:dental_app/widgets/rounded_image.dart';
import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
import '../widgets/my_patient_horizontal_list_view.dart';
import '../widgets/text_title_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: const [
            BackgroundWidget(uHeight: 250, lHeight: 300,isDetails: false,),
            MyPatientAndDateWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(),
        ),
      ),
    );
  }
}

class MyPatientAndDateWidget extends StatefulWidget {
  const MyPatientAndDateWidget({Key? key}) : super(key: key);

  @override
  State<MyPatientAndDateWidget> createState() => _MyPatientAndDateWidgetState();
}

class _MyPatientAndDateWidgetState extends State<MyPatientAndDateWidget> {
  // Initial Selected Value
  String dropdownvalue = 'Today';

  // List of items in our dropdown menu
  List<String> items = [
    'Today',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50.0,left: 20,right: 20),
            child: SearchBoxAndProfilePictureWidget(),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0,left: 20,right: 20),
            child: Row(
              children: [
                TextTitleWidget(text1: "My Patients", text2: "12 total",),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                        value: dropdownvalue,
                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                              ));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        }),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          const MyPatientHorizontalListWidget(isDetails : false),
          // Container(
          //   child: CustomPaint(
          //     painter: TimelinePainter(),
          //     child: Container(
          //
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}



class SearchBoxAndProfilePictureWidget extends StatelessWidget {
  const SearchBoxAndProfilePictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromRGBO(40, 102, 193, 1.0),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0)),
                hintText: "Search",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0))),
          ),
        ),
        Spacer(),
        RoundedImage(image: "assets/images/user.png", width: 50.0, height: 50.0)
      ],
    );
  }
}


