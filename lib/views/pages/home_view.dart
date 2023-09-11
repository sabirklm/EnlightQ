import 'package:enlight_q_app/app.dart';
import 'package:enlight_q_app/controllers/home_controller.dart';
import 'package:enlight_q_app/views/pages/profile_view.dart';
import 'package:enlight_q_app/views/pages/question_paper_view.dart';
import 'package:enlight_q_app/views/pages/recent_view.dart';
import 'package:enlight_q_app/views/pages/status_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final screens = <Widget>[
    HomeScreen(),
    StatusView(),
    RecentView(),
    ProfileView()
  ];
  var _selectedScreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'Recents',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.important_devices),
            label: 'Important',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedScreenIndex,
        selectedItemColor: Colors.amber,
        onTap: (value) {
          setState(() {
            print('[M] $value');
            _selectedScreenIndex = value;
          });
        },
        selectedLabelStyle: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
      // appBar: AppBar(),
      body: screens[_selectedScreenIndex],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return ListView(
      children: [
        Obx(() {
          return Column(
            children: [
              ...List.generate(
                controller.homeViews.length,
                (index) => QuextionPapers(
                  title: controller.homeViews[index].title ?? "",
                  papers: controller.homeViews[index].questionPapersIds ?? [],
                  onTapPaper: (paperId) {
                    EnlightRoute.to(
                      context: context,
                      page: const QuestionPaperPage(),
                    );
                  },
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}

class QuextionPapers extends StatelessWidget {
  final List<String> papers;
  final String title;
  final void Function(String id) onTapPaper;
  const QuextionPapers({
    super.key,
    required this.papers,
    required this.onTapPaper,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 16,
              letterSpacing: 2.0,
            ),
          ),
        ),
        SizedBox(
          height: 160,
          width: width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(
                papers.length,
                (index) => GestureDetector(
                  onTap: () {
                    onTapPaper(papers[index]);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black38,
                    ),
                    width: 120,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://i.cdn.newsbytesapp.com/images/l158_11531537104319.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
