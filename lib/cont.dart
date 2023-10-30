
import 'package:get/get.dart';

class AdsController extends GetxController {

  var index = 0.obs;
  updateIndex(page) {
    index.value = page;
    update();
  }



}
