import 'package:enlight_q_app/models/question.dart';
import 'package:enlight_q_app/models/status.dart';
import 'package:enlight_q_app/services/service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final isStatusLoading = false.obs;
  final homeViews = <HomeLayout>[].obs;
  final status = <Status>[].obs;

  @override
  void onInit() {
    _getHomeViews();
    _getStatus();
    super.onInit();
  }

  void _getHomeViews() async {
    homeViews.clear();
    homeViews.addAll(await BaseService().getHomeLayouts());
  }

  void _getStatus() async {
    isStatusLoading.value = true;
    status.clear();
    status.addAll(await BaseService().getStatus());
    isStatusLoading.value = false;
  }
}
