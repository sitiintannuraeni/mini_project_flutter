import 'package:get/get.dart';
import '../../../core.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListPictureController>(() => ListPictureController());
    Get.lazyPut<DetailPictureController>(() => DetailPictureController());
  }
}