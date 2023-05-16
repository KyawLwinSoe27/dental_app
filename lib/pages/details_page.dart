import 'package:dental_app/widgets/circle_view.dart';
import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
import '../widgets/text_title_widget.dart';
import 'home_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const BackgroundWidget(uHeight: 317,lHeight: 350,isDetails: true,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,top: 40),
                  child:const NavbarWidget(),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: const TextTitleWidget(text1: "Office No.248", text2: "3 Patients",),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  height: 150,
                  child: Center(
                    child: CustomPaint(
                      size: Size(250,150),
                      painter: CircleView(),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(onTap: () => Navigator.pop(context), child: Icon(Icons.chevron_left,color: Colors.white,)),
        Spacer(),
        Text("Today",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),),
        Spacer(),
        Icon(Icons.search,color: Colors.white,),
        SizedBox(width: 20,),
        Icon(Icons.format_list_bulleted,color: Colors.white,)
      ],
    );
  }
}
