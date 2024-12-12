import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';

// ignore: use_key_in_widget_constructors
class DetailPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DetailPictureController controller = Get.put(DetailPictureController());

    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(title: Text("Detail Photo")),
      body: Obx(
        () {
          if (controller.pictureDetail.isEmpty) {
            // ignore: prefer_const_constructors
            return Center(child: CircularProgressIndicator());
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.network(controller.pictureDetail['download_url']),
                // ignore: prefer_const_constructors
                SizedBox(height: 20),
                Text('Taken By: ${controller.pictureDetail['author']}')
              ],
            ),
          );
        },
      ),
    );
  }
}
