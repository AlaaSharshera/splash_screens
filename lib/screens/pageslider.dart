import 'package:flutter/material.dart';

import 'package:splash_darktheme/components/customscreen.dart';
import 'package:splash_darktheme/models/customscreen_model.dart';

class PageSlider extends StatefulWidget {
  PageSlider({super.key});

  @override
  State<PageSlider> createState() => _PageSliderState();
}

class _PageSliderState extends State<PageSlider> {
  final List<CustomScreenModel> customScreenModels = [
    const CustomScreenModel(
      boldtext: "Trusted Friends",
      regulartext:
          "Trusted Friends is a a M-of-N social recovery \nmodule that allows users to access their\n accounts.",
      images: Column(
        children: [
          Image(
            height: 80,
            image: AssetImage('images/image0.png'),
          ),
          Image(
            image: AssetImage('images/image1.png'),
          ),
        ],
      ),
      colors: [
        Colors.black,
        Color(0xff021F3A),
        Color(0xff0269C8),
        Color(0xff07E9F8)
      ],
    ),
    const CustomScreenModel(
      boldtext: "Identity",
      regulartext:
          "Trusted Friends is a a M-of-N social recovery \nmodule that allows users to access their\n accounts.",
      images: Image(
        height: 80,
        image: AssetImage('images/image2.png'),
      ),
      colors: [
        Colors.black,
        Color(0xff7A176A),
        Color(0xffE41CC4),
        Color(0xffFF04D7)
      ],
    ),
    const CustomScreenModel(
      boldtext: "Backup of the capsule shard",
      regulartext:
          "Trusted Friends is a a M-of-N social recovery \nmodule that allows users to access their\n accounts.",
      images: Column(
        children: [
          Image(
            height: 80,
            image: AssetImage('images/image0.png'),
          ),
          Image(
            image: AssetImage('images/image1.png'),
          ),
        ],
      ),
      colors: [
        Colors.black,
        Color(0xff021F3A),
        Color(0xff0269C8),
        Color(0xff07E9F8)
      ],
    )
  ];

  PageController newpagecontroller = PageController();

  int pagenum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                pagenum = value;
              });
            },
            controller: newpagecontroller,
            itemCount: customScreenModels.length,
            itemBuilder: (BuildContext context, index) {
              return Customscreen(
                pagecount: pagenum,
                customScreenModel: customScreenModels[index],
              );
            }));
  }
}
