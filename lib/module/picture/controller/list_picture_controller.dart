import 'package:get/get.dart';
import 'package:dio/dio.dart'; 
import '../../../core.dart';

class ListPictureController extends GetxController {
  late final Dio _dio;
  late final PictureService _pictureService;

  var pictures = <Map<String, dynamic>>[].obs; 
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    _dio = Dio();
    _pictureService = PictureService(_dio);
    fetchPictures();
  }

  void fetchPictures() async {
    try {
      isLoading.value = true;
      var result = await _pictureService.getPictures(); 
      pictures.value = List<Map<String, dynamic>>.from(result);
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch pictures: $e');
    } finally {
      isLoading.value = false;
    }
  }
}