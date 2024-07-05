import 'package:flutter/material.dart';
import 'package:splash_darktheme/models/customscreen_model.dart';

class Customscreen extends StatelessWidget {
  const Customscreen({this.pagecount, this.customScreenModel, super.key});
  final CustomScreenModel? customScreenModel;
  final int? pagecount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: customScreenModel!.colors,
                stops: const [
                  0.0,
                  0.7,
                  0.9,
                  1.2,
                ],
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200)),
            ),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: customScreenModel!.colors,
                  stops: const [
                    0.0,
                    0.7,
                    0.9,
                    1.2,
                  ],
                ),
                borderRadius: BorderRadius.circular(200),
              ),
              child: customScreenModel!.images,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(50, 100, 50, 10),
            child: Text(
              customScreenModel!.boldtext!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 36),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              customScreenModel!.regulartext!,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: (i == pagecount) ? Colors.white : Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                )
            ],
          )
        ],
      ),
    );
  }
}
