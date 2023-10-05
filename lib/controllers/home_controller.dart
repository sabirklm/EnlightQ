import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enlight_q_app/services/service.dart';
import 'package:enlightq_service_package/models/question.dart';
import 'package:enlightq_service_package/models/recent_event.dart';
import 'package:enlightq_service_package/models/status.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final isStatusLoading = false.obs;
  final homeViews = <HomeLayout>[].obs;
  final status = <Status>[].obs;
  final recents = <RecentEvent>[].obs;
  final questions = <Question>[].obs;
  @override
  void onInit() {
    _getHomeViews();
    _getStatus();
    _getRecentEvents();
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

  void _getRecentEvents() async {
    recents.clear();
    recents.addAll(await BaseService().getRecentEvents());
  }

  getQuestionByName(String? name) async {
    if (name == null) {
      return;
    }
    questions.clear();
    var snap = await FirebaseFirestore.instance
        .collection("questions")
        .where("tags", arrayContains: name)
        .get();
    questions
        .addAll(snap.docs.map((e) => Question.fromJson(e.data())).toList());
  }
}
