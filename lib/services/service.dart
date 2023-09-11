import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enlight_q_app/models/question.dart';
import 'package:enlight_q_app/models/recent_event.dart';
import 'package:enlight_q_app/models/status.dart';

class BaseService {
  final _dbRef = FirebaseFirestore.instance;
  addData({
    required String collection,
    required Map<String, dynamic> data,
  }) async {
    await _dbRef.collection(collection).add(data);
  }

  Future<List<HomeLayout>> getHomeLayouts() async {
    var homeSnap = await _dbRef.collection("views").get();
    var views = homeSnap.docs.map((e) {
      var temp = HomeLayout.fromJson(e.data());
      temp.id = e.id;
      return temp;
    }).toList();
    return views;
  }

  Future<List<Status>> getStatus() async {
    var homeSnap = await _dbRef.collection("status").get();
  
    var views = homeSnap.docs.map((e) {
      var temp = Status.fromJson(e.data());
      temp.id = e.id;
      return temp;
    }).toList();
    return views;
  }

  Future<List<RecentEvent>> getRecentEvents() async {
    var homeSnap = await _dbRef.collection("events").get();
    var views = homeSnap.docs.map((e) {
      var temp = RecentEvent.fromJson(e.data());
      temp.id = e.id;
      return temp;
    }).toList();
    return views;
  }
}


/*
 BaseService().addData(
                      collection: "questionPapers",
                      data: QuestionPaper(
                        sections: [],
                        imgUrl: [],
                      ).toJson(),
                    );
                    BaseService().addData(
                      collection: "questions",
                      data: question2.toJson(),
                    );
                    BaseService().addData(
                      collection: "views",
                      data: HomeLayout(
                        title: 'INDIAN ARMY',
                        questionPapersIds: [],
                        // questionPapers: [
                        //   ...List.generate(
                        //     10,
                        //     (index) => QuestionPaper(
                        //       sections: [
                        //         // ...List.generate(
                        //         //   3,
                        //         //   (index) => Section(
                        //         //     questions: [
                        //         //       ...List.generate(
                        //         //         12,
                        //         //         (index) => Question(
                        //         //           id: "id",
                        //         //           text: "text",
                        //         //           options: [],
                        //         //           correctOptionIndex: 0,
                        //         //           explanation: "explanation",
                        //         //         ),
                        //         //       ),
                        //         //     ],
                        //         //   ),
                        //         // )
                        //       ],
                        //     ),
                        //   )
                        // ],
                        layoutType: LayoutType.home.name,
                      ).toJson(),
                    );


 */